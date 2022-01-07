
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {int fd; } ;
struct radius {TYPE_1__ cx; } ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int TICKUNIT ;
 int radius_Continue (struct radius*,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;

void
radius_Flush(struct radius *r)
{
  struct timeval tv;
  fd_set s;

  while (r->cx.fd != -1) {
    FD_ZERO(&s);
    FD_SET(r->cx.fd, &s);
    tv.tv_sec = 0;
    tv.tv_usec = TICKUNIT;
    select(r->cx.fd + 1, &s, ((void*)0), ((void*)0), &tv);
    radius_Continue(r, 1);
  }
}
