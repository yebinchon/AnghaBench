
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_resid; } ;
struct udf_uiodir {scalar_t__ acookies; scalar_t__ ncookies; int dirent; scalar_t__ eofflag; int * cookies; } ;


 int uiomove (int ,int,struct uio*) ;

__attribute__((used)) static int
udf_uiodir(struct udf_uiodir *uiodir, int de_size, struct uio *uio, long cookie)
{
 if (uiodir->cookies != ((void*)0)) {
  if (++uiodir->acookies > uiodir->ncookies) {
   uiodir->eofflag = 0;
   return (-1);
  }
  *uiodir->cookies++ = cookie;
 }

 if (uio->uio_resid < de_size) {
  uiodir->eofflag = 0;
  return (-1);
 }

 return (uiomove(uiodir->dirent, de_size, uio));
}
