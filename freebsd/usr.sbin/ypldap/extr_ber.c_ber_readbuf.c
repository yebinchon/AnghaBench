
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber {size_t br_rend; size_t br_rptr; int * br_rbuf; } ;
typedef int ssize_t ;


 int ECANCELED ;
 size_t MINIMUM (size_t,size_t) ;
 int bcopy (size_t,void*,size_t) ;
 int errno ;

__attribute__((used)) static ssize_t
ber_readbuf(struct ber *b, void *buf, size_t nbytes)
{
 size_t sz;
 size_t len;

 if (b->br_rbuf == ((void*)0))
  return -1;

 sz = b->br_rend - b->br_rptr;
 len = MINIMUM(nbytes, sz);
 if (len == 0) {
  errno = ECANCELED;
  return (-1);
 }

 bcopy(b->br_rptr, buf, len);
 b->br_rptr += len;

 return (len);
}
