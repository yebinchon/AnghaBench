
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {unsigned int uio_resid; } ;
struct cdev {int dummy; } ;
typedef unsigned int ssize_t ;


 int EWOULDBLOCK ;
 unsigned int MOUSE_MSC_PACKETSIZE ;
 unsigned int MOUSE_SYS_PACKETSIZE ;
 int O_NONBLOCK ;
 int cv_wait_sig (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sysmouse_buf_read (struct uio*,unsigned int) ;
 int sysmouse_level ;
 int sysmouse_lock ;
 int sysmouse_sleep ;

__attribute__((used)) static int
sysmouse_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 unsigned int length;
 ssize_t oresid;
 int error = 0;

 oresid = uio->uio_resid;

 mtx_lock(&sysmouse_lock);
 length = sysmouse_level >= 1 ? MOUSE_SYS_PACKETSIZE :
     MOUSE_MSC_PACKETSIZE;

 while (uio->uio_resid >= length) {
  error = sysmouse_buf_read(uio, length);
  if (error == 0) {

   continue;
  } else if (error != EWOULDBLOCK) {

   break;
  } else {

   if (oresid != uio->uio_resid || ioflag & O_NONBLOCK)
    break;
   error = cv_wait_sig(&sysmouse_sleep, &sysmouse_lock);
   if (error != 0)
    break;
  }
 }
 mtx_unlock(&sysmouse_lock);

 return (error);
}
