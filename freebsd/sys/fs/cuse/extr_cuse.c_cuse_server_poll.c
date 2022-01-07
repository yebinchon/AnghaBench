
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 int POLLRDNORM ;
 int POLLWRNORM ;

__attribute__((used)) static int
cuse_server_poll(struct cdev *dev, int events, struct thread *td)
{
 return (events & (POLLHUP | POLLPRI | POLLIN |
     POLLRDNORM | POLLOUT | POLLWRNORM));
}
