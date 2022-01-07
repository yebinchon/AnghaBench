
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct evdev_client {int ec_clock_id; } ;





 int microtime (struct timeval*) ;
 int microuptime (struct timeval*) ;

__attribute__((used)) static void
evdev_client_gettime(struct evdev_client *client, struct timeval *tv)
{

 switch (client->ec_clock_id) {
 case 130:




 case 129:
  microuptime(tv);
  break;

 case 128:
 default:
  microtime(tv);
  break;
 }
}
