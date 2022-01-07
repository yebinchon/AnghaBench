
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct pollfd {int fd; int events; int revents; } ;
typedef int nfds_t ;
typedef int fd_set ;
struct TYPE_3__ {int lNetworkEvents; } ;
typedef TYPE_1__ WSANETWORKEVENTS ;
typedef scalar_t__ ULONGLONG ;
typedef int SOCKET ;
typedef int MSG ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int * CreateEvent (int *,scalar_t__,scalar_t__,int *) ;
 int DispatchMessage (int *) ;
 int EFAULT ;
 int EINVAL ;
 int EOVERFLOW ;
 scalar_t__ FALSE ;
 int FD_ACCEPT ;
 int FD_CLOSE ;
 int FD_CONNECT ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_OOB ;
 int FD_READ ;
 int FD_SET (int,int *) ;
 int FD_SETSIZE ;
 int FD_WRITE ;
 int FD_ZERO (int *) ;
 scalar_t__ GetTickCount64 () ;
 scalar_t__ INFINITE ;
 int INFTIM ;
 scalar_t__ IsSocketHandle (int *) ;
 scalar_t__ MsgWaitForMultipleObjects (scalar_t__,int **,scalar_t__,scalar_t__,int ) ;
 int OPEN_MAX ;
 int PM_REMOVE ;
 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 int POLLRDBAND ;
 int POLLRDNORM ;
 int POLLWRBAND ;
 int POLLWRNORM ;
 scalar_t__ PeekMessage (int *,int *,int ,int ,int ) ;
 int QS_ALLINPUT ;
 int SleepEx (int,scalar_t__) ;
 scalar_t__ TRUE ;
 int TranslateMessage (int *) ;
 scalar_t__ WAIT_OBJECT_0 ;
 int WSAEnumNetworkEvents (int,int *,TYPE_1__*) ;
 int WSAEventSelect (int,int *,int) ;
 int _SC_OPEN_MAX ;
 scalar_t__ _get_osfhandle (int) ;
 int assert (int ) ;
 int compute_revents (int,int,int *,int *,int *) ;
 int errno ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int sysconf (int ) ;
 void* win32_compute_revents (int *,int*) ;
 int win32_compute_revents_socket (int,int,int) ;

int
poll (struct pollfd *pfd, nfds_t nfd, int timeout)
{

  fd_set rfds, wfds, efds;
  struct timeval tv;
  struct timeval *ptv;
  int maxfd, rc;
  nfds_t i;
  if (!pfd && nfd)
    {
      errno = EFAULT;
      return -1;
    }


  if (timeout == 0)
    {
      ptv = &tv;
      ptv->tv_sec = 0;
      ptv->tv_usec = 0;
    }
  else if (timeout > 0)
    {
      ptv = &tv;
      ptv->tv_sec = timeout / 1000;
      ptv->tv_usec = (timeout % 1000) * 1000;
    }
  else if (timeout == INFTIM)

    ptv = ((void*)0);
  else
    {
      errno = EINVAL;
      return -1;
    }


  maxfd = -1;
  FD_ZERO (&rfds);
  FD_ZERO (&wfds);
  FD_ZERO (&efds);
  for (i = 0; i < nfd; i++)
    {
      if (pfd[i].fd < 0)
 continue;

      if (pfd[i].events & (POLLIN | POLLRDNORM))
 FD_SET (pfd[i].fd, &rfds);




      if (pfd[i].events & (POLLOUT | POLLWRNORM | POLLWRBAND))
 FD_SET (pfd[i].fd, &wfds);
      if (pfd[i].events & (POLLPRI | POLLRDBAND))
 FD_SET (pfd[i].fd, &efds);
      if (pfd[i].fd >= maxfd
   && (pfd[i].events & (POLLIN | POLLOUT | POLLPRI
          | POLLRDNORM | POLLRDBAND
          | POLLWRNORM | POLLWRBAND)))
 {
   maxfd = pfd[i].fd;
   if (maxfd > FD_SETSIZE)
     {
       errno = EOVERFLOW;
       return -1;
     }
 }
    }


  rc = select (maxfd + 1, &rfds, &wfds, &efds, ptv);
  if (rc < 0)
    return rc;


  rc = 0;
  for (i = 0; i < nfd; i++)
    if (pfd[i].fd < 0)
      pfd[i].revents = 0;
    else
      {
 int happened = compute_revents (pfd[i].fd, pfd[i].events,
     &rfds, &wfds, &efds);
 if (happened)
   {
     pfd[i].revents = happened;
     rc++;
   }
 else
   {
     pfd[i].revents = 0;
   }
      }

  return rc;
}
