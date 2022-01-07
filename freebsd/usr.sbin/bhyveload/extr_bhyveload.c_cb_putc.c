
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int consout_fd ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
cb_putc(void *arg, int ch)
{
 char c = ch;

 (void) write(consout_fd, &c, 1);
}
