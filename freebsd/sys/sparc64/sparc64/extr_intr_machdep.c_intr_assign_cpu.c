
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcpu {int pc_mid; } ;
struct intr_vector {TYPE_1__* iv_ic; int iv_mid; } ;
struct TYPE_2__ {int (* ic_assign ) (struct intr_vector*) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int NOCPU ;
 scalar_t__ assign_cpu ;
 int intr_table_lock ;
 struct pcpu* pcpu_find (int) ;
 int stub1 (struct intr_vector*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
intr_assign_cpu(void *arg, int cpu)
{
 return (EOPNOTSUPP);

}
