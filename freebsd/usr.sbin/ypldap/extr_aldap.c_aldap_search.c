
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {int dummy; } ;
struct aldap_page_control {int dummy; } ;
struct aldap {int msgid; void* err; int ber; } ;
typedef enum scope { ____Placeholder_scope } scope ;


 void* ALDAP_ERR_OPERATION_FAILED ;
 void* ALDAP_ERR_PARSER_ERROR ;
 int BER_CLASS_APP ;
 int LDAP_DEBUG (char*,struct ber_element*) ;
 scalar_t__ LDAP_DEREF_NEVER ;
 scalar_t__ LDAP_REQ_SEARCH ;
 int aldap_create_page_control (struct ber_element*,int,struct aldap_page_control*) ;
 struct ber_element* ber_add_sequence (struct ber_element*) ;
 struct ber_element* ber_add_string (struct ber_element*,char*) ;
 int ber_free_elements (struct ber_element*) ;
 struct ber_element* ber_printf_elements (struct ber_element*,char*,...) ;
 int ber_write_elements (int *,struct ber_element*) ;
 struct ber_element* ldap_parse_search_filter (struct ber_element*,char*) ;

int
aldap_search(struct aldap *ldap, char *basedn, enum scope scope, char *filter,
    char **attrs, int typesonly, int sizelimit, int timelimit,
    struct aldap_page_control *page)
{
 struct ber_element *root = ((void*)0), *ber, *c;
 int i, error;

 if ((root = ber_add_sequence(((void*)0))) == ((void*)0))
  goto fail;

 ber = ber_printf_elements(root, "d{t", ++ldap->msgid, BER_CLASS_APP,
     (unsigned long) LDAP_REQ_SEARCH);
 if (ber == ((void*)0)) {
  ldap->err = ALDAP_ERR_OPERATION_FAILED;
  goto fail;
 }

 c = ber;
 ber = ber_printf_elements(ber, "sEEddb", basedn, (long long)scope,
                          (long long)LDAP_DEREF_NEVER, sizelimit,
     timelimit, typesonly);
 if (ber == ((void*)0)) {
  ldap->err = ALDAP_ERR_OPERATION_FAILED;
  goto fail;
 }

 if ((ber = ldap_parse_search_filter(ber, filter)) == ((void*)0)) {
  ldap->err = ALDAP_ERR_PARSER_ERROR;
  goto fail;
 }

 if ((ber = ber_add_sequence(ber)) == ((void*)0))
  goto fail;
 if (attrs != ((void*)0))
  for (i = 0; attrs[i] != ((void*)0); i++) {
   if ((ber = ber_add_string(ber, attrs[i])) == ((void*)0))
    goto fail;
  }

 aldap_create_page_control(c, 100, page);

 LDAP_DEBUG("aldap_search", root);

 error = ber_write_elements(&ldap->ber, root);
 ber_free_elements(root);
 root = ((void*)0);
 if (error == -1) {
  ldap->err = ALDAP_ERR_OPERATION_FAILED;
  goto fail;
 }

 return (ldap->msgid);

fail:
 if (root != ((void*)0))
  ber_free_elements(root);

 return (-1);
}
