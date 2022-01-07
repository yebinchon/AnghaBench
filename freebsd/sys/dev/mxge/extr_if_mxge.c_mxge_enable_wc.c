
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_3__ {int wc; int dev; scalar_t__ sram; int mem_res; } ;
typedef TYPE_1__ mxge_softc_t ;


 int PAT_WRITE_COMBINING ;
 int device_printf (int ,char*,int) ;
 int pmap_change_attr (int ,int ,int ) ;
 int rman_get_size (int ) ;

__attribute__((used)) static void
mxge_enable_wc(mxge_softc_t *sc)
{

 vm_offset_t len;
 int err;

 sc->wc = 1;
 len = rman_get_size(sc->mem_res);
 err = pmap_change_attr((vm_offset_t) sc->sram,
          len, PAT_WRITE_COMBINING);
 if (err != 0) {
  device_printf(sc->dev, "pmap_change_attr failed, %d\n",
         err);
  sc->wc = 0;
 }

}
