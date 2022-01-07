
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_state {scalar_t__ reset; } ;
struct dcons_port {int outfd; } ;
typedef int intmax_t ;


 int PAGE_SIZE ;
 int bzero (char*,int) ;
 int dwrite (struct dcons_state*,void*,int,scalar_t__) ;
 int snprintf (char*,int,char*,int ) ;
 int strlen (char*) ;
 int write (int ,char*,int ) ;

__attribute__((used)) static void
dconschat_reset_target(struct dcons_state *dc, struct dcons_port *p)
{
 char buf[PAGE_SIZE];
 if (dc->reset == 0)
  return;

 snprintf(buf, PAGE_SIZE,
     "\r\n[dconschat reset target(addr=0x%jx)...]\r\n",
     (intmax_t)dc->reset);
 write(p->outfd, buf, strlen(buf));
 bzero(&buf[0], PAGE_SIZE);
 dwrite(dc, (void *)buf, PAGE_SIZE, dc->reset);
}
