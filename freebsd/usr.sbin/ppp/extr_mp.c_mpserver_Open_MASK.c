#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int class; int len; scalar_t__ address; } ;
struct peerid {char* authname; TYPE_1__ enddisc; } ;
struct TYPE_5__ {int sun_len; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct mpserver {int fd; TYPE_2__ socket; } ;
typedef  int mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 scalar_t__ EADDRINUSE ; 
 scalar_t__ ECONNREFUSED ; 
 scalar_t__ FUNC0 (int,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogALERT ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogPHASE ; 
 int MPSERVER_CONNECTED ; 
 int MPSERVER_FAILED ; 
 int MPSERVER_LISTENING ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 char* _PATH_VARRUN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct mpserver*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (int) ; 

int
FUNC10(struct mpserver *s, struct peerid *peer)
{
  int f, l;
  mode_t mask;

  if (s->fd != -1) {
    FUNC4(LogALERT, "Internal error !  mpserver already open\n");
    FUNC5(s);
  }

  l = FUNC7(s->socket.sun_path, sizeof s->socket.sun_path, "%sppp-%s-%02x-",
               _PATH_VARRUN, peer->authname, peer->enddisc.class);
  if (l < 0) {
    FUNC4(LogERROR, "mpserver: snprintf(): %s\n", FUNC8(errno));
    return MPSERVER_FAILED;
  }

  for (f = 0;
       f < peer->enddisc.len && (size_t)l < sizeof s->socket.sun_path - 2;
       f++) {
    FUNC7(s->socket.sun_path + l, sizeof s->socket.sun_path - l,
             "%02x", *(u_char *)(peer->enddisc.address+f));
    l += 2;
  }

  s->socket.sun_family = AF_LOCAL;
  s->socket.sun_len = sizeof s->socket;
  s->fd = FUNC2(PF_LOCAL, SOCK_DGRAM, 0);
  if (s->fd < 0) {
    FUNC4(LogERROR, "mpserver: socket(): %s\n", FUNC8(errno));
    return MPSERVER_FAILED;
  }

  FUNC6(s->fd, SOL_SOCKET, SO_REUSEADDR, (struct sockaddr *)&s->socket,
             sizeof s->socket);
  mask = FUNC9(0177);

  /*
   * Try to bind the socket.  If we succeed we play server, if we fail
   * we connect() and hand the link off.
   */

  if (FUNC0(s->fd, &s->socket) < 0) {
    if (errno != EADDRINUSE) {
      FUNC4(LogPHASE, "mpserver: can't create bundle socket %s (%s)\n",
                s->socket.sun_path, FUNC8(errno));
      FUNC9(mask);
      FUNC3(s->fd);
      s->fd = -1;
      return MPSERVER_FAILED;
    }

    /* So we're the sender */
    FUNC9(mask);
    if (FUNC1(s->fd, &s->socket) < 0) {
      FUNC4(LogPHASE, "mpserver: can't connect to bundle socket %s (%s)\n",
                s->socket.sun_path, FUNC8(errno));
      if (errno == ECONNREFUSED)
        FUNC4(LogPHASE, "          The previous server died badly !\n");
      FUNC3(s->fd);
      s->fd = -1;
      return MPSERVER_FAILED;
    }

    /* Donate our link to the other guy */
    return MPSERVER_CONNECTED;
  }

  return MPSERVER_LISTENING;
}