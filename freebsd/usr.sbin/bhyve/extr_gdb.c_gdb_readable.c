
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
typedef enum ev_type { ____Placeholder_ev_type } ev_type ;
struct TYPE_5__ {int len; } ;


 scalar_t__ EAGAIN ;
 int FIONREAD ;
 int assert (int) ;
 int check_command (int) ;
 int close_connection () ;
 TYPE_1__ cur_comm ;
 scalar_t__ errno ;
 int gdb_lock ;
 int io_buffer_avail (TYPE_1__*) ;
 int io_buffer_grow (TYPE_1__*,int) ;
 int io_buffer_tail (TYPE_1__*) ;
 int ioctl (int,int ,int*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int read (int,int ,int) ;
 int warn (char*) ;

__attribute__((used)) static void
gdb_readable(int fd, enum ev_type event, void *arg)
{
 ssize_t nread;
 int pending;

 if (ioctl(fd, FIONREAD, &pending) == -1) {
  warn("FIONREAD on GDB socket");
  return;
 }





 if (pending == 0)
  pending = 1;


 io_buffer_grow(&cur_comm, pending);
 assert(io_buffer_avail(&cur_comm) >= pending);

 nread = read(fd, io_buffer_tail(&cur_comm), io_buffer_avail(&cur_comm));
 if (nread == 0) {
  close_connection();
 } else if (nread == -1) {
  if (errno == EAGAIN)
   return;

  warn("Read from GDB socket");
  close_connection();
 } else {
  cur_comm.len += nread;
  pthread_mutex_lock(&gdb_lock);
  check_command(fd);
  pthread_mutex_unlock(&gdb_lock);
 }
}
