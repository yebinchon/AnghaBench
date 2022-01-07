
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * string; int num; } ;
struct value {int type; int * array; TYPE_1__ u; } ;





 int * array_dup (int *) ;
 int dup_number (int ) ;
 int err (int,int *) ;
 int * strdup (int *) ;

struct value *
stack_dup_value(const struct value *a, struct value *copy)
{

 copy->type = a->type;

 switch (a->type) {
 case 130:
  break;
 case 129:
  copy->u.num = dup_number(a->u.num);
  break;
 case 128:
  copy->u.string = strdup(a->u.string);
  if (copy->u.string == ((void*)0))
   err(1, ((void*)0));
  break;
 }

 copy->array = a->array == ((void*)0) ? ((void*)0) : array_dup(a->array);

 return (copy);
}
