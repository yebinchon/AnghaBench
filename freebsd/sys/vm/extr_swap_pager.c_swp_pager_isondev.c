
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swdevt {scalar_t__ sw_first; scalar_t__ sw_end; } ;
typedef scalar_t__ daddr_t ;



__attribute__((used)) static bool
swp_pager_isondev(daddr_t blk, struct swdevt *sp)
{

 return (blk >= sp->sw_first && blk < sp->sw_end);
}
