
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int irq_rr; int vector; int tag; int * intr_res; TYPE_1__* sc; int tq; int task_name; int task; } ;
struct TYPE_6__ {int flags; int dev; TYPE_2__* intrs; } ;
typedef TYPE_1__* POCE_SOFTC ;
typedef TYPE_2__* POCE_INTR_INFO ;


 int EINVAL ;
 int ENXIO ;
 int INTR_TYPE_NET ;
 int M_NOWAIT ;
 int OCE_FLAGS_USING_MSIX ;
 int OCE_MAX_EQ ;
 int PI_NET ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int TASK_INIT (int *,int ,void (*) (void*,int),TYPE_2__*) ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int ,int ,int *,TYPE_2__*,int *) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int oce_fast_isr ;
 int sprintf (int ,char*,int) ;
 int taskqueue_create_fast (int ,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
oce_alloc_intr(POCE_SOFTC sc, int vector, void (*isr) (void *arg, int pending))
{
 POCE_INTR_INFO ii;
 int rc = 0, rr;

 if (vector >= OCE_MAX_EQ)
  return (EINVAL);

 ii = &sc->intrs[vector];





 if (sc->flags & OCE_FLAGS_USING_MSIX)
  rr = vector + 1;
 else
  rr = 0;
 ii->intr_res = bus_alloc_resource_any(sc->dev,
           SYS_RES_IRQ,
           &rr, RF_ACTIVE|RF_SHAREABLE);
 ii->irq_rr = rr;
 if (ii->intr_res == ((void*)0)) {
  device_printf(sc->dev,
     "Could not allocate interrupt\n");
  rc = ENXIO;
  return rc;
 }

 TASK_INIT(&ii->task, 0, isr, ii);
 ii->vector = vector;
 sprintf(ii->task_name, "oce_task[%d]", ii->vector);
 ii->tq = taskqueue_create_fast(ii->task_name,
   M_NOWAIT,
   taskqueue_thread_enqueue,
   &ii->tq);
 taskqueue_start_threads(&ii->tq, 1, PI_NET, "%s taskq",
   device_get_nameunit(sc->dev));

 ii->sc = sc;
 rc = bus_setup_intr(sc->dev,
   ii->intr_res,
   INTR_TYPE_NET,
   oce_fast_isr, ((void*)0), ii, &ii->tag);
 return rc;

}
