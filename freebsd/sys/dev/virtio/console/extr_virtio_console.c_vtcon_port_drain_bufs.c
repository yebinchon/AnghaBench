
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;


 int M_DEVBUF ;
 int free (void*,int ) ;
 void* virtqueue_drain (struct virtqueue*,int*) ;

__attribute__((used)) static void
vtcon_port_drain_bufs(struct virtqueue *vq)
{
 void *buf;
 int last;

 last = 0;

 while ((buf = virtqueue_drain(vq, &last)) != ((void*)0))
  free(buf, M_DEVBUF);
}
