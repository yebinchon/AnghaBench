
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_port {int dummy; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int VTCON_BULK_BUFSZ ;
 int free (void*,int ) ;
 void* malloc (int ,int ,int) ;
 int vtcon_port_enqueue_buf (struct vtcon_port*,void*,int ) ;

__attribute__((used)) static int
vtcon_port_create_buf(struct vtcon_port *port)
{
 void *buf;
 int error;

 buf = malloc(VTCON_BULK_BUFSZ, M_DEVBUF, M_ZERO | M_NOWAIT);
 if (buf == ((void*)0))
  return (ENOMEM);

 error = vtcon_port_enqueue_buf(port, buf, VTCON_BULK_BUFSZ);
 if (error)
  free(buf, M_DEVBUF);

 return (error);
}
