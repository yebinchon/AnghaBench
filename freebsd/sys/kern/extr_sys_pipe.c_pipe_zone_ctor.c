
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {void* pipe_present; struct pipepair* pipe_pair; struct pipe* pipe_peer; int pipe_ctime; int pipe_mtime; int pipe_atime; } ;
struct pipepair {int * pp_label; struct pipe pp_wpipe; struct pipe pp_rpipe; } ;


 int KASSERT (int,char*) ;
 void* PIPE_ACTIVE ;
 int bzero (struct pipe*,int) ;
 int vfs_timestamp (int *) ;

__attribute__((used)) static int
pipe_zone_ctor(void *mem, int size, void *arg, int flags)
{
 struct pipepair *pp;
 struct pipe *rpipe, *wpipe;

 KASSERT(size == sizeof(*pp), ("pipe_zone_ctor: wrong size"));

 pp = (struct pipepair *)mem;






 rpipe = &pp->pp_rpipe;
 bzero(rpipe, sizeof(*rpipe));
 vfs_timestamp(&rpipe->pipe_ctime);
 rpipe->pipe_atime = rpipe->pipe_mtime = rpipe->pipe_ctime;

 wpipe = &pp->pp_wpipe;
 bzero(wpipe, sizeof(*wpipe));
 wpipe->pipe_ctime = rpipe->pipe_ctime;
 wpipe->pipe_atime = wpipe->pipe_mtime = rpipe->pipe_ctime;

 rpipe->pipe_peer = wpipe;
 rpipe->pipe_pair = pp;
 wpipe->pipe_peer = rpipe;
 wpipe->pipe_pair = pp;






 rpipe->pipe_present = PIPE_ACTIVE;
 wpipe->pipe_present = PIPE_ACTIVE;






 pp->pp_label = ((void*)0);

 return (0);
}
