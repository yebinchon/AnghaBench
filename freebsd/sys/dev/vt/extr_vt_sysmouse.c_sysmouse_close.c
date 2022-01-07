
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int M_SYSMOUSE ;
 int free (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * sysmouse_buffer ;
 scalar_t__ sysmouse_level ;
 int sysmouse_lock ;

__attribute__((used)) static int
sysmouse_close(struct cdev *dev, int fflag, int devtype, struct thread *td)
{

 mtx_lock(&sysmouse_lock);
 free(sysmouse_buffer, M_SYSMOUSE);
 sysmouse_buffer = ((void*)0);
 sysmouse_level = 0;
 mtx_unlock(&sysmouse_lock);

 return (0);
}
