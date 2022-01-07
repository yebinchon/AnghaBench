
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int optval ;
typedef enum ev_type { ____Placeholder_ev_type } ev_type ;


 int EVF_READ ;
 int EVF_WRITE ;
 int SOCK_NONBLOCK ;
 int SOL_SOCKET ;
 int SO_NOSIGPIPE ;
 int accept4 (int,int *,int *,int ) ;
 int close (int) ;
 int cur_fd ;
 scalar_t__ cur_vcpu ;
 int err (int,char*) ;
 int first_stop ;
 int gdb_lock ;
 int gdb_readable ;
 int gdb_suspend_vcpus () ;
 int gdb_writable ;
 void* mevent_add (int,int ,int ,int *) ;
 int mevent_delete_close (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int * read_event ;
 int setsockopt (int,int ,int ,int*,int) ;
 int stepping_vcpu ;
 int stop_pending ;
 int stopped_vcpu ;
 int warn (char*) ;
 int warnx (char*) ;
 int * write_event ;

__attribute__((used)) static void
new_connection(int fd, enum ev_type event, void *arg)
{
 int optval, s;

 s = accept4(fd, ((void*)0), ((void*)0), SOCK_NONBLOCK);
 if (s == -1) {
  if (arg != ((void*)0))
   err(1, "Failed accepting initial GDB connection");


  return;
 }

 optval = 1;
 if (setsockopt(s, SOL_SOCKET, SO_NOSIGPIPE, &optval, sizeof(optval)) ==
     -1) {
  warn("Failed to disable SIGPIPE for GDB connection");
  close(s);
  return;
 }

 pthread_mutex_lock(&gdb_lock);
 if (cur_fd != -1) {
  close(s);
  warnx("Ignoring additional GDB connection.");
 }

 read_event = mevent_add(s, EVF_READ, gdb_readable, ((void*)0));
 if (read_event == ((void*)0)) {
  if (arg != ((void*)0))
   err(1, "Failed to setup initial GDB connection");
  pthread_mutex_unlock(&gdb_lock);
  return;
 }
 write_event = mevent_add(s, EVF_WRITE, gdb_writable, ((void*)0));
 if (write_event == ((void*)0)) {
  if (arg != ((void*)0))
   err(1, "Failed to setup initial GDB connection");
  mevent_delete_close(read_event);
  read_event = ((void*)0);
 }

 cur_fd = s;
 cur_vcpu = 0;
 stepping_vcpu = -1;
 stopped_vcpu = -1;
 stop_pending = 0;


 first_stop = 1;
 gdb_suspend_vcpus();
 pthread_mutex_unlock(&gdb_lock);
}
