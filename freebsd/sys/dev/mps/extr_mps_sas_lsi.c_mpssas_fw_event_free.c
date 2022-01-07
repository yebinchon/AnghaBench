
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int dummy; } ;
struct mps_fw_event_work {struct mps_fw_event_work* event_data; } ;


 int M_MPT2 ;
 int free (struct mps_fw_event_work*,int ) ;

__attribute__((used)) static void
mpssas_fw_event_free(struct mps_softc *sc, struct mps_fw_event_work *fw_event)
{

 free(fw_event->event_data, M_MPT2);
 free(fw_event, M_MPT2);
}
