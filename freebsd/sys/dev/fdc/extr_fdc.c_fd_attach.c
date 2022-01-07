
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_data {int fd_bq; int flags; } ;
typedef int device_t ;


 int FD_EMPTY ;
 int M_WAITOK ;
 int bioq_init (int *) ;
 struct fd_data* device_get_softc (int ) ;
 int fd_attach2 ;
 int g_post_event (int ,struct fd_data*,int ,int *) ;

__attribute__((used)) static int
fd_attach(device_t dev)
{
 struct fd_data *fd;

 fd = device_get_softc(dev);
 g_post_event(fd_attach2, fd, M_WAITOK, ((void*)0));
 fd->flags |= FD_EMPTY;
 bioq_init(&fd->fd_bq);

 return (0);
}
