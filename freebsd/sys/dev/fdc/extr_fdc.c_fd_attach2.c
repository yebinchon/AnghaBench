
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fd_data {int fd_provider; TYPE_1__* fd_geom; int dev; } ;
struct TYPE_3__ {struct fd_data* softc; int name; } ;


 int device_get_unit (int ) ;
 int g_error_provider (int ,int ) ;
 int g_fd_class ;
 TYPE_1__* g_new_geomf (int *,char*,int ) ;
 int g_new_providerf (TYPE_1__*,char*,int ) ;

__attribute__((used)) static void
fd_attach2(void *arg, int flag)
{
 struct fd_data *fd;

 fd = arg;

 fd->fd_geom = g_new_geomf(&g_fd_class,
     "fd%d", device_get_unit(fd->dev));
 fd->fd_provider = g_new_providerf(fd->fd_geom, "%s", fd->fd_geom->name);
 fd->fd_geom->softc = fd;
 g_error_provider(fd->fd_provider, 0);
}
