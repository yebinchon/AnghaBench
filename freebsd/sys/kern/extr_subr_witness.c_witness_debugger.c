
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int dummy; } ;
struct sbuf {int dummy; } ;
typedef int buf ;


 int KDB_WHY_WITNESS ;
 int SBUF_FIXEDLEN ;
 int kdb_enter (int ,char const*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int,int ) ;
 int sbuf_set_drain (struct sbuf*,int ,int *) ;
 int stack_save (struct stack*) ;
 int stack_sbuf_print_ddb (struct sbuf*,struct stack*) ;
 int stack_zero (struct stack*) ;
 scalar_t__ witness_kdb ;
 int witness_output (char*) ;
 int witness_output_drain ;
 scalar_t__ witness_trace ;

__attribute__((used)) static void
witness_debugger(int cond, const char *msg)
{
 char buf[32];
 struct sbuf sb;
 struct stack st;

 if (!cond)
  return;

 if (witness_trace) {
  sbuf_new(&sb, buf, sizeof(buf), SBUF_FIXEDLEN);
  sbuf_set_drain(&sb, witness_output_drain, ((void*)0));

  stack_zero(&st);
  stack_save(&st);
  witness_output("stack backtrace:\n");
  stack_sbuf_print_ddb(&sb, &st);

  sbuf_finish(&sb);
 }





}
