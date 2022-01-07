
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedescent {int fde_seqc; int * fde_file; } ;
struct filedesc {struct filedescent* fd_ofiles; } ;


 int fdefree_last (struct filedescent*) ;
 int fdunused (struct filedesc*,int) ;
 int seqc_write_begin (int *) ;
 int seqc_write_end (int *) ;

__attribute__((used)) static inline void
fdfree(struct filedesc *fdp, int fd)
{
 struct filedescent *fde;

 fde = &fdp->fd_ofiles[fd];



 fde->fde_file = ((void*)0);



 fdefree_last(fde);
 fdunused(fdp, fd);
}
