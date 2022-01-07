
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_data {int toffhandle; } ;
typedef int device_t ;


 scalar_t__ DS_BUSY ;
 int M_WAITOK ;
 int PZERO ;
 int callout_drain (int *) ;
 struct fd_data* device_get_softc (int ) ;
 scalar_t__ device_get_state (int ) ;
 int fd_detach_geom ;
 int g_waitfor_event (int ,struct fd_data*,int ,int *) ;
 int hz ;
 int tsleep (struct fd_data*,int ,char*,int) ;

__attribute__((used)) static int
fd_detach(device_t dev)
{
 struct fd_data *fd;

 fd = device_get_softc(dev);
 g_waitfor_event(fd_detach_geom, fd, M_WAITOK, ((void*)0));
 while (device_get_state(dev) == DS_BUSY)
  tsleep(fd, PZERO, "fdd", hz/10);
 callout_drain(&fd->toffhandle);

 return (0);
}
