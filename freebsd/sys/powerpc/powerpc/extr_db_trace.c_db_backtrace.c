
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int dsisr; } ;
struct TYPE_4__ {int esr; } ;
struct TYPE_6__ {TYPE_2__ aim; TYPE_1__ booke; } ;
struct trapframe {int srr1; int exc; scalar_t__* fixreg; TYPE_3__ cpu; int ctr; scalar_t__ xer; scalar_t__ cr; scalar_t__ srr0; int dar; } ;
struct thread {int dummy; } ;
typedef int db_addr_t ;
typedef void* boolean_t ;


 int CALLOFFSET ;
 int DB_STGY_ANY ;
 int DB_STGY_PROC ;
 int DSISR_STORE ;
 int ESR_ST ;
 void* FALSE ;
 int PAGE_SIZE ;
 int PSL_PR ;
 void* TRUE ;
 int asttrapexit ;
 int db_pager_quit ;
 int db_printf (char*,...) ;
 int db_printsym (int,int ) ;
 char* modif ;
 void* trace_thread ;
 int trapexit ;

__attribute__((used)) static int
db_backtrace(struct thread *td, db_addr_t fp, int count)
{
 db_addr_t stackframe, lr, *args;
 boolean_t kernel_only = TRUE;
 boolean_t full = FALSE;
 stackframe = fp;

 while (!db_pager_quit) {
  if (stackframe < PAGE_SIZE)
   break;





  stackframe = *(db_addr_t *)stackframe;

 next_frame:





  args = (db_addr_t *)(stackframe + 8);


  if (stackframe < PAGE_SIZE)
   break;

         if (count-- == 0)
   break;
  lr = *(db_addr_t *)(stackframe + 4) - 4;

  if ((lr & 3) || (lr < 0x100)) {
   db_printf("saved LR(0x%zx) is invalid.", lr);
   break;
  }




  db_printf("0x%08x: ", stackframe);
  if ((lr + CALLOFFSET == (db_addr_t) &trapexit) ||
      (lr + CALLOFFSET == (db_addr_t) &asttrapexit)) {
   const char *trapstr;
   struct trapframe *tf = (struct trapframe *)(args);
   db_printf("%s ", tf->srr1 & PSL_PR ? "user" : "kernel");
   switch (tf->exc) {
   case 144:






    db_printf("DSI %s trap @ %#zx by ",
        (tf->cpu.aim.dsisr & DSISR_STORE) ? "write"
        : "read", tf->dar);

    goto print_trap;
   case 148:
    db_printf("ALI trap @ %#zx (xSR %#x) ",
        tf->dar, (uint32_t)tf->cpu.aim.dsisr);
    goto print_trap;
   case 139: trapstr = "ISI"; break;
   case 136: trapstr = "PGM"; break;
   case 133: trapstr = "SC"; break;
   case 143: trapstr = "EXI"; break;
   case 138: trapstr = "MCHK"; break;
   case 129: trapstr = "VEC"; break;

   case 142: trapstr = "FPA"; break;
   case 147: trapstr = "BPT"; break;
   case 130: trapstr = "TRC"; break;
   case 134: trapstr = "RUNMODETRC"; break;
   case 132: trapstr = "SMI"; break;
   case 135: trapstr = "RST"; break;

   case 141: trapstr = "FPU"; break;
   case 146: trapstr = "DECR"; break;
   case 137: trapstr = "PERF"; break;
   case 128: trapstr = "VSX"; break;
   case 131: trapstr = "SOFT_PATCH"; break;
   default: trapstr = ((void*)0); break;
   }
   if (trapstr != ((void*)0)) {
    db_printf("%s trap by ", trapstr);
   } else {
    db_printf("trap %#zx by ", tf->exc);
   }

     print_trap:
   lr = (db_addr_t) tf->srr0;
   db_printsym(lr, DB_STGY_ANY);
   db_printf(": srr1=%#zx\n", tf->srr1);
   db_printf("%-10s  r1=%#zx cr=%#x xer=%#x ctr=%#zx",
       "", tf->fixreg[1], (uint32_t)tf->cr,
       (uint32_t)tf->xer, tf->ctr);



   if (tf->exc == 144)
    db_printf(" sr=%#x",
        (uint32_t)tf->cpu.aim.dsisr);
   db_printf(" frame=%p\n", tf);
   stackframe = (db_addr_t) tf->fixreg[1];
   if (kernel_only && (tf->srr1 & PSL_PR))
    break;
   goto next_frame;
  }

  db_printf("at ");
  db_printsym(lr, DB_STGY_PROC);
  if (full)

   db_printf("(%zx, %zx, %zx, %zx, %zx, %zx, %zx, %zx)",
    args[0], args[1], args[2], args[3],
    args[4], args[5], args[6], args[7]);
  db_printf("\n");
 }

 return (0);
}
