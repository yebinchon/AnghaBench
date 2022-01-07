
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tx_tag; } ;
typedef TYPE_1__ qlnx_host_t ;


 int BUS_SPACE_MAXADDR ;
 int QLNX_MAX_SEGMENTS ;
 int QLNX_MAX_TSO_FRAME_SIZE ;
 int QLNX_MAX_TX_MBUF_SIZE ;
 int QL_DPRINT1 (TYPE_1__*,char*) ;
 scalar_t__ bus_dma_tag_create (int *,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static int
qlnx_alloc_tx_dma_tag(qlnx_host_t *ha)
{
        if (bus_dma_tag_create(((void*)0),
                1, 0,
                BUS_SPACE_MAXADDR,
                BUS_SPACE_MAXADDR,
                ((void*)0), ((void*)0),
                QLNX_MAX_TSO_FRAME_SIZE,
                QLNX_MAX_SEGMENTS,
                QLNX_MAX_TX_MBUF_SIZE,
                0,
                ((void*)0),
                ((void*)0),
                &ha->tx_tag)) {

                QL_DPRINT1(ha, "tx_tag alloc failed\n");
                return (-1);
        }

 return (0);
}
