
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfb_srvr_updt_msg {int encoding; void* height; void* width; void* y; void* x; void* numrects; scalar_t__ pad; scalar_t__ type; } ;
struct rfb_srvr_rect_hdr {int encoding; void* height; void* width; void* y; void* x; void* numrects; scalar_t__ pad; scalar_t__ type; } ;
struct rfb_softc {int width; int height; } ;


 int RFB_ENCODING_RESIZE ;
 int htonl (int ) ;
 void* htons (int) ;
 int stream_write (int,struct rfb_srvr_updt_msg*,int) ;

__attribute__((used)) static void
rfb_send_resize_update_msg(struct rfb_softc *rc, int cfd)
{
 struct rfb_srvr_updt_msg supdt_msg;
 struct rfb_srvr_rect_hdr srect_hdr;


 supdt_msg.type = 0;
 supdt_msg.pad = 0;
 supdt_msg.numrects = htons(1);
 stream_write(cfd, &supdt_msg, sizeof(struct rfb_srvr_updt_msg));


 srect_hdr.x = htons(0);
 srect_hdr.y = htons(0);
 srect_hdr.width = htons(rc->width);
 srect_hdr.height = htons(rc->height);
 srect_hdr.encoding = htonl(RFB_ENCODING_RESIZE);
 stream_write(cfd, &srect_hdr, sizeof(struct rfb_srvr_rect_hdr));
}
