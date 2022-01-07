
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedesc {int fd_nfiles; int* fd_map; } ;


 int KASSERT (int,char*) ;
 int NDBIT (int) ;
 size_t NDSLOT (int) ;

__attribute__((used)) static int
fdisused(struct filedesc *fdp, int fd)
{

 KASSERT(fd >= 0 && fd < fdp->fd_nfiles,
     ("file descriptor %d out of range (0, %d)", fd, fdp->fd_nfiles));

 return ((fdp->fd_map[NDSLOT(fd)] & NDBIT(fd)) != 0);
}
