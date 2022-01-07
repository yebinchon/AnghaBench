
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intsrc {scalar_t__ is_handlers; int is_event; TYPE_1__* is_pic; } ;
typedef int mask_fn ;
struct TYPE_2__ {int (* pic_vector ) (struct intsrc*) ;scalar_t__ pic_eoi_source; scalar_t__ pic_enable_source; } ;


 int EEXIST ;
 int KASSERT (int,char*) ;
 struct intsrc** interrupt_sources ;
 int intr_assign_cpu ;
 int intr_disable_src ;
 int intr_event_create (int *,struct intsrc*,int ,int,int ,int ,int ,int ,char*,int) ;
 int intr_event_destroy (int ) ;
 int intr_pic_registered (TYPE_1__*) ;
 int intrcnt_register (struct intsrc*) ;
 int intrsrc_lock ;
 int num_io_irqs ;
 int stub1 (struct intsrc*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
intr_register_source(struct intsrc *isrc)
{
 int error, vector;

 KASSERT(intr_pic_registered(isrc->is_pic), ("unregistered PIC"));
 vector = isrc->is_pic->pic_vector(isrc);
 KASSERT(vector < num_io_irqs, ("IRQ %d too large (%u irqs)", vector,
     num_io_irqs));
 if (interrupt_sources[vector] != ((void*)0))
  return (EEXIST);
 error = intr_event_create(&isrc->is_event, isrc, 0, vector,
     intr_disable_src, (mask_fn)isrc->is_pic->pic_enable_source,
     (mask_fn)isrc->is_pic->pic_eoi_source, intr_assign_cpu, "irq%d:",
     vector);
 if (error)
  return (error);
 sx_xlock(&intrsrc_lock);
 if (interrupt_sources[vector] != ((void*)0)) {
  sx_xunlock(&intrsrc_lock);
  intr_event_destroy(isrc->is_event);
  return (EEXIST);
 }
 intrcnt_register(isrc);
 interrupt_sources[vector] = isrc;
 isrc->is_handlers = 0;
 sx_xunlock(&intrsrc_lock);
 return (0);
}
