
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {int dummy; } ;


 int BER_CLASS_CONTEXT ;
 unsigned long LDAP_FILT_AND ;
 unsigned long LDAP_FILT_APPR ;
 unsigned long LDAP_FILT_EQ ;
 unsigned long LDAP_FILT_GE ;
 unsigned long LDAP_FILT_LE ;
 unsigned long LDAP_FILT_NOT ;
 unsigned long LDAP_FILT_OR ;
 unsigned long LDAP_FILT_PRES ;
 unsigned long LDAP_FILT_SUBS ;
 unsigned long LDAP_FILT_SUBS_ANY ;
 unsigned long LDAP_FILT_SUBS_FIN ;
 unsigned long LDAP_FILT_SUBS_INIT ;
 struct ber_element* ber_add_nstring (struct ber_element*,char*,size_t) ;
 struct ber_element* ber_add_sequence (struct ber_element*) ;
 struct ber_element* ber_add_set (struct ber_element*) ;
 int ber_free_elements (struct ber_element*) ;
 int ber_link_elements (struct ber_element*,int *) ;
 int ber_set_header (struct ber_element*,int ,unsigned long) ;
 int free (char*) ;
 char* parseval (char*,size_t) ;
 size_t strcspn (char*,char*) ;
 size_t strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static struct ber_element *
ldap_do_parse_search_filter(struct ber_element *prev, char **cpp)
{
 struct ber_element *elm, *root = ((void*)0);
 char *attr_desc, *attr_val, *parsed_val, *cp;
 size_t len;
 unsigned long type;

 root = ((void*)0);


 cp = *cpp;
 if (*cp != '(')
  goto syntaxfail;

 switch (*++cp) {
 case '&':
 case '|':
  if (*cp == '&')
   type = LDAP_FILT_AND;
  else
   type = LDAP_FILT_OR;

  if ((elm = ber_add_set(prev)) == ((void*)0))
   goto callfail;
  root = elm;
  ber_set_header(elm, BER_CLASS_CONTEXT, type);

  if (*++cp != '(')
   goto syntaxfail;

  while (*cp == '(') {
   if ((elm =
       ldap_do_parse_search_filter(elm, &cp)) == ((void*)0))
    goto bad;
  }

  if (*cp != ')')
   goto syntaxfail;
  break;

 case '!':
  if ((root = ber_add_sequence(prev)) == ((void*)0))
   goto callfail;
  ber_set_header(root, BER_CLASS_CONTEXT, LDAP_FILT_NOT);

  cp++;
  if ((elm = ldap_do_parse_search_filter(root, &cp)) == ((void*)0))
   goto bad;

  if (*cp != ')')
   goto syntaxfail;
  break;

 default:
  attr_desc = cp;

  len = strcspn(cp, "()<>~=");
  cp += len;
  switch (*cp) {
  case '~':
   type = LDAP_FILT_APPR;
   cp++;
   break;
  case '<':
   type = LDAP_FILT_LE;
   cp++;
   break;
  case '>':
   type = LDAP_FILT_GE;
   cp++;
   break;
  case '=':
   type = LDAP_FILT_EQ;
   break;
  case '(':
  case ')':
  default:
   goto syntaxfail;
  }
  attr_val = ++cp;


  if (strncmp(attr_val, "*)", 2) == 0) {
   cp++;
   if ((root =
       ber_add_nstring(prev, attr_desc, len)) == ((void*)0))
    goto bad;

   ber_set_header(root, BER_CLASS_CONTEXT, LDAP_FILT_PRES);
   break;
  }

  if ((root = ber_add_sequence(prev)) == ((void*)0))
   goto callfail;
  ber_set_header(root, BER_CLASS_CONTEXT, type);

  if ((elm = ber_add_nstring(root, attr_desc, len)) == ((void*)0))
   goto callfail;

  len = strcspn(attr_val, "*)");
  if (len == 0 && *cp != '*')
   goto syntaxfail;
  cp += len;
  if (*cp == '\0')
   goto syntaxfail;

  if (*cp == '*') {
   int initial;

   cp = attr_val;

   ber_set_header(root, BER_CLASS_CONTEXT, LDAP_FILT_SUBS);

   if ((elm = ber_add_sequence(elm)) == ((void*)0))
    goto callfail;

   for (initial = 1;; cp++, initial = 0) {
    attr_val = cp;

    len = strcspn(attr_val, "*)");
    if (len == 0) {
     if (*cp == ')')
      break;
     else
      continue;
    }
    cp += len;
    if (*cp == '\0')
     goto syntaxfail;

    if (initial)
     type = LDAP_FILT_SUBS_INIT;
    else if (*cp == ')')
     type = LDAP_FILT_SUBS_FIN;
    else
     type = LDAP_FILT_SUBS_ANY;

    if ((parsed_val = parseval(attr_val, len)) ==
        ((void*)0))
     goto callfail;
    elm = ber_add_nstring(elm, parsed_val,
        strlen(parsed_val));
    free(parsed_val);
    if (elm == ((void*)0))
     goto callfail;
    ber_set_header(elm, BER_CLASS_CONTEXT, type);
    if (type == LDAP_FILT_SUBS_FIN)
     break;
   }
   break;
  }

  if ((parsed_val = parseval(attr_val, len)) == ((void*)0))
   goto callfail;
  elm = ber_add_nstring(elm, parsed_val, strlen(parsed_val));
  free(parsed_val);
  if (elm == ((void*)0))
   goto callfail;
  break;
 }

 cp++;

 *cpp = cp;
 return (root);

syntaxfail:
callfail:
bad:
 if (root != ((void*)0))
  ber_free_elements(root);
 ber_link_elements(prev, ((void*)0));
 return (((void*)0));
}
