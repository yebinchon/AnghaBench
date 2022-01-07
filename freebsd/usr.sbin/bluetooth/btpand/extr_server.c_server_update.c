
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UINT8_MAX ;
 int log_debug (char*,int) ;
 int log_info (char*,scalar_t__,int) ;
 scalar_t__ server_avail ;
 int server_close () ;
 int server_fd ;
 int server_limit ;
 int server_open () ;
 int server_register () ;
 scalar_t__ service_name ;

void
server_update(int count)
{

 if (server_limit == 0)
  return;

 log_debug("count %d", count);

 server_avail = UINT8_MAX - (count - 1) * UINT8_MAX / server_limit;
 log_info("Service Availability: %d/%d", server_avail, UINT8_MAX);

 if (server_avail == 0 && server_fd != -1)
  server_close();

 if (server_avail > 0 && server_fd == -1)
  server_open();

 if (service_name)
  server_register();
}
