#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_mode; } ;
struct sockaddr_in {scalar_t__ sin_family; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_7__ {scalar_t__ necessity; } ;
struct TYPE_8__ {TYPE_3__ cd; } ;
struct TYPE_6__ {char* full; char* base; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct physical {int fd; TYPE_4__ cfg; TYPE_2__ name; TYPE_1__ link; } ;
struct device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ CD_DEFAULT ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  PHYSICAL_FORCE_ASYNC ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_TYPE ; 
 int S_IFSOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct stat*) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct physical*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,int) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 char* FUNC10 (char*,char) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 struct device tcpdevice ; 

struct device *
FUNC12(struct physical *p)
{
  char *cp, *host, *port, *svc;

  if (p->fd < 0) {
    if ((cp = FUNC10(p->name.full, ':')) != NULL && !FUNC10(cp + 1, ':')) {
      *cp = '\0';
      host = p->name.full;
      port = cp + 1;
      svc = FUNC10(port, '/');
      if (svc && FUNC9(svc, "/tcp")) {
        *cp = ':';
        return 0;
      }
      if (svc) {
        p->fd--;     /* We own the device but maybe can't use it - change fd */
        *svc = '\0';
      }
      if (*host && *port) {
        p->fd = FUNC11(p->link.name, host, port);
        *cp = ':';
        if (svc)
          *svc = '/';
        if (p->fd >= 0)
          FUNC5(LogDEBUG, "%s: Opened tcp socket %s\n", p->link.name,
                     p->name.full);
      } else {
        if (svc)
          *svc = '/';
        *cp = ':';
      }
    }
  }

  if (p->fd >= 0) {
    /* See if we're a tcp socket */
    struct stat st;

    if (FUNC1(p->fd, &st) != -1 && (st.st_mode & S_IFSOCK)) {
      int type, sz;

      sz = sizeof type;
      if (FUNC3(p->fd, SOL_SOCKET, SO_TYPE, &type, &sz) == -1) {
        FUNC5(LogPHASE, "%s: Link is a closed socket !\n", p->link.name);
        FUNC0(p->fd);
        p->fd = -1;
        return NULL;
      }

      if (sz == sizeof type && type == SOCK_STREAM) {
        struct sockaddr_in sock;
        struct sockaddr *sockp = (struct sockaddr *)&sock;

        if (*p->name.full == '\0') {
          sz = sizeof sock;
          if (FUNC2(p->fd, sockp, &sz) != 0 ||
              sz != sizeof(struct sockaddr_in) || sock.sin_family != AF_INET) {
            FUNC5(LogDEBUG, "%s: Link is SOCK_STREAM, but not inet\n",
                       p->link.name);
            return NULL;
          }

          FUNC5(LogPHASE, "%s: Link is a tcp socket\n", p->link.name);

          FUNC8(p->name.full, sizeof p->name.full, "%s:%d/tcp",
                   FUNC4(sock.sin_addr), FUNC6(sock.sin_port));
          p->name.base = p->name.full;
        }
        FUNC7(p, tcpdevice.name, PHYSICAL_FORCE_ASYNC);
        if (p->cfg.cd.necessity != CD_DEFAULT)
          FUNC5(LogWARN, "Carrier settings ignored\n");
        return &tcpdevice;
      }
    }
  }

  return NULL;
}