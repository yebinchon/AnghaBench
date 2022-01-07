
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct iovec {int dummy; } ;


 int M_IOV ;
 int M_WAITOK ;
 int UIO_MAXIOV ;
 int copyin (struct iovec const*,struct iovec*,int) ;
 int free (struct iovec*,int ) ;
 struct iovec* malloc (int,int ,int ) ;

int
copyiniov(const struct iovec *iovp, u_int iovcnt, struct iovec **iov, int error)
{
 u_int iovlen;

 *iov = ((void*)0);
 if (iovcnt > UIO_MAXIOV)
  return (error);
 iovlen = iovcnt * sizeof (struct iovec);
 *iov = malloc(iovlen, M_IOV, M_WAITOK);
 error = copyin(iovp, *iov, iovlen);
 if (error) {
  free(*iov, M_IOV);
  *iov = ((void*)0);
 }
 return (error);
}
