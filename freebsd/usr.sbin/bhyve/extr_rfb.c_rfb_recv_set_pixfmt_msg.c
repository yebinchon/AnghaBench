
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfb_softc {int dummy; } ;
struct rfb_pixfmt_msg {int dummy; } ;
typedef int pixfmt_msg ;


 int stream_read (int,void*,int) ;

__attribute__((used)) static void
rfb_recv_set_pixfmt_msg(struct rfb_softc *rc, int cfd)
{
 struct rfb_pixfmt_msg pixfmt_msg;

 (void)stream_read(cfd, ((void *)&pixfmt_msg)+1, sizeof(pixfmt_msg)-1);
}
