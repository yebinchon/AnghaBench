
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int dummy; } ;
struct mpr_fw_event_work {struct mpr_fw_event_work* event_data; } ;


 int M_MPR ;
 int free (struct mpr_fw_event_work*,int ) ;

__attribute__((used)) static void
mprsas_fw_event_free(struct mpr_softc *sc, struct mpr_fw_event_work *fw_event)
{

 free(fw_event->event_data, M_MPR);
 free(fw_event, M_MPR);
}
