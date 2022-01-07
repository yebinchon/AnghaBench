
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int string; int num; } ;
struct value {int type; int * array; TYPE_1__ u; } ;





 int array_free (int *) ;
 int free (int ) ;
 int free_number (int ) ;

void
stack_free_value(struct value *v)
{

 switch (v->type) {
 case 130:
  break;
 case 129:
  free_number(v->u.num);
  break;
 case 128:
  free(v->u.string);
  break;
 }
 array_free(v->array);
 v->array = ((void*)0);
}
