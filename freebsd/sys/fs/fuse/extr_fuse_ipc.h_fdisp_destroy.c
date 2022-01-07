
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_dispatcher {int * tick; } ;


 int fuse_ticket_drop (int *) ;

__attribute__((used)) static inline void
fdisp_destroy(struct fuse_dispatcher *fdisp)
{
 fuse_ticket_drop(fdisp->tick);



}
