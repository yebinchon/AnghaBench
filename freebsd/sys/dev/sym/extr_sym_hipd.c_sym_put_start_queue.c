
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_short ;
typedef TYPE_1__* hcb_p ;
typedef TYPE_2__* ccb_p ;
struct TYPE_7__ {int ccb_ba; int host_flags; } ;
struct TYPE_6__ {scalar_t__ iarb_count; scalar_t__ iarb_max; int squeueput; int istat_sem; void** squeue; int idletask_ba; TYPE_2__* last_cp; } ;


 int DEBUG_FLAGS ;
 int DEBUG_QUEUE ;
 int HF_HINT_IARB ;
 int MAX_QUEUE ;
 int MEMORY_BARRIER () ;
 int OUTB (int ,int) ;
 int SIGP ;
 void* cpu_to_scr (int ) ;
 int nc_istat ;
 int printf (char*,char*,int) ;
 char* sym_name (TYPE_1__*) ;

__attribute__((used)) static void sym_put_start_queue(hcb_p np, ccb_p cp)
{
 u_short qidx;
 qidx = np->squeueput + 2;
 if (qidx >= MAX_QUEUE*2) qidx = 0;

 np->squeue [qidx] = cpu_to_scr(np->idletask_ba);
 MEMORY_BARRIER();
 np->squeue [np->squeueput] = cpu_to_scr(cp->ccb_ba);

 np->squeueput = qidx;

 if (DEBUG_FLAGS & DEBUG_QUEUE)
  printf ("%s: queuepos=%d.\n", sym_name (np), np->squeueput);





 MEMORY_BARRIER();
 OUTB (nc_istat, SIGP|np->istat_sem);
}
