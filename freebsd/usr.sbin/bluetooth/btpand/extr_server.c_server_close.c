
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int event_del (int *) ;
 int log_info (char*) ;
 int server_ev ;
 int server_fd ;

__attribute__((used)) static void
server_close(void)
{

 event_del(&server_ev);
 close(server_fd);
 server_fd = -1;

 log_info("server socket closed");
}
