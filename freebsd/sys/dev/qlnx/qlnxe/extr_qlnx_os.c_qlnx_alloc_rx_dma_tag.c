
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rx_tag; } ;
typedef TYPE_1__ qlnx_host_t ;


 int BUS_SPACE_MAXADDR ;
 int MJUM9BYTES ;
 int QL_DPRINT1 (TYPE_1__*,char*) ;
 scalar_t__ bus_dma_tag_create (int *,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;

__attribute__((used)) static int
qlnx_alloc_rx_dma_tag(qlnx_host_t *ha)
{
        if (bus_dma_tag_create(((void*)0),
                        1, 0,
                        BUS_SPACE_MAXADDR,
                        BUS_SPACE_MAXADDR,
                        ((void*)0), ((void*)0),
                        MJUM9BYTES,
                        1,
                        MJUM9BYTES,
                        0,
                        ((void*)0),
                        ((void*)0),
                        &ha->rx_tag)) {

                QL_DPRINT1(ha, " rx_tag alloc failed\n");

                return (-1);
        }
 return (0);
}
