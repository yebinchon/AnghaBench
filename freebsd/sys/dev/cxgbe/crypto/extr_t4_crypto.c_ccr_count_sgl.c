
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sglist {int sg_nseg; TYPE_1__* sg_segs; } ;
struct TYPE_2__ {int ss_len; } ;


 scalar_t__ howmany (int ,int) ;

__attribute__((used)) static int
ccr_count_sgl(struct sglist *sg, int maxsegsize)
{
 int i, nsegs;

 nsegs = 0;
 for (i = 0; i < sg->sg_nseg; i++)
  nsegs += howmany(sg->sg_segs[i].ss_len, maxsegsize);
 return (nsegs);
}
