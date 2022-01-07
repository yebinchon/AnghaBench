
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct TYPE_2__ {int obase; } ;


 TYPE_1__ bmachine ;
 int print_value (int ,struct value*,char*,int ) ;
 int putc (char,int ) ;
 int stderr ;
 struct value* tos () ;
 int warnx (char*) ;

__attribute__((used)) static void
print_err(void)
{
 struct value *value = tos();
 if (value != ((void*)0)) {
  print_value(stderr, value, "", bmachine.obase);
  (void)putc('\n', stderr);
 }
 else
  warnx("stack empty");
}
