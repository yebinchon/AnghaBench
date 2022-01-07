
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef int ng_hci_event_pkt_t ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 int ERROR ;
 scalar_t__ ETIMEDOUT ;
 int FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int OK ;
 int assert (int) ;
 scalar_t__ errno ;
 int recv (int,char*,int,int ) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int timeout ;

int
hci_recv(int s, char *buffer, int *size)
{
 struct timeval tv;
 fd_set rfd;
 int n;

 assert(buffer != ((void*)0));
 assert(size != ((void*)0));
 assert(*size > sizeof(ng_hci_event_pkt_t));

again:
 FD_ZERO(&rfd);
 FD_SET(s, &rfd);

 tv.tv_sec = timeout;
 tv.tv_usec = 0;

 n = select(s + 1, &rfd, ((void*)0), ((void*)0), &tv);
 if (n <= 0) {
  if (n < 0) {
   if (errno == EINTR)
    goto again;
  } else
   errno = ETIMEDOUT;

  return (ERROR);
 }

 assert(FD_ISSET(s, &rfd));

 n = recv(s, buffer, *size, 0);
 if (n < 0)
  return (ERROR);

 *size = n;

 return (OK);
}
