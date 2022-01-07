
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ntb_load_cb_args {int error; int addr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void
ntb_load_cb(void *xsc, bus_dma_segment_t *segs, int nsegs, int error)
{
 struct ntb_load_cb_args *cba = (struct ntb_load_cb_args *)xsc;

 if (!(cba->error = error))
  cba->addr = segs[0].ds_addr;
}
