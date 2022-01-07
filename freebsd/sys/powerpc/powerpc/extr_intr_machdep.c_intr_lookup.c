
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct powerpc_intr {scalar_t__ irq; int vector; size_t cntindex; int * cntp; int pi_cpuset; scalar_t__ ipi; scalar_t__ fwcode; int * pic; int pol; int trig; int * priv; int * event; } ;


 int CPU_SETOF (int ,int *) ;
 int INTR_POLARITY_CONFORM ;
 int INTR_TRIGGER_CONFORM ;
 int M_INTR ;
 int M_NOWAIT ;
 int all_cpus ;
 size_t atomic_fetchadd_int (int *,int) ;
 int free (struct powerpc_intr*,int ) ;
 int intr_table_lock ;
 int * intrcnt ;
 int intrcnt_index ;
 int intrcnt_setname (char*,size_t) ;
 struct powerpc_intr* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int num_io_irqs ;
 int nvectors ;
 struct powerpc_intr** powerpc_intrs ;
 int sprintf (char*,char*,scalar_t__) ;

__attribute__((used)) static struct powerpc_intr *
intr_lookup(u_int irq)
{
 char intrname[16];
 struct powerpc_intr *i, *iscan;
 int vector;

 mtx_lock(&intr_table_lock);
 for (vector = 0; vector < nvectors; vector++) {
  i = powerpc_intrs[vector];
  if (i != ((void*)0) && i->irq == irq) {
   mtx_unlock(&intr_table_lock);
   return (i);
  }
 }

 i = malloc(sizeof(*i), M_INTR, M_NOWAIT);
 if (i == ((void*)0)) {
  mtx_unlock(&intr_table_lock);
  return (((void*)0));
 }

 i->event = ((void*)0);
 i->cntp = ((void*)0);
 i->priv = ((void*)0);
 i->trig = INTR_TRIGGER_CONFORM;
 i->pol = INTR_POLARITY_CONFORM;
 i->irq = irq;
 i->pic = ((void*)0);
 i->vector = -1;
 i->fwcode = 0;
 i->ipi = 0;




 CPU_SETOF(0, &i->pi_cpuset);


 for (vector = 0; vector < num_io_irqs && vector <= nvectors;
     vector++) {
  iscan = powerpc_intrs[vector];
  if (iscan != ((void*)0) && iscan->irq == irq)
   break;
  if (iscan == ((void*)0) && i->vector == -1)
   i->vector = vector;
  iscan = ((void*)0);
 }

 if (iscan == ((void*)0) && i->vector != -1) {
  powerpc_intrs[i->vector] = i;
  i->cntindex = atomic_fetchadd_int(&intrcnt_index, 1);
  i->cntp = &intrcnt[i->cntindex];
  sprintf(intrname, "irq%u:", i->irq);
  intrcnt_setname(intrname, i->cntindex);
  nvectors++;
 }
 mtx_unlock(&intr_table_lock);

 if (iscan != ((void*)0) || i->vector == -1) {
  free(i, M_INTR);
  i = iscan;
 }

 return (i);
}
