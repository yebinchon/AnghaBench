
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {scalar_t__ isrc_dev; int isrc_cpu; int isrc_flags; } ;


 int CPU_SETOF (int,int *) ;
 int CPU_ZERO (int *) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int INTR_ISRCF_BOUND ;
 int NOCPU ;
 int PIC_BIND_INTR (scalar_t__,struct intr_irqsrc*) ;
 scalar_t__ intr_irq_root_dev ;
 scalar_t__ irq_assign_cpu ;
 int isrc_table_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
intr_isrc_assign_cpu(void *arg, int cpu)
{
 return (EOPNOTSUPP);

}
