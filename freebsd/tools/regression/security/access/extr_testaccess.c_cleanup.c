
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd_name; } ;


 TYPE_1__* fd_list ;
 int fd_list_count ;
 int perror (char*) ;
 int restoreprivilege () ;
 int unlink (int ) ;

int
cleanup(void)
{
 int i, error;

 error = restoreprivilege();
 if (error) {
  perror("restoreprivilege");
  return (error);
 }

 for (i = 0; i < fd_list_count; i++) {
  error = unlink(fd_list[i].fd_name);
  if (error)
   return (error);
 }

 return (0);
}
