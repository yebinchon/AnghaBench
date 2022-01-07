
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;



__attribute__((used)) static int
creator_fb_close(struct cdev *dev, int flags, int mode, struct thread *td)
{

 return (0);
}
