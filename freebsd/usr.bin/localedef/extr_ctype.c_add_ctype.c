
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wc; } ;
typedef TYPE_1__ ctype_node_t ;


 int INTERR ;
 int add_ctype_impl (TYPE_1__*) ;
 TYPE_1__* get_ctype (int) ;
 int last_ctype ;

void
add_ctype(int val)
{
 ctype_node_t *ctn;

 if ((ctn = get_ctype(val)) == ((void*)0)) {
  INTERR;
  return;
 }
 add_ctype_impl(ctn);
 last_ctype = ctn->wc;
}
