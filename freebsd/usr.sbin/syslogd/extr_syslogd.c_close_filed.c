
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filed {int f_file; int f_type; int fu_pipe_pid; int * fu_forw_addr; } ;







 int F_UNUSED ;
 int close (int) ;
 int freeaddrinfo (int *) ;

__attribute__((used)) static void
close_filed(struct filed *f)
{

 if (f == ((void*)0) || f->f_file == -1)
  return;

 switch (f->f_type) {
 case 130:
  if (f->fu_forw_addr != ((void*)0)) {
   freeaddrinfo(f->fu_forw_addr);
   f->fu_forw_addr = ((void*)0);
  }


 case 131:
 case 128:
 case 132:
  f->f_type = F_UNUSED;
  break;
 case 129:
  f->fu_pipe_pid = 0;
  break;
 }
 (void)close(f->f_file);
 f->f_file = -1;
}
