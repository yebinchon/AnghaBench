
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_offset; } ;
typedef int off_t ;



__attribute__((used)) static inline off_t
uio_offset(struct uio *uio)
{
 return (uio->uio_offset);
}
