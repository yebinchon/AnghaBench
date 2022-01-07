
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sun ;
struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int c ;


 int AF_UNIX ;
 int ITERATIONS ;
 int PF_UNIX ;
 int SOCK_STREAM ;
 int bzero (struct sockaddr_un*,int) ;
 int close (int) ;
 int sendto (int,char*,int,int ,struct sockaddr*,int) ;
 int socket (int ,int ,int ) ;
 int socket_path ;
 int strcpy (int ,int ) ;
 int warn (char*) ;

__attribute__((used)) static void
stream_client(void)
{
 struct sockaddr_un sun;
 ssize_t len;
 char c = 0;
 int fd, i;

 bzero(&sun, sizeof(sun));
 sun.sun_len = sizeof(sun);
 sun.sun_family = AF_UNIX;
 strcpy(sun.sun_path, socket_path);
 for (i = 0; i < ITERATIONS; i++) {
  fd = socket(PF_UNIX, SOCK_STREAM, 0);
  if (fd < 0) {
   warn("stream_client: socket");
   return;
  }
  len = sendto(fd, &c, sizeof(c), 0, (struct sockaddr *)&sun,
      sizeof(sun));
  if (len < 0)
   warn("stream_client: sendto");
  close(fd);
 }
}
