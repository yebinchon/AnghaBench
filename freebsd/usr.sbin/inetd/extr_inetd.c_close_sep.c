
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servtab {int se_fd; scalar_t__ se_numchild; scalar_t__ se_count; } ;


 scalar_t__ FD_ISSET (int,int *) ;
 int allsock ;
 int close (int) ;
 int disable (struct servtab*) ;

__attribute__((used)) static void
close_sep(struct servtab *sep)
{
 if (sep->se_fd >= 0) {
  if (FD_ISSET(sep->se_fd, &allsock))
   disable(sep);
  (void) close(sep->se_fd);
  sep->se_fd = -1;
 }
 sep->se_count = 0;
 sep->se_numchild = 0;
}
