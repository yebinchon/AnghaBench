
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_iov {size_t allocated_size; scalar_t__ credit; char* base; size_t len; } ;


 size_t FU_AT_LEAST (size_t) ;
 int M_FUSEMSG ;
 int M_WAITOK ;
 int M_ZERO ;
 int bzero (char*,size_t) ;
 scalar_t__ fuse_iov_credit ;
 scalar_t__ fuse_iov_permanent_bufsize ;
 int panic (char*) ;
 char* realloc (char*,size_t,int ,int) ;

void
fiov_adjust(struct fuse_iov *fiov, size_t size)
{
 if (fiov->allocated_size < size ||
     (fuse_iov_permanent_bufsize >= 0 &&
     fiov->allocated_size - size > fuse_iov_permanent_bufsize &&
     --fiov->credit < 0)) {

  fiov->base = realloc(fiov->base, FU_AT_LEAST(size), M_FUSEMSG,
      M_WAITOK | M_ZERO);
  if (!fiov->base) {
   panic("FUSE: realloc failed");
  }
  fiov->allocated_size = FU_AT_LEAST(size);
  fiov->credit = fuse_iov_credit;

  bzero(fiov->base, size);
 } else if (size > fiov->len) {

  bzero((char*)fiov->base + fiov->len, size - fiov->len);
 }
 fiov->len = size;
}
