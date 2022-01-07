
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int updt_msg ;
struct rfb_updt_msg {scalar_t__ x; scalar_t__ y; scalar_t__ width; scalar_t__ height; } ;
struct rfb_softc {scalar_t__ width; scalar_t__ height; scalar_t__ enc_resize_ok; } ;
struct bhyvegc_image {scalar_t__ width; scalar_t__ height; } ;


 struct bhyvegc_image* console_get_image () ;
 int console_refresh () ;
 void* htons (scalar_t__) ;
 int rfb_send_resize_update_msg (struct rfb_softc*,int) ;
 int rfb_send_screen (struct rfb_softc*,int,int) ;
 int stream_read (int,void*,int) ;

__attribute__((used)) static void
rfb_recv_update_msg(struct rfb_softc *rc, int cfd, int discardonly)
{
 struct rfb_updt_msg updt_msg;
 struct bhyvegc_image *gc_image;

 (void)stream_read(cfd, ((void *)&updt_msg) + 1 , sizeof(updt_msg) - 1);

 console_refresh();
 gc_image = console_get_image();

 updt_msg.x = htons(updt_msg.x);
 updt_msg.y = htons(updt_msg.y);
 updt_msg.width = htons(updt_msg.width);
 updt_msg.height = htons(updt_msg.height);

 if (updt_msg.width != gc_image->width ||
     updt_msg.height != gc_image->height) {
  rc->width = gc_image->width;
  rc->height = gc_image->height;
  if (rc->enc_resize_ok)
   rfb_send_resize_update_msg(rc, cfd);
 }

 if (discardonly)
  return;

 rfb_send_screen(rc, cfd, 1);
}
