
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfb_softc {int dummy; } ;
struct rfb_ptr_msg {int y; int x; int button; } ;
typedef int ptr_msg ;


 int console_ptr_event (int ,int ,int ) ;
 int htons (int ) ;
 int stream_read (int,void*,int) ;

__attribute__((used)) static void
rfb_recv_ptr_msg(struct rfb_softc *rc, int cfd)
{
 struct rfb_ptr_msg ptr_msg;

 (void)stream_read(cfd, ((void *)&ptr_msg) + 1, sizeof(ptr_msg) - 1);

 console_ptr_event(ptr_msg.button, htons(ptr_msg.x), htons(ptr_msg.y));
}
