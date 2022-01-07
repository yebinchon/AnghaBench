
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fuse_iov {int credit; int allocated_size; int base; scalar_t__ len; } ;


 int FU_AT_LEAST (size_t) ;
 int M_FUSEMSG ;
 int M_WAITOK ;
 int M_ZERO ;
 int fuse_iov_credit ;
 int malloc (int ,int ,int) ;

void
fiov_init(struct fuse_iov *fiov, size_t size)
{
 uint32_t msize = FU_AT_LEAST(size);

 fiov->len = 0;

 fiov->base = malloc(msize, M_FUSEMSG, M_WAITOK | M_ZERO);

 fiov->allocated_size = msize;
 fiov->credit = fuse_iov_credit;
}
