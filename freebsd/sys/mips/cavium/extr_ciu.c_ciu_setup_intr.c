
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct intr_event {int ie_fullname; } ;
typedef int mips_intrcnt_t ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;


 int CIU_IRQ_EN0_BEGIN ;
 int CIU_IRQ_EN0_END ;
 int CIU_IRQ_EN1_BEGIN ;
 int ciu_en0_intr_bind (void*,int) ;
 struct intr_event** ciu_en0_intr_events ;
 void ciu_en0_intr_mask (void*) ;
 void ciu_en0_intr_unmask (void*) ;
 int * ciu_en0_intrcnt ;
 int ciu_en1_intr_bind (void*,int) ;
 struct intr_event** ciu_en1_intr_events ;
 void ciu_en1_intr_mask (void*) ;
 void ciu_en1_intr_unmask (void*) ;
 int * ciu_en1_intrcnt ;
 int device_get_nameunit (int ) ;
 int intr_event_add_handler (struct intr_event*,int ,int *,int *,void*,int ,int,void**) ;
 int intr_event_create (struct intr_event**,void*,int ,int,void (*) (void*),void (*) (void*),int *,int (*) (void*,int),char*,int) ;
 int intr_priority (int) ;
 int mips_intrcnt_setname (int ,int ) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static int
ciu_setup_intr(device_t bus, device_t child, struct resource *res, int flags,
        driver_filter_t *filter, driver_intr_t *intr, void *arg,
        void **cookiep)
{
 struct intr_event *event, **eventp;
 void (*mask_func)(void *);
 void (*unmask_func)(void *);
 int (*bind_func)(void *, int);
 mips_intrcnt_t intrcnt;
 int error;
 int irq;

 irq = rman_get_start(res);
 if (irq <= CIU_IRQ_EN0_END) {
  eventp = &ciu_en0_intr_events[irq - CIU_IRQ_EN0_BEGIN];
  intrcnt = ciu_en0_intrcnt[irq - CIU_IRQ_EN0_BEGIN];
  mask_func = ciu_en0_intr_mask;
  unmask_func = ciu_en0_intr_unmask;



 } else {
  eventp = &ciu_en1_intr_events[irq - CIU_IRQ_EN1_BEGIN];
  intrcnt = ciu_en1_intrcnt[irq - CIU_IRQ_EN1_BEGIN];
  mask_func = ciu_en1_intr_mask;
  unmask_func = ciu_en1_intr_unmask;



 }

 bind_func = ((void*)0);


 if ((event = *eventp) == ((void*)0)) {
  error = intr_event_create(eventp, (void *)(uintptr_t)irq, 0,
      irq, mask_func, unmask_func, ((void*)0), bind_func, "int%d", irq);
  if (error != 0)
   return (error);

  event = *eventp;

  unmask_func((void *)(uintptr_t)irq);
 }

 intr_event_add_handler(event, device_get_nameunit(child),
     filter, intr, arg, intr_priority(flags), flags, cookiep);

 mips_intrcnt_setname(intrcnt, event->ie_fullname);

 return (0);
}
