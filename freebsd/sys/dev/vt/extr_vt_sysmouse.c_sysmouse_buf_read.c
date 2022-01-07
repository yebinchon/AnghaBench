
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;


 int ENXIO ;
 int EWOULDBLOCK ;
 int MOUSE_SYS_PACKETSIZE ;
 int SYSMOUSE_MAXFRAMES ;
 int memcpy (unsigned char*,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * sysmouse_buffer ;
 scalar_t__ sysmouse_length ;
 int sysmouse_lock ;
 int sysmouse_start ;
 int uiomove (unsigned char*,unsigned int,struct uio*) ;

__attribute__((used)) static int
sysmouse_buf_read(struct uio *uio, unsigned int length)
{
 unsigned char buf[MOUSE_SYS_PACKETSIZE];
 int error;

 if (sysmouse_buffer == ((void*)0))
  return (ENXIO);
 else if (sysmouse_length == 0)
  return (EWOULDBLOCK);

 memcpy(buf, sysmouse_buffer +
     sysmouse_start * MOUSE_SYS_PACKETSIZE, MOUSE_SYS_PACKETSIZE);
 sysmouse_start = (sysmouse_start + 1) % SYSMOUSE_MAXFRAMES;
 sysmouse_length--;

 mtx_unlock(&sysmouse_lock);
 error = uiomove(buf, length, uio);
 mtx_lock(&sysmouse_lock);

 return (error);
}
