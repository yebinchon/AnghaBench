
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct bundle {int dummy; } ;
typedef scalar_t__ mode_t ;
typedef enum server_stat { ____Placeholder_server_stat } server_stat ;
struct TYPE_3__ {char* sockname; scalar_t__ mask; scalar_t__ port; } ;
struct TYPE_4__ {int fd; TYPE_1__ cfg; } ;


 int AF_LOCAL ;
 int LogERROR ;
 int LogPHASE ;
 int LogWARN ;
 int PF_LOCAL ;
 int SERVER_FAILED ;
 int SERVER_INVALID ;
 int SERVER_OK ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int errno ;
 scalar_t__ listen (int,int) ;
 int log_Printf (int ,char*,...) ;
 int memset (struct sockaddr_un*,char,int) ;
 TYPE_2__ server ;
 int server_Close (struct bundle*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int strcmp (char*,char const*) ;
 int strcpy (int ,char const*) ;
 char const* strerror (int ) ;
 int strlen (char const*) ;
 int strncpy (char*,int ,int) ;
 scalar_t__ umask (scalar_t__) ;
 int unlink (char const*) ;

enum server_stat
server_LocalOpen(struct bundle *bundle, const char *name, mode_t mask)
{
  struct sockaddr_un ifsun;
  mode_t oldmask;
  int s;

  oldmask = (mode_t)-1;

  if (server.cfg.sockname[0] != '\0' && !strcmp(server.cfg.sockname, name))
    server_Close(bundle);

  memset(&ifsun, '\0', sizeof ifsun);
  ifsun.sun_len = strlen(name);
  if (ifsun.sun_len > sizeof ifsun.sun_path - 1) {
    log_Printf(LogERROR, "Local: %s: Path too long\n", name);
    return SERVER_INVALID;
  }
  ifsun.sun_family = AF_LOCAL;
  strcpy(ifsun.sun_path, name);

  s = socket(PF_LOCAL, SOCK_STREAM, 0);
  if (s < 0) {
    log_Printf(LogERROR, "Local: socket: %s\n", strerror(errno));
    goto failed;
  }
  setsockopt(s, SOL_SOCKET, SO_REUSEADDR, &s, sizeof s);
  if (mask != (mode_t)-1)
    oldmask = umask(mask);
  if (bind(s, (struct sockaddr *)&ifsun, sizeof ifsun) < 0) {
    if (mask != (mode_t)-1)
      umask(oldmask);
    log_Printf(LogWARN, "Local: bind: %s\n", strerror(errno));
    close(s);
    goto failed;
  }
  if (mask != (mode_t)-1)
    umask(oldmask);
  if (listen(s, 5) != 0) {
    log_Printf(LogERROR, "Local: Unable to listen to socket -"
               " BUNDLE overload?\n");
    close(s);
    unlink(name);
    goto failed;
  }
  server_Close(bundle);
  server.fd = s;
  server.cfg.port = 0;
  strncpy(server.cfg.sockname, ifsun.sun_path, sizeof server.cfg.sockname - 1);
  server.cfg.sockname[sizeof server.cfg.sockname - 1] = '\0';
  server.cfg.mask = mask;
  log_Printf(LogPHASE, "Listening at local socket %s.\n", name);

  return SERVER_OK;

failed:
  if (server.fd == -1) {
    server.fd = -1;
    server.cfg.port = 0;
    strncpy(server.cfg.sockname, ifsun.sun_path,
            sizeof server.cfg.sockname - 1);
    server.cfg.sockname[sizeof server.cfg.sockname - 1] = '\0';
    server.cfg.mask = mask;
  }
  return SERVER_FAILED;
}
