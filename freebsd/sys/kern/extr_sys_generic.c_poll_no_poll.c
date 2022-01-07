
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POLLIN ;
 int POLLNVAL ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLSTANDARD ;
 int POLLWRNORM ;

int
poll_no_poll(int events)
{







 if (events & ~POLLSTANDARD)
  return (POLLNVAL);

 return (events & (POLLIN | POLLOUT | POLLRDNORM | POLLWRNORM));
}
