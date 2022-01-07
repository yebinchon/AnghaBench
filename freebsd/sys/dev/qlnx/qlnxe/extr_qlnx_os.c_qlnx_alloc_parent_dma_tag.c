
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent_tag; } ;
struct TYPE_6__ {TYPE_1__ flags; int parent_tag; int pci_dev; } ;
typedef TYPE_2__ qlnx_host_t ;
typedef int device_t ;
typedef int bus_size_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int QL_DPRINT1 (TYPE_2__*,char*) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;

__attribute__((used)) static int
qlnx_alloc_parent_dma_tag(qlnx_host_t *ha)
{
        int ret;
        device_t dev;

        dev = ha->pci_dev;




        ret = bus_dma_tag_create(
                        bus_get_dma_tag(dev),
                        1,((bus_size_t)(1ULL << 32)),
                        BUS_SPACE_MAXADDR,
                        BUS_SPACE_MAXADDR,
                        ((void*)0), ((void*)0),
                        BUS_SPACE_MAXSIZE_32BIT,
                        0,
                        BUS_SPACE_MAXSIZE_32BIT,
                        0,
                        ((void*)0), ((void*)0),
                        &ha->parent_tag);

        if (ret) {
                QL_DPRINT1(ha, "could not create parent dma tag\n");
                return (-1);
        }

        ha->flags.parent_tag = 1;

        return (0);
}
