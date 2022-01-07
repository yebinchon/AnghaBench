
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stack {int dummy; } ;
struct TYPE_2__ {int (* dbbe_trace ) () ;} ;


 TYPE_1__* kdb_dbbe ;
 int printf (char*) ;
 int stack_print_ddb (struct stack*) ;
 int stack_save (struct stack*) ;
 int stack_zero (struct stack*) ;
 int stub1 () ;

void
kdb_backtrace(void)
{

 if (kdb_dbbe != ((void*)0) && kdb_dbbe->dbbe_trace != ((void*)0)) {
  printf("KDB: stack backtrace:\n");
  kdb_dbbe->dbbe_trace();
 }
}
