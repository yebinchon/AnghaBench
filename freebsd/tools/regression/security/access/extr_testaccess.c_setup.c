
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd_group; int fd_owner; int fd_name; int fd_mode; } ;


 int O_CREAT ;
 int O_EXCL ;
 int chown (int ,int ,int ) ;
 int close (int) ;
 TYPE_1__* fd_list ;
 int fd_list_count ;
 int open (int ,int,int ) ;
 int perror (char*) ;

int
setup(void)
{
 int i, error;

 for (i = 0; i < fd_list_count; i++) {
  error = open(fd_list[i].fd_name, O_CREAT | O_EXCL, fd_list[i].fd_mode);
  if (error == -1) {
   perror("open");
   return (error);
  }
  close(error);
  error = chown(fd_list[i].fd_name, fd_list[i].fd_owner,
      fd_list[i].fd_group);
  if (error) {
   perror("chown");
   return (error);
  }
 }
 return (0);
}
