
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfb_softc {int dummy; } ;
struct rfb_key_msg {int code; int down; } ;
typedef int key_msg ;


 int console_key_event (int ,int ) ;
 int htonl (int ) ;
 int stream_read (int,void*,int) ;

__attribute__((used)) static void
rfb_recv_key_msg(struct rfb_softc *rc, int cfd)
{
 struct rfb_key_msg key_msg;

 (void)stream_read(cfd, ((void *)&key_msg) + 1, sizeof(key_msg) - 1);

 console_key_event(key_msg.down, htonl(key_msg.code));
}
