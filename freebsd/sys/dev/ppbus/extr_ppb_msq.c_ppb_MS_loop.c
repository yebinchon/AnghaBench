
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppb_microseq {TYPE_1__* arg; } ;
typedef int device_t ;
struct TYPE_2__ {int i; void* p; } ;


 struct ppb_microseq MS_CALL (int ) ;
 struct ppb_microseq MS_DBRA (int) ;
 struct ppb_microseq MS_RET (int ) ;
 struct ppb_microseq MS_SET (int ) ;
 int MS_UNKNOWN ;
 int ppb_MS_microseq (int ,int ,struct ppb_microseq*,int*) ;

int
ppb_MS_loop(device_t bus, device_t dev, struct ppb_microseq *prolog,
  struct ppb_microseq *body, struct ppb_microseq *epilog,
  int iter, int *ret)
{
 struct ppb_microseq loop_microseq[] = {
    MS_CALL(0),

    MS_SET(MS_UNKNOWN),

    MS_CALL(0),
    MS_DBRA(-1 ),

    MS_CALL(0),
    MS_RET(0)
 };


 loop_microseq[0].arg[0].p = (void *)prolog;
 loop_microseq[1].arg[0].i = iter;
 loop_microseq[2].arg[0].p = (void *)body;
 loop_microseq[4].arg[0].p = (void *)epilog;


 return (ppb_MS_microseq(bus, dev, loop_microseq, ret));
}
