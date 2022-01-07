
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int svc_getreq_common (int) ;
 int yp_disable_events () ;
 int yp_enable_events () ;

void
yp_fd_event(int fd, short event, void *p)
{
 svc_getreq_common(fd);
 yp_disable_events();
 yp_enable_events();
}
