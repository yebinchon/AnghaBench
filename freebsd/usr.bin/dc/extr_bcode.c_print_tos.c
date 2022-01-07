
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct TYPE_2__ {int obase; } ;


 TYPE_1__ bmachine ;
 int print_value (int ,struct value*,char*,int ) ;
 int putchar (char) ;
 int stdout ;
 struct value* tos () ;
 int warnx (char*) ;

__attribute__((used)) static __inline void
print_tos(void)
{
 struct value *value = tos();

 if (value != ((void*)0)) {
  print_value(stdout, value, "", bmachine.obase);
  putchar('\n');
 }
 else
  warnx("stack empty");
}
