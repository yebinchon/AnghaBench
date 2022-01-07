
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;
typedef int data ;


 int ECONNABORTED ;
 int ECONNRESET ;
 int ENETRESET ;
 int ENOTCONN ;
 int ENOTSOCK ;
 int ESHUTDOWN ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FIONREAD ;
 int MSG_PEEK ;
 int POLLERR ;
 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 int POLLRDBAND ;
 int POLLRDNORM ;
 int POLLWRBAND ;
 int POLLWRNORM ;
 int errno ;
 int ioctl (int,int ,int*) ;
 int recv (int,char*,int,int ) ;

__attribute__((used)) static int
compute_revents (int fd, int sought, fd_set *rfds, fd_set *wfds, fd_set *efds)
{
  int happened = 0;
  if (FD_ISSET (fd, rfds))
    {
      int r;
      int socket_errno;
      char data[64];
      r = recv (fd, data, sizeof (data), MSG_PEEK);
      socket_errno = (r < 0) ? errno : 0;

      if (r == 0)
 happened |= POLLHUP;



      else if (r > 0 || ( socket_errno == ENOTCONN))
 happened |= (POLLIN | POLLRDNORM) & sought;


      else if (socket_errno == ESHUTDOWN || socket_errno == ECONNRESET
        || socket_errno == ECONNABORTED || socket_errno == ENETRESET)
 happened |= POLLHUP;


      else if ( socket_errno == ENOTSOCK)
 happened |= (POLLIN | POLLRDNORM) & sought;

      else
 happened |= POLLERR;
    }

  if (FD_ISSET (fd, wfds))
    happened |= (POLLOUT | POLLWRNORM | POLLWRBAND) & sought;

  if (FD_ISSET (fd, efds))
    happened |= (POLLPRI | POLLRDBAND) & sought;

  return happened;
}
