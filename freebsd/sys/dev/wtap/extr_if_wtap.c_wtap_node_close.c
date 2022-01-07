
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int uprintf (char*) ;

__attribute__((used)) static int
wtap_node_close(struct cdev *dev, int fflag, int devtype, struct thread *p)
{

 uprintf("Closing device \"echo.\"\n");
 return(0);
}
