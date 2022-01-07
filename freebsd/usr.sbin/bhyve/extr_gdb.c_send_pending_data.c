
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ len; } ;


 int close_connection () ;
 TYPE_1__ cur_resp ;
 int io_buffer_advance (TYPE_1__*,int) ;
 int io_buffer_head (TYPE_1__*) ;
 int mevent_disable (int ) ;
 int mevent_enable (int ) ;
 int warn (char*) ;
 int write (int,int ,scalar_t__) ;
 int write_event ;

__attribute__((used)) static void
send_pending_data(int fd)
{
 ssize_t nwritten;

 if (cur_resp.len == 0) {
  mevent_disable(write_event);
  return;
 }
 nwritten = write(fd, io_buffer_head(&cur_resp), cur_resp.len);
 if (nwritten == -1) {
  warn("Write to GDB socket failed");
  close_connection();
 } else {
  io_buffer_advance(&cur_resp, nwritten);
  if (cur_resp.len == 0)
   mevent_disable(write_event);
  else
   mevent_enable(write_event);
 }
}
