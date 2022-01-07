
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;


 int notify (struct cdev*,char*,int) ;

__attribute__((used)) static void
notify_create(struct cdev *dev, int flags)
{

 notify(dev, "CREATE", flags);
}
