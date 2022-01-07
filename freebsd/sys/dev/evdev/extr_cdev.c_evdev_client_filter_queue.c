
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct input_event {scalar_t__ type; scalar_t__ code; } ;
struct evdev_client {size_t ec_buffer_head; size_t ec_buffer_tail; size_t ec_buffer_size; size_t ec_buffer_ready; struct input_event* ec_buffer; } ;


 int EVDEV_CLIENT_LOCKQ (struct evdev_client*) ;
 int EVDEV_CLIENT_UNLOCKQ (struct evdev_client*) ;
 scalar_t__ EV_SYN ;
 scalar_t__ SYN_REPORT ;
 int memcpy (struct input_event*,struct input_event*,int) ;

__attribute__((used)) static void
evdev_client_filter_queue(struct evdev_client *client, uint16_t type)
{
 struct input_event *event;
 size_t head, tail, count, i;
 bool last_was_syn = 0;

 EVDEV_CLIENT_LOCKQ(client);

 i = head = client->ec_buffer_head;
 tail = client->ec_buffer_tail;
 count = client->ec_buffer_size;
 client->ec_buffer_ready = client->ec_buffer_tail;

 while (i != client->ec_buffer_tail) {
  event = &client->ec_buffer[i];
  i = (i + 1) % count;


  if (event->type == type)
   continue;


  if (event->type == EV_SYN && event->code == SYN_REPORT) {
   if (last_was_syn)
    continue;
   else
    client->ec_buffer_ready = (tail + 1) % count;
  }


  memcpy(&client->ec_buffer[tail], event,
      sizeof(struct input_event));

  last_was_syn = (event->type == EV_SYN &&
      event->code == SYN_REPORT);

  tail = (tail + 1) % count;
 }

 client->ec_buffer_head = i;
 client->ec_buffer_tail = tail;

 EVDEV_CLIENT_UNLOCKQ(client);
}
