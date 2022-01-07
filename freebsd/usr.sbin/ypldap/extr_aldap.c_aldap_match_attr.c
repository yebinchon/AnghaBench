
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ber_element {struct ber_element* be_next; } ;
struct TYPE_3__ {struct ber_element* attrs; } ;
struct TYPE_4__ {TYPE_1__ search; } ;
struct aldap_message {TYPE_2__ body; } ;


 int LDAP_DEBUG (char*,struct ber_element*) ;
 char** aldap_get_stringset (struct ber_element*) ;
 scalar_t__ ber_get_eoc (struct ber_element*) ;
 scalar_t__ ber_scanf_elements (struct ber_element*,char*,char**,struct ber_element**) ;
 scalar_t__ strcasecmp (char*,char*) ;

int
aldap_match_attr(struct aldap_message *msg, char *inkey, char ***outvalues)
{
 struct ber_element *a, *b;
 char *descr = ((void*)0);
 char **ret;

 if (msg->body.search.attrs == ((void*)0))
  goto fail;

 LDAP_DEBUG("attr", msg->body.search.attrs);

 for (a = msg->body.search.attrs;;) {
  if (a == ((void*)0))
   goto notfound;
  if (ber_get_eoc(a) == 0)
   goto notfound;
  if (ber_scanf_elements(a, "{s(e", &descr, &b) != 0)
   goto fail;
  if (strcasecmp(descr, inkey) == 0)
   goto attrfound;
  a = a->be_next;
 }

attrfound:
 if ((ret = aldap_get_stringset(b)) == ((void*)0))
  goto fail;

 (*outvalues) = ret;

 return (1);
fail:
notfound:
 (*outvalues) = ((void*)0);
 return (-1);
}
