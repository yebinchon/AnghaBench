
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int POLLIN ;
 int POLLRDNORM ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selrecord (struct thread*,int *) ;
 int sysmouse_bufpoll ;
 scalar_t__ sysmouse_length ;
 int sysmouse_lock ;

__attribute__((used)) static int
sysmouse_poll(struct cdev *dev, int events, struct thread *td)
{
 int revents = 0;

 mtx_lock(&sysmouse_lock);
 if (events & (POLLIN|POLLRDNORM)) {
  if (sysmouse_length > 0)
   revents = events & (POLLIN|POLLRDNORM);
  else
   selrecord(td, &sysmouse_bufpoll);
 }
 mtx_unlock(&sysmouse_lock);

 return (revents);
}
