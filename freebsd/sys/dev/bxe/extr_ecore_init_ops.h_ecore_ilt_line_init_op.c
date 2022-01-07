
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ecore_ilt {int start_line; TYPE_1__* lines; } ;
struct bxe_softc {int dummy; } ;
typedef int ecore_dma_addr_t ;
struct TYPE_2__ {int page_mapping; } ;





 int ecore_ilt_line_wr (struct bxe_softc*,int,int ) ;

__attribute__((used)) static void ecore_ilt_line_init_op(struct bxe_softc *sc,
       struct ecore_ilt *ilt, int idx, uint8_t initop)
{
 ecore_dma_addr_t null_mapping;
 int abs_idx = ilt->start_line + idx;


 switch (initop) {
 case 129:

 case 128:
  ecore_ilt_line_wr(sc, abs_idx, ilt->lines[idx].page_mapping);
  break;
 case 130:
  null_mapping = 0;
  ecore_ilt_line_wr(sc, abs_idx, null_mapping);
  break;
 }
}
