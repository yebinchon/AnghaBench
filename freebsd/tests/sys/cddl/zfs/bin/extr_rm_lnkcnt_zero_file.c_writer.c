
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 scalar_t__ TRUE ;
 int close (int) ;
 int filebase ;
 int open (int ,int,int) ;
 int perror (char*) ;
 int write (int,char*,int) ;

__attribute__((used)) static void *
writer(void *a)
{
 int *fd = (int *)a;

 while (TRUE) {
  (void) close (*fd);
  *fd = open(filebase, O_APPEND | O_RDWR | O_CREAT, 0644);
  if (*fd < 0)
   perror("refreshing file");
  (void) write(*fd, "test\n", 5);
 }

 return (((void*)0));
}
