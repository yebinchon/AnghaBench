
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {char* string; int num; } ;
struct value {int type; TYPE_1__ u; int * array; } ;
typedef int FILE ;





 int fputs (char const*,int *) ;
 int printnumber (int *,int ,int ) ;

void
print_value(FILE *f, const struct value *value, const char *prefix, u_int base)
{

 fputs(prefix, f);
 switch (value->type) {
 case 130:
  if (value->array != ((void*)0))
   fputs("<array>", f);
  break;
 case 129:
  printnumber(f, value->u.num, base);
  break;
 case 128:
  fputs(value->u.string, f);
  break;
 }
}
