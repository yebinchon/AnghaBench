
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sglist {int sg_nseg; TYPE_1__* sg_segs; } ;
struct TYPE_2__ {scalar_t__ ss_len; } ;



size_t
sglist_length(struct sglist *sg)
{
 size_t space;
 int i;

 space = 0;
 for (i = 0; i < sg->sg_nseg; i++)
  space += sg->sg_segs[i].ss_len;
 return (space);
}
