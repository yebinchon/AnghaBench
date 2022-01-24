#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  name; } ;
struct udpdevice {struct device dev; int /*<<< orphan*/  connected; } ;
struct stat {int st_mode; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_11__ {scalar_t__ necessity; } ;
struct TYPE_12__ {TYPE_5__ cd; } ;
struct TYPE_8__ {scalar_t__ openmode; } ;
struct TYPE_9__ {TYPE_2__ cfg; } ;
struct TYPE_10__ {TYPE_3__ lcp; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {char* full; } ;
struct physical {int fd; TYPE_6__ cfg; TYPE_4__ link; TYPE_1__ name; } ;

/* Variables and functions */
 scalar_t__ CD_DEFAULT ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  LogWARN ; 
 scalar_t__ OPEN_PASSIVE ; 
 int /*<<< orphan*/  PHYSICAL_FORCE_SYNC ; 
 int SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_TYPE ; 
 int S_IFSOCK ; 
 int /*<<< orphan*/  UDP_CONNECTED ; 
 int /*<<< orphan*/  UDP_MAYBEUNCONNECTED ; 
 int /*<<< orphan*/  baseudpdevice ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int,struct stat*) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct udpdevice* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct physical*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct udpdevice* FUNC11 (struct physical*,char*,char*) ; 

struct device *
FUNC12(struct physical *p)
{
  char *cp, *host, *port, *svc;
  struct udpdevice *dev;

  dev = NULL;
  if (p->fd < 0) {
    if ((cp = FUNC9(p->name.full, ':')) != NULL && !FUNC9(cp + 1, ':')) {
      *cp = '\0';
      host = p->name.full;
      port = cp + 1;
      svc = FUNC9(port, '/');
      if (svc && FUNC8(svc, "/udp")) {
        *cp = ':';
        return NULL;
      }
      if (svc) {
        p->fd--;     /* We own the device but maybe can't use it - change fd */
        *svc = '\0';
      }

      if (*host && *port)
        dev = FUNC11(p, host, port);

      *cp = ':';
      if (svc)
        *svc = '/';
    }
  } else {
    /* See if we're a connected udp socket */
    struct stat st;

    if (FUNC1(p->fd, &st) != -1 && (st.st_mode & S_IFSOCK)) {
      int type, sz;

      sz = sizeof type;
      if (FUNC3(p->fd, SOL_SOCKET, SO_TYPE, &type, &sz) == -1) {
        FUNC4(LogPHASE, "%s: Link is a closed socket !\n", p->link.name);
        FUNC0(p->fd);
        p->fd = -1;
        return NULL;
      }

      if (sz == sizeof type && type == SOCK_DGRAM) {
        struct sockaddr_in sock;
        struct sockaddr *sockp = (struct sockaddr *)&sock;

        if ((dev = FUNC5(sizeof *dev)) == NULL) {
          FUNC4(LogWARN, "%s: Cannot allocate a udp device: %s\n",
                     p->link.name, FUNC10(errno));
          return NULL;
        }

        if (FUNC2(p->fd, sockp, &sz) == 0) {
          FUNC4(LogPHASE, "%s: Link is a connected udp socket\n",
                     p->link.name);
          dev->connected = UDP_CONNECTED;
	} else {
          FUNC4(LogPHASE, "%s: Link is a disconnected udp socket\n",
                     p->link.name);

          dev->connected = UDP_MAYBEUNCONNECTED;

          if (p->link.lcp.cfg.openmode != OPEN_PASSIVE) {
            FUNC4(LogPHASE, "%s:   Changing openmode to PASSIVE\n",
                       p->link.name);
            p->link.lcp.cfg.openmode = OPEN_PASSIVE;
          }
        }
      }
    }
  }

  if (dev) {
    FUNC6(&dev->dev, &baseudpdevice, sizeof dev->dev);
    FUNC7(p, dev->dev.name, PHYSICAL_FORCE_SYNC);
    if (p->cfg.cd.necessity != CD_DEFAULT)
      FUNC4(LogWARN, "Carrier settings ignored\n");
    return &dev->dev;
  }

  return NULL;
}