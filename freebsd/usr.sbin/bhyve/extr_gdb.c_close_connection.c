
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cur_comm ;
 int cur_fd ;
 int cur_resp ;
 int gdb_lock ;
 int gdb_resume_vcpus () ;
 int io_buffer_reset (int *) ;
 int mevent_delete (int *) ;
 int mevent_delete_close (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int * read_event ;
 int * write_event ;

__attribute__((used)) static void
close_connection(void)
{





 pthread_mutex_lock(&gdb_lock);
 mevent_delete(write_event);
 mevent_delete_close(read_event);
 write_event = ((void*)0);
 read_event = ((void*)0);
 io_buffer_reset(&cur_comm);
 io_buffer_reset(&cur_resp);
 cur_fd = -1;


 gdb_resume_vcpus();
 pthread_mutex_unlock(&gdb_lock);
}
