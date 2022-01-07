
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct unwind_state {int fp; int sp; int pc; } ;
typedef scalar_t__ db_expr_t ;
typedef scalar_t__ c_db_sym_t ;


 scalar_t__ C_DB_SYM_NULL ;
 int DB_STGY_ANY ;
 int DB_STGY_PROC ;
 int db_printf (char*,...) ;
 int db_printsym (int ,int ) ;
 scalar_t__ db_search_symbol (int ,int ,scalar_t__*) ;
 int db_symbol_values (scalar_t__,char const**,scalar_t__*) ;
 scalar_t__ unwind_frame (struct unwind_state*) ;

__attribute__((used)) static void
db_stack_trace_cmd(struct unwind_state *frame)
{
 const char *name;
 db_expr_t offset;
 db_expr_t value;
 c_db_sym_t sym;
 uint64_t pc;

 while (1) {
  pc = frame->pc;

  if (unwind_frame(frame) < 0)
   break;

  sym = db_search_symbol(pc, DB_STGY_ANY, &offset);
  if (sym == C_DB_SYM_NULL) {
   value = 0;
   name = "(null)";
  } else
   db_symbol_values(sym, &name, &value);

  db_printf("%s() at ", name);
  db_printsym(frame->pc, DB_STGY_PROC);
  db_printf("\n");

  db_printf("\t pc = 0x%016lx ra = 0x%016lx\n",
      pc, frame->pc);
  db_printf("\t sp = 0x%016lx fp = 0x%016lx\n",
      frame->sp, frame->fp);
  db_printf("\n");
 }
}
