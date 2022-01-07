
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int fd; } ;
struct ngdevice {int cs; } ;
struct device {int dummy; } ;


 int close (int) ;
 int free (struct ngdevice*) ;

__attribute__((used)) static struct device *
ng_Abandon(struct ngdevice *dev, struct physical *p)
{

  close(dev->cs);
  close(p->fd);
  p->fd = -2;
  free(dev);

  return ((void*)0);
}
