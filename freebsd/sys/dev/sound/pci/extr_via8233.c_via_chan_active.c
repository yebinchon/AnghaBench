
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct via_info {TYPE_2__* rch; TYPE_1__* pch; } ;
struct TYPE_4__ {scalar_t__ active; } ;
struct TYPE_3__ {scalar_t__ active; } ;


 int NDXSCHANS ;
 int NMSGDCHANS ;
 int NWRCHANS ;

__attribute__((used)) static __inline int
via_chan_active(struct via_info *via)
{
 int i, ret = 0;

 if (via == ((void*)0))
  return (0);

 for (i = 0; i < NDXSCHANS + NMSGDCHANS; i++)
  ret += via->pch[i].active;

 for (i = 0; i < NWRCHANS; i++)
  ret += via->rch[i].active;

 return (ret);
}
