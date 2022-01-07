
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cuse_server {int dummy; } ;
struct cdev {int dummy; } ;


 int cuse_server_do_close (struct cuse_server*) ;
 scalar_t__ cuse_server_get (struct cuse_server**) ;

__attribute__((used)) static int
cuse_server_close(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
 struct cuse_server *pcs;

 if (cuse_server_get(&pcs) == 0)
  cuse_server_do_close(pcs);

 return (0);
}
