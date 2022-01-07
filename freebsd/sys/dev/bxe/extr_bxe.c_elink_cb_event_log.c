
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;
typedef int elink_log_id_t ;


 int BLOGI (struct bxe_softc*,char*,int const) ;

void
elink_cb_event_log(struct bxe_softc *sc,
                   const elink_log_id_t elink_log_id,
                   ...)
{

    BLOGI(sc, "ELINK EVENT LOG (%d)\n", elink_log_id);
}
