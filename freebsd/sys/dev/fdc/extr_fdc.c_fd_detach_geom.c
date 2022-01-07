
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_data {int fd_geom; } ;


 int ENXIO ;
 int g_topology_assert () ;
 int g_wither_geom (int ,int ) ;

__attribute__((used)) static void
fd_detach_geom(void *arg, int flag)
{
 struct fd_data *fd = arg;

 g_topology_assert();
 g_wither_geom(fd->fd_geom, ENXIO);
}
