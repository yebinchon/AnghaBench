
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {int * is_pic; } ;
struct msi_intsrc {TYPE_1__ msi_intsrc; scalar_t__ msi_irq; } ;


 int M_MSI ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ first_msi_irq ;
 int intr_register_source (TYPE_1__*) ;
 struct msi_intsrc* malloc (int,int ,int) ;
 scalar_t__ msi_last_irq ;
 int msi_lock ;
 int msi_pic ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nexus_add_irq (scalar_t__) ;
 scalar_t__ num_msi_irqs ;

__attribute__((used)) static void
msi_create_source(void)
{
 struct msi_intsrc *msi;
 u_int irq;

 mtx_lock(&msi_lock);
 if (msi_last_irq >= num_msi_irqs) {
  mtx_unlock(&msi_lock);
  return;
 }
 irq = msi_last_irq + first_msi_irq;
 msi_last_irq++;
 mtx_unlock(&msi_lock);

 msi = malloc(sizeof(struct msi_intsrc), M_MSI, M_WAITOK | M_ZERO);
 msi->msi_intsrc.is_pic = &msi_pic;
 msi->msi_irq = irq;
 intr_register_source(&msi->msi_intsrc);
 nexus_add_irq(irq);
}
