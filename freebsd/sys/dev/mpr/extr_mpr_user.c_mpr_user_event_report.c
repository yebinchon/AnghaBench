
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mpr_softc {scalar_t__ recorded_events; } ;
struct TYPE_3__ {int Size; int PtrEvents; } ;
typedef TYPE_1__ mpr_event_report_t ;


 int EFAULT ;
 int PTRIN (int ) ;
 scalar_t__ copyout (void*,int ,int) ;
 int mpr_lock (struct mpr_softc*) ;
 int mpr_unlock (struct mpr_softc*) ;

__attribute__((used)) static int
mpr_user_event_report(struct mpr_softc *sc, mpr_event_report_t *data)
{
 int status = 0;
 uint32_t size;

 mpr_lock(sc);
 size = data->Size;
 if ((size >= sizeof(sc->recorded_events)) && (status == 0)) {
  mpr_unlock(sc);
  if (copyout((void *)sc->recorded_events,
      PTRIN(data->PtrEvents), size) != 0)
   status = EFAULT;
  mpr_lock(sc);
 } else {



  status = EFAULT;
 }




 if (status == 0)
  data->Size = sizeof(sc->recorded_events);
 mpr_unlock(sc);

 return (status);
}
