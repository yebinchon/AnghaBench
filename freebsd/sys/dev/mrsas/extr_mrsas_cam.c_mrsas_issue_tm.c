
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mrsas_softc {int mrsas_dev; int sim_lock; int ocr_chan; } ;
struct TYPE_5__ {int high; int low; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ addr; } ;
typedef TYPE_3__ MRSAS_REQUEST_DESCRIPTOR_UNION ;


 int EWOULDBLOCK ;
 int FAIL ;
 int PRIBIO ;
 int SUCCESS ;
 int device_printf (int ,char*) ;
 int hz ;
 int mrsas_fire_cmd (struct mrsas_softc*,int ,int ) ;
 int msleep (int *,int *,int ,char*,int) ;

__attribute__((used)) static int
mrsas_issue_tm(struct mrsas_softc *sc,
 MRSAS_REQUEST_DESCRIPTOR_UNION *req_desc)
{
 int sleep_stat;

 mrsas_fire_cmd(sc, req_desc->addr.u.low, req_desc->addr.u.high);
 sleep_stat = msleep(&sc->ocr_chan, &sc->sim_lock, PRIBIO, "tm_sleep", 50*hz);

 if (sleep_stat == EWOULDBLOCK) {
  device_printf(sc->mrsas_dev, "tm cmd TIMEDOUT\n");
  return FAIL;
 }

 return SUCCESS;
}
