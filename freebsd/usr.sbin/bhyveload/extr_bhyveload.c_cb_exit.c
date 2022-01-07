
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSAFLUSH ;
 int consout_fd ;
 int exit (int) ;
 int oldterm ;
 int tcsetattr (int ,int ,int *) ;

__attribute__((used)) static void
cb_exit(void *arg, int v)
{

 tcsetattr(consout_fd, TCSAFLUSH, &oldterm);
 exit(v);
}
