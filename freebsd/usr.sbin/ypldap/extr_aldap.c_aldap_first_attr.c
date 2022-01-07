
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ber_element {int dummy; } ;
struct TYPE_4__ {TYPE_3__* attrs; int iter; } ;
struct TYPE_5__ {TYPE_1__ search; } ;
struct aldap_message {TYPE_2__ body; } ;
struct TYPE_6__ {int be_next; } ;


 char** aldap_get_stringset (struct ber_element*) ;
 scalar_t__ ber_scanf_elements (TYPE_3__*,char*,char**,struct ber_element**,struct ber_element**) ;
 char* utoa (char*) ;

int
aldap_first_attr(struct aldap_message *msg, char **outkey, char ***outvalues)
{
 struct ber_element *b, *c;
 char *key;
 char **ret;

 if (msg->body.search.attrs == ((void*)0))
  goto fail;

 if (ber_scanf_elements(msg->body.search.attrs, "{s(e)}e",
     &key, &b, &c) != 0)
  goto fail;

 msg->body.search.iter = msg->body.search.attrs->be_next;

 if ((ret = aldap_get_stringset(b)) == ((void*)0))
  goto fail;

 (*outvalues) = ret;
 (*outkey) = utoa(key);

 return (1);
fail:
 (*outkey) = ((void*)0);
 (*outvalues) = ((void*)0);
 return (-1);
}
