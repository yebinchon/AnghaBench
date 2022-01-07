
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


 scalar_t__ ber_get_eoc (struct ber_element*) ;

int
aldap_count_attrs(struct aldap_message *msg)
{
 int i;
 struct ber_element *a;

 if (msg->body.search.attrs == ((void*)0))
  return (-1);

 for (i = 0, a = msg->body.search.attrs;
     a != ((void*)0) && ber_get_eoc(a) != 0;
     i++, a = a->be_next)
  ;

 return i;
}
