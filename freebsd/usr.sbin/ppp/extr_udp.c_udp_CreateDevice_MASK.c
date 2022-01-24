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
struct TYPE_8__ {scalar_t__ s_addr; } ;
struct TYPE_6__ {scalar_t__ sin_port; TYPE_4__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct udpdevice {int /*<<< orphan*/  connected; TYPE_2__ sock; } ;
struct sockaddr {int dummy; } ;
struct servent {scalar_t__ s_port; } ;
struct TYPE_7__ {char* full; } ;
struct TYPE_5__ {char* name; } ;
struct physical {int fd; TYPE_3__ name; TYPE_1__ link; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 TYPE_4__ FUNC0 (char*) ; 
 scalar_t__ INADDR_NONE ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  UDP_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (struct udpdevice*) ; 
 struct servent* FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 
 struct udpdevice* FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct udpdevice *
FUNC11(struct physical *p, char *host, char *port)
{
  struct udpdevice *dev;
  struct servent *sp;

  if ((dev = FUNC8(sizeof *dev)) == NULL) {
    FUNC7(LogWARN, "%s: Cannot allocate a udp device: %s\n",
               p->link.name, FUNC10(errno));
    return NULL;
  }

  dev->sock.sin_family = AF_INET;
  dev->sock.sin_addr = FUNC0(host);
  if (dev->sock.sin_addr.s_addr == INADDR_NONE) {
    FUNC7(LogWARN, "%s: %s: unknown host\n", p->link.name, host);
    FUNC4(dev);
    return NULL;
  }
  dev->sock.sin_port = FUNC6(FUNC1(port));
  if (dev->sock.sin_port == 0) {
    sp = FUNC5(port, "udp");
    if (sp)
      dev->sock.sin_port = sp->s_port;
    else {
      FUNC7(LogWARN, "%s: %s: unknown service\n", p->link.name, port);
      FUNC4(dev);
      return NULL;
    }
  }

  FUNC7(LogPHASE, "%s: Connecting to %s:%s/udp\n", p->link.name,
             host, port);

  p->fd = FUNC9(PF_INET, SOCK_DGRAM, 0);
  if (p->fd >= 0) {
    FUNC7(LogDEBUG, "%s: Opened udp socket %s\n", p->link.name,
               p->name.full);
    if (FUNC3(p->fd, (struct sockaddr *)&dev->sock, sizeof dev->sock) == 0) {
      dev->connected = UDP_CONNECTED;
      return dev;
    } else
      FUNC7(LogWARN, "%s: connect: %s\n", p->name.full, FUNC10(errno));
  } else
    FUNC7(LogWARN, "%s: socket: %s\n", p->name.full, FUNC10(errno));

  FUNC2(p->fd);
  p->fd = -1;
  FUNC4(dev);

  return NULL;
}