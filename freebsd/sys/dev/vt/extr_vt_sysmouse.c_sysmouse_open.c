
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int MOUSE_SYS_PACKETSIZE ;
 int M_SYSMOUSE ;
 int M_WAITOK ;
 int SYSMOUSE_MAXFRAMES ;
 int free (void*,int ) ;
 void* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * sysmouse_buffer ;
 scalar_t__ sysmouse_length ;
 scalar_t__ sysmouse_level ;
 int sysmouse_lock ;
 scalar_t__ sysmouse_start ;

__attribute__((used)) static int
sysmouse_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 void *buf;

 buf = malloc(MOUSE_SYS_PACKETSIZE * SYSMOUSE_MAXFRAMES,
     M_SYSMOUSE, M_WAITOK);
 mtx_lock(&sysmouse_lock);
 if (sysmouse_buffer == ((void*)0)) {
  sysmouse_buffer = buf;
  sysmouse_start = sysmouse_length = 0;
  sysmouse_level = 0;
 } else {
  free(buf, M_SYSMOUSE);
 }
 mtx_unlock(&sysmouse_lock);

 return (0);
}
