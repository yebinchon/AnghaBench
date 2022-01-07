
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_iov {int * base; } ;


 int MPASS (int ) ;
 int M_FUSEMSG ;
 int free (int *,int ) ;

void
fiov_teardown(struct fuse_iov *fiov)
{
 MPASS(fiov->base != ((void*)0));
 free(fiov->base, M_FUSEMSG);
}
