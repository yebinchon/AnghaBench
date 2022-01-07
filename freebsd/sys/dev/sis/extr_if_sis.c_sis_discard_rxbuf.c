
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sis_rxdesc {TYPE_1__* rx_desc; } ;
struct TYPE_2__ {int sis_cmdsts; } ;


 int SIS_RXLEN ;
 int htole32 (int ) ;

__attribute__((used)) static __inline void
sis_discard_rxbuf(struct sis_rxdesc *rxd)
{

 rxd->rx_desc->sis_cmdsts = htole32(SIS_RXLEN);
}
