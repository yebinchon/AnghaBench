
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int
cttyopen(struct cdev *dev, int flag, int mode, struct thread *td)
{

 return (ENXIO);
}
