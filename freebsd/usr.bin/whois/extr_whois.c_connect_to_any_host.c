
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; int revents; } ;
struct addrinfo {int ai_socktype; struct addrinfo* ai_next; int ai_addrlen; int ai_addr; int ai_protocol; int ai_family; } ;
typedef size_t nfds_t ;


 scalar_t__ EINPROGRESS ;
 scalar_t__ ETIMEDOUT ;
 int EX_OSERR ;
 int INFTIM ;
 int POLLERR ;
 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 int SOCK_NONBLOCK ;
 struct pollfd* calloc (size_t,int) ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 int free (struct pollfd*) ;
 int poll (struct pollfd*,size_t,int) ;
 int socket (int ,int,int ) ;

__attribute__((used)) static int
connect_to_any_host(struct addrinfo *hostres)
{
 struct addrinfo *res;
 nfds_t i, j;
 size_t count;
 struct pollfd *fds;
 int timeout = 180, s = -1;

 for (res = hostres, count = 0; res; res = res->ai_next)
  count++;
 fds = calloc(count, sizeof(*fds));
 if (fds == ((void*)0))
  err(EX_OSERR, "calloc()");





 count = i = 0;
 for (res = hostres; res != ((void*)0); res = res->ai_next) {
  s = socket(res->ai_family, res->ai_socktype | SOCK_NONBLOCK,
      res->ai_protocol);
  if (s < 0)
   continue;
  if (connect(s, res->ai_addr, res->ai_addrlen) < 0) {
   if (errno == EINPROGRESS) {

    fds[i].fd = s;
    fds[i].events = POLLERR | POLLHUP |
      POLLIN | POLLOUT;




    s = -1;
    count++;
    i++;
   } else {
    close(s);
    s = -1;






    if (count == 0)
     continue;
   }
  } else
   goto done;





  if (res->ai_next == ((void*)0))
   timeout = INFTIM;







  do {
   int n;

   n = poll(fds, i, timeout);
   if (n == 0) {





    if (timeout >= 3)
     timeout >>= 1;

    break;
   } else if (n < 0) {




    s = -1;
    goto done;
   }




   for (j = 0; j < i; j++) {
    if (fds[j].fd == -1 || fds[j].events == 0 ||
        fds[j].revents == 0)
     continue;
    if (fds[j].revents & ~(POLLIN | POLLOUT)) {
     close(fds[j].fd);
     fds[j].fd = -1;
     fds[j].events = 0;
     count--;
     continue;
    } else if (fds[j].revents & (POLLIN | POLLOUT)) {

     s = fds[j].fd;
     fds[j].fd = -1;

     goto done;
    }

   }
  } while (timeout == INFTIM && count != 0);
 }


 s = -1;
 if (count == 0)
  errno = ETIMEDOUT;

done:

 for (j = 0; j < i; j++)
  if (fds[j].fd != -1)
   close(fds[j].fd);
 free(fds);
 return (s);
}
