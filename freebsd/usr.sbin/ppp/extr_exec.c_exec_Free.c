
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int handler; } ;
struct execdevice {int fd_out; } ;


 int close (int) ;
 struct execdevice* device2exec (int ) ;
 int free (struct execdevice*) ;

__attribute__((used)) static void
exec_Free(struct physical *p)
{
  struct execdevice *dev = device2exec(p->handler);

  if (dev->fd_out != -1)
    close(dev->fd_out);
  free(dev);
}
