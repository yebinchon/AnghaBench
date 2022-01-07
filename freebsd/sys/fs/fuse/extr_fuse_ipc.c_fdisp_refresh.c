
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_dispatcher {int tick; } ;


 int fticket_refresh (int ) ;

void
fdisp_refresh(struct fuse_dispatcher *fdip)
{
 fticket_refresh(fdip->tick);
}
