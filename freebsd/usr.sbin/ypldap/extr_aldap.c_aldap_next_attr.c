
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ber_element {int dummy; } ;
struct TYPE_6__ {TYPE_3__* iter; } ;
struct TYPE_7__ {TYPE_1__ search; } ;
struct aldap_message {TYPE_2__ body; } ;
struct TYPE_8__ {struct TYPE_8__* be_next; } ;


 int LDAP_DEBUG (char*,TYPE_3__*) ;
 char** aldap_get_stringset (struct ber_element*) ;
 scalar_t__ ber_get_eoc (TYPE_3__*) ;
 scalar_t__ ber_scanf_elements (TYPE_3__*,char*,char**,struct ber_element**,struct ber_element**) ;
 char* utoa (char*) ;

int
aldap_next_attr(struct aldap_message *msg, char **outkey, char ***outvalues)
{
 struct ber_element *a, *b;
 char *key;
 char **ret;

 if (msg->body.search.iter == ((void*)0))
  goto notfound;

 LDAP_DEBUG("attr", msg->body.search.iter);

 if (ber_get_eoc(msg->body.search.iter) == 0)
  goto notfound;

 if (ber_scanf_elements(msg->body.search.iter, "{s(e)}e", &key, &a, &b)
     != 0)
  goto fail;

 msg->body.search.iter = msg->body.search.iter->be_next;

 if ((ret = aldap_get_stringset(a)) == ((void*)0))
  goto fail;

 (*outvalues) = ret;
 (*outkey) = utoa(key);

 return (1);
fail:
notfound:
 (*outkey) = ((void*)0);
 (*outvalues) = ((void*)0);
 return (-1);
}
