
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_resid; } ;
typedef int ssize_t ;



__attribute__((used)) static inline ssize_t
uio_resid(struct uio *uio)
{
 return (uio->uio_resid);
}
