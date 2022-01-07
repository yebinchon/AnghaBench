
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfb_softc {int dummy; } ;
struct rfb_cuttext_msg {int length; } ;
typedef int ct_msg ;
typedef int buf ;


 int htonl (int) ;
 int stream_read (int,unsigned char*,int) ;

__attribute__((used)) static void
rfb_recv_cuttext_msg(struct rfb_softc *rc, int cfd)
{
 struct rfb_cuttext_msg ct_msg;
 unsigned char buf[32];
 int len;

 len = stream_read(cfd, ((void *)&ct_msg) + 1, sizeof(ct_msg) - 1);
 ct_msg.length = htonl(ct_msg.length);
 while (ct_msg.length > 0) {
  len = stream_read(cfd, buf, ct_msg.length > sizeof(buf) ?
   sizeof(buf) : ct_msg.length);
  ct_msg.length -= len;
 }
}
