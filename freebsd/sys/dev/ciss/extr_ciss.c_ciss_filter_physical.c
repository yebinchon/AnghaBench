
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ciss_device_address {int dummy; } ciss_device_address ;
typedef scalar_t__ u_int32_t ;
struct ciss_softc {TYPE_3__** ciss_physical; } ;
struct ciss_lun_report {TYPE_2__* lun; int list_size; } ;
struct TYPE_4__ {scalar_t__ extra_address; scalar_t__ mode; } ;
struct TYPE_5__ {TYPE_1__ physical; } ;
struct TYPE_6__ {int cp_online; TYPE_2__ cp_address; } ;


 int CISS_EXTRA_BUS2 (scalar_t__) ;
 scalar_t__ CISS_EXTRA_BUS3 (scalar_t__) ;
 int CISS_EXTRA_MODE2 (scalar_t__) ;
 int CISS_EXTRA_TARGET2 (scalar_t__) ;
 scalar_t__ CISS_EXTRA_TARGET3 (scalar_t__) ;
 scalar_t__ CISS_HDR_ADDRESS_MODE_MASK_PERIPHERAL ;
 scalar_t__ ciss_expose_hidden_physical ;
 int ntohl (int ) ;

__attribute__((used)) static int
ciss_filter_physical(struct ciss_softc *sc, struct ciss_lun_report *cll)
{
    u_int32_t ea;
    int i, nphys;
    int bus, target;

    nphys = (ntohl(cll->list_size) / sizeof(union ciss_device_address));
    for (i = 0; i < nphys; i++) {
 if (cll->lun[i].physical.extra_address == 0)
     continue;
 ea = cll->lun[i].physical.extra_address;
 if ((CISS_EXTRA_BUS3(ea) != 0) || (CISS_EXTRA_TARGET3(ea) != 0) ||
     (CISS_EXTRA_MODE2(ea) == 0x3))
     continue;
 if ((ciss_expose_hidden_physical == 0) &&
    (cll->lun[i].physical.mode == CISS_HDR_ADDRESS_MODE_MASK_PERIPHERAL))
     continue;






 bus = CISS_EXTRA_BUS2(ea) - 1;
 target = CISS_EXTRA_TARGET2(ea);
 sc->ciss_physical[bus][target].cp_address = cll->lun[i];
 sc->ciss_physical[bus][target].cp_online = 1;
    }

    return (0);
}
