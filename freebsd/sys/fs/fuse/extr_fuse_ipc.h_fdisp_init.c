
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_dispatcher {size_t iosize; int * tick; } ;



__attribute__((used)) static inline void
fdisp_init(struct fuse_dispatcher *fdisp, size_t iosize)
{
 fdisp->iosize = iosize;
 fdisp->tick = ((void*)0);
}
