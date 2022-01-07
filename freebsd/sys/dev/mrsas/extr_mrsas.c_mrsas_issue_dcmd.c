
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mrsas_softc {int mrsas_dev; } ;
struct mrsas_mfi_cmd {int dummy; } ;
struct TYPE_5__ {int high; int low; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ addr; } ;
typedef TYPE_3__ MRSAS_REQUEST_DESCRIPTOR_UNION ;


 int device_printf (int ,char*) ;
 TYPE_3__* mrsas_build_mpt_cmd (struct mrsas_softc*,struct mrsas_mfi_cmd*) ;
 int mrsas_fire_cmd (struct mrsas_softc*,int ,int ) ;

int
mrsas_issue_dcmd(struct mrsas_softc *sc, struct mrsas_mfi_cmd *cmd)
{
 MRSAS_REQUEST_DESCRIPTOR_UNION *req_desc;

 req_desc = mrsas_build_mpt_cmd(sc, cmd);
 if (!req_desc) {
  device_printf(sc->mrsas_dev, "Cannot build MPT cmd.\n");
  return (1);
 }
 mrsas_fire_cmd(sc, req_desc->addr.u.low, req_desc->addr.u.high);

 return (0);
}
