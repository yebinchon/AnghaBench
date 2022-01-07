
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc {int dummy; } ;
struct virtio_console_control {int dummy; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int VTCON_CTRL_BUFSZ ;
 int free (struct virtio_console_control*,int ) ;
 struct virtio_console_control* malloc (int ,int ,int) ;
 int vtcon_ctrl_event_enqueue (struct vtcon_softc*,struct virtio_console_control*) ;

__attribute__((used)) static int
vtcon_ctrl_event_create(struct vtcon_softc *sc)
{
 struct virtio_console_control *control;
 int error;

 control = malloc(VTCON_CTRL_BUFSZ, M_DEVBUF, M_ZERO | M_NOWAIT);
 if (control == ((void*)0))
  return (ENOMEM);

 error = vtcon_ctrl_event_enqueue(sc, control);
 if (error)
  free(control, M_DEVBUF);

 return (error);
}
