
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;
typedef int device_t ;


 int fls (int ) ;
 int lv1_end_of_interrupt_ext (int ,int,int ) ;
 int lv1_get_logical_ppe_id (int *) ;
 int mfctrl () ;

__attribute__((used)) static void
ps3pic_eoi(device_t dev, u_int irq, void *priv)
{
 uint64_t ppe;
 int thread;

 lv1_get_logical_ppe_id(&ppe);
 thread = 32 - fls(mfctrl());

 lv1_end_of_interrupt_ext(ppe, thread, irq);
}
