
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ev_type { ____Placeholder_ev_type } ev_type ;


 int send_pending_data (int) ;

__attribute__((used)) static void
gdb_writable(int fd, enum ev_type event, void *arg)
{

 send_pending_data(fd);
}
