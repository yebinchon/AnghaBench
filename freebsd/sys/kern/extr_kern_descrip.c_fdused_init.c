
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedesc {int * fd_map; } ;


 int KASSERT (int,char*) ;
 int NDBIT (int) ;
 size_t NDSLOT (int) ;
 int fdisused (struct filedesc*,int) ;

__attribute__((used)) static void
fdused_init(struct filedesc *fdp, int fd)
{

 KASSERT(!fdisused(fdp, fd), ("fd=%d is already used", fd));

 fdp->fd_map[NDSLOT(fd)] |= NDBIT(fd);
}
