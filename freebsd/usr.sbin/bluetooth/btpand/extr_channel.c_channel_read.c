
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_9__ {int len; int buf; } ;
typedef TYPE_1__ packet_t ;
struct TYPE_10__ {int (* recv ) (TYPE_1__*) ;int mru; } ;
typedef TYPE_2__ channel_t ;


 int channel_close (TYPE_2__*) ;
 int channel_dispatch (TYPE_1__*) ;
 int log_debug (char*,int) ;
 int log_err (char*) ;
 TYPE_1__* packet_alloc (TYPE_2__*) ;
 int packet_free (TYPE_1__*) ;
 int read (int,int ,int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
channel_read(int fd, short ev, void *arg)
{
 channel_t *chan = arg;
 packet_t *pkt;
 ssize_t nr;

 pkt = packet_alloc(chan);
 if (pkt == ((void*)0)) {
  channel_close(chan);
  return;
 }

 nr = read(fd, pkt->buf, chan->mru);
 if (nr == -1) {
  log_err("channel read error: %m");
  packet_free(pkt);
  channel_close(chan);
  return;
 }
 if (nr == 0) {
  log_debug("(fd#%d) EOF", fd);
  packet_free(pkt);
  channel_close(chan);
  return;
 }
 pkt->len = nr;

 if (chan->recv(pkt) == 1)
  channel_dispatch(pkt);

 packet_free(pkt);
}
