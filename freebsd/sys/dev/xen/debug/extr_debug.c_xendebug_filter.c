
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;
struct stack {int dummy; } ;


 int FILTER_HANDLED ;
 int PCPU_GET (int ) ;
 int buf ;
 int lock ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int sbuf_clear (int ) ;
 int sbuf_finish (int ) ;
 int stack_save (struct stack*) ;
 int stack_sbuf_print_ddb (int ,struct stack*) ;
 int stack_zero (struct stack*) ;
 int vcpu_id ;
 int xc_printf (char*,int ) ;

__attribute__((used)) static int
xendebug_filter(void *arg)
{
 return (FILTER_HANDLED);
}
