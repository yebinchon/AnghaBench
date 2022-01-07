
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ptnet_softc {int vnet_hdr_len; TYPE_3__* ptna; int iomem; } ;
struct TYPE_4__ {int virt_hdr_len; } ;
struct TYPE_5__ {TYPE_1__ up; } ;
struct TYPE_6__ {TYPE_2__ hwup; } ;


 unsigned int PTNET_HDR_SIZE ;
 int PTNET_IO_VNET_HDR_LEN ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,unsigned int) ;
 scalar_t__ ptnet_vnet_hdr ;

__attribute__((used)) static void
ptnet_update_vnet_hdr(struct ptnet_softc *sc)
{
 unsigned int wanted_hdr_len = ptnet_vnet_hdr ? PTNET_HDR_SIZE : 0;

 bus_write_4(sc->iomem, PTNET_IO_VNET_HDR_LEN, wanted_hdr_len);
 sc->vnet_hdr_len = bus_read_4(sc->iomem, PTNET_IO_VNET_HDR_LEN);
 sc->ptna->hwup.up.virt_hdr_len = sc->vnet_hdr_len;
}
