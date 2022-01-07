
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct servent {scalar_t__ s_port; } ;


 int AF_INET ;
 TYPE_1__ GetIpAddr (char*) ;
 scalar_t__ INADDR_NONE ;
 int LogPHASE ;
 int LogWARN ;
 int PF_INET ;
 int SOCK_STREAM ;
 int atoi (char*) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int errno ;
 struct servent* getservbyname (char*,char*) ;
 scalar_t__ htons (int ) ;
 int log_Printf (int ,char*,char const*,char*,...) ;
 int socket (int ,int ,int ) ;
 char* strerror (int ) ;

__attribute__((used)) static int
tcp_OpenConnection(const char *name, char *host, char *port)
{
  struct sockaddr_in dest;
  int sock;
  struct servent *sp;

  dest.sin_family = AF_INET;
  dest.sin_addr = GetIpAddr(host);
  if (dest.sin_addr.s_addr == INADDR_NONE) {
    log_Printf(LogWARN, "%s: %s: unknown host\n", name, host);
    return -2;
  }
  dest.sin_port = htons(atoi(port));
  if (dest.sin_port == 0) {
    sp = getservbyname(port, "tcp");
    if (sp)
      dest.sin_port = sp->s_port;
    else {
      log_Printf(LogWARN, "%s: %s: unknown service\n", name, port);
      return -2;
    }
  }
  log_Printf(LogPHASE, "%s: Connecting to %s:%s/tcp\n", name, host, port);

  sock = socket(PF_INET, SOCK_STREAM, 0);
  if (sock < 0)
    return -2;

  if (connect(sock, (struct sockaddr *)&dest, sizeof dest) < 0) {
    log_Printf(LogWARN, "%s: connect: %s\n", name, strerror(errno));
    close(sock);
    return -2;
  }

  return sock;
}
