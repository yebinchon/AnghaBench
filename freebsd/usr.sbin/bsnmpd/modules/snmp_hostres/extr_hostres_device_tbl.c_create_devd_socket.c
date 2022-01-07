
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int devd_addr ;


 int LOG_ERR ;
 int PATH_DEVD_PIPE ;
 int PF_LOCAL ;
 int SOCK_STREAM ;
 int bzero (struct sockaddr_un*,int) ;
 scalar_t__ close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,int ,int) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static int
create_devd_socket(void)
{
 int d_sock;
  struct sockaddr_un devd_addr;

  bzero(&devd_addr, sizeof(struct sockaddr_un));

  if ((d_sock = socket(PF_LOCAL, SOCK_STREAM, 0)) < 0) {
   syslog(LOG_ERR, "Failed to create the socket for %s: %m",
      PATH_DEVD_PIPE);
   return (-1);
  }

  devd_addr.sun_family = PF_LOCAL;
 devd_addr.sun_len = sizeof(devd_addr);
  strlcpy(devd_addr.sun_path, PATH_DEVD_PIPE,
     sizeof(devd_addr.sun_path) - 1);

  if (connect(d_sock, (struct sockaddr *)&devd_addr,
     sizeof(devd_addr)) == -1) {
   syslog(LOG_ERR,"Failed to connect socket for %s: %m",
      PATH_DEVD_PIPE);
   if (close(d_sock) < 0 )
    syslog(LOG_ERR,"Failed to close socket for %s: %m",
       PATH_DEVD_PIPE);
  return (-1);
  }

  return (d_sock);
}
