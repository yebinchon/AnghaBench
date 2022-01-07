
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int string; } ;
struct value {int type; TYPE_1__ u; } ;
struct number {int dummy; } ;
typedef enum bcode_compare { ____Placeholder_bcode_compare } bcode_compare ;
struct TYPE_4__ {int * reg; } ;





 int NO_ELSE ;
 TYPE_2__ bmachine ;
 int bstrdup (int ) ;
 int compare_numbers (int,struct number*,struct number*) ;
 int eval_string (int ) ;
 struct number* pop_number () ;
 int push_number (struct number*) ;
 char readch () ;
 int readreg () ;
 struct value* stack_tos (int *) ;
 int unreadch () ;
 int warn (char*) ;
 int warnx (char*,int,int) ;

__attribute__((used)) static void
compare(enum bcode_compare type)
{
 struct number *a, *b;
 struct value *v;
 int idx, elseidx;
 bool ok;

 elseidx = NO_ELSE;
 idx = readreg();
 if (readch() == 'e')
  elseidx = readreg();
 else
  unreadch();

 a = pop_number();
 if (a == ((void*)0))
  return;
 b = pop_number();
 if (b == ((void*)0)) {
  push_number(a);
  return;
 }

 ok = compare_numbers(type, a, b);

 if (!ok && elseidx != NO_ELSE)
  idx = elseidx;

 if (idx >= 0 && (ok || (!ok && elseidx != NO_ELSE))) {
  v = stack_tos(&bmachine.reg[idx]);
  if (v == ((void*)0))
   warnx("register '%c' (0%o) is empty", idx, idx);
  else {
   switch(v->type) {
   case 130:
    warnx("register '%c' (0%o) is empty", idx, idx);
    break;
   case 129:
    warn("eval called with non-string argument");
    break;
   case 128:
    eval_string(bstrdup(v->u.string));
    break;
   }
  }
 }
}
