
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mps_softc {scalar_t__ recorded_events; } ;
struct TYPE_3__ {int Size; int PtrEvents; } ;
typedef TYPE_1__ mps_event_report_t ;


 int EFAULT ;
 int PTRIN (int ) ;
 scalar_t__ copyout (void*,int ,int) ;
 int mps_lock (struct mps_softc*) ;
 int mps_unlock (struct mps_softc*) ;

__attribute__((used)) static int
mps_user_event_report(struct mps_softc *sc, mps_event_report_t *data)
{
 int status = 0;
 uint32_t size;

 mps_lock(sc);
 size = data->Size;
 if ((size >= sizeof(sc->recorded_events)) && (status == 0)) {
  mps_unlock(sc);
  if (copyout((void *)sc->recorded_events,
      PTRIN(data->PtrEvents), size) != 0)
   status = EFAULT;
  mps_lock(sc);
 } else {



  status = EFAULT;
 }




 if (status == 0)
  data->Size = sizeof(sc->recorded_events);
 mps_unlock(sc);

 return (status);
}
