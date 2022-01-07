
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int free (int *) ;
 int * i_ptr ;
 scalar_t__ i_size ;
 int * i_womp ;
 int munmap (int *,scalar_t__) ;
 int ** tibuf ;
 int tifd ;
 int* tiline ;
 scalar_t__ tireclen ;
 int using_plan_a ;

void
re_input(void)
{
 if (using_plan_a) {
  free(i_ptr);
  i_ptr = ((void*)0);
  if (i_womp != ((void*)0)) {
   munmap(i_womp, i_size);
   i_womp = ((void*)0);
  }
  i_size = 0;
 } else {
  using_plan_a = 1;
  close(tifd);
  tifd = -1;
  free(tibuf[0]);
  free(tibuf[1]);
  tibuf[0] = tibuf[1] = ((void*)0);
  tiline[0] = tiline[1] = -1;
  tireclen = 0;
 }
}
