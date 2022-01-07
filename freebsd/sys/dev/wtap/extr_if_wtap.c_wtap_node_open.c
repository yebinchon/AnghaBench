
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int uprintf (char*) ;

__attribute__((used)) static int
wtap_node_open(struct cdev *dev, int oflags, int devtype, struct thread *p)
{

 int err = 0;
 uprintf("Opened device \"echo\" successfully.\n");
 return(err);
}
