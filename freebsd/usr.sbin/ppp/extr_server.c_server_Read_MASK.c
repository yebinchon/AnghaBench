#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {scalar_t__ sa_len; int sa_family; } ;
struct TYPE_3__ {int /*<<< orphan*/  sockname; } ;
struct server {scalar_t__ fd; TYPE_1__ cfg; } ;
struct TYPE_4__ {char* type; char* from; } ;
struct prompt {int /*<<< orphan*/  desc; struct prompt* next; TYPE_2__ src; } ;
struct ncpaddr {int dummy; } ;
struct fdescriptor {int dummy; } ;
struct bundle {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_LOCAL 128 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  LogALERT ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogPHASE ; 
 int FUNC1 (scalar_t__,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct server* FUNC3 (struct fdescriptor*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bundle*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 struct prompt* FUNC7 () ; 
 scalar_t__ log_PromptListChanged ; 
 char* FUNC8 (struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC9 (struct ncpaddr*,struct sockaddr*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 struct prompt* FUNC11 (struct server*,struct bundle*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct prompt*) ; 
 int /*<<< orphan*/  FUNC13 (struct prompt*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int,char*,int) ; 

__attribute__((used)) static void
FUNC18(struct fdescriptor *d, struct bundle *bundle, const fd_set *fdset)
{
  struct server *s = FUNC3(d);
  struct sockaddr_storage ss;
  struct sockaddr *sa = (struct sockaddr *)&ss;
  struct sockaddr_in *sin = (struct sockaddr_in *)&ss;
#ifndef NOINET6
  struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)&ss;
#endif
  int ssize = sizeof ss, wfd;
  struct prompt *p;
  struct ncpaddr addr;

  if (s->fd >= 0 && FUNC0(s->fd, fdset)) {
    wfd = FUNC1(s->fd, sa, &ssize);
    if (wfd < 0)
      FUNC6(LogERROR, "server_Read: accept(): %s\n", FUNC15(errno));
    else if (sa->sa_len == 0) {
      FUNC2(wfd);
      wfd = -1;
    }
  } else
    wfd = -1;

  if (wfd >= 0)
    switch (sa->sa_family) {
      case AF_LOCAL:
        FUNC6(LogPHASE, "Connected to local client.\n");
        break;

      case AF_INET:
        FUNC9(&addr, sa);
        if (FUNC10(sin->sin_port) < 1024) {
          FUNC6(LogALERT, "Rejected client connection from %s:%u"
                    "(invalid port number) !\n",
                    FUNC8(&addr), FUNC10(sin->sin_port));
          FUNC2(wfd);
          wfd = -1;
          break;
        }
        FUNC6(LogPHASE, "Connected to client from %s:%u\n",
                  FUNC8(&addr), FUNC10(sin->sin_port));
        break;

#ifndef NOINET6
      case AF_INET6:
        FUNC9(&addr, sa);
        if (FUNC10(sin6->sin6_port) < 1024) {
          FUNC6(LogALERT, "Rejected client connection from %s:%u"
                    "(invalid port number) !\n",
                    FUNC8(&addr), FUNC10(sin6->sin6_port));
          FUNC2(wfd);
          wfd = -1;
          break;
        }
        FUNC6(LogPHASE, "Connected to client from %s:%u\n",
                  FUNC8(&addr), FUNC10(sin6->sin6_port));
        break;
#endif

      default:
        FUNC17(wfd, "Unrecognised access !\n", 22);
        FUNC2(wfd);
        wfd = -1;
        break;
    }

  if (wfd >= 0) {
    if ((p = FUNC11(s, bundle, wfd)) == NULL) {
      FUNC17(wfd, "Connection refused.\n", 20);
      FUNC2(wfd);
    } else {
      switch (sa->sa_family) {
        case AF_LOCAL:
          p->src.type = "local";
          FUNC16(p->src.from, s->cfg.sockname, sizeof p->src.from - 1);
          p->src.from[sizeof p->src.from - 1] = '\0';
          break;
        case AF_INET:
          p->src.type = "ip";
          FUNC14(p->src.from, sizeof p->src.from, "%s:%u",
                   FUNC8(&addr), FUNC10(sin->sin_port));
          break;
#ifndef NOINET6
        case AF_INET6:
          p->src.type = "ip6";
          FUNC14(p->src.from, sizeof p->src.from, "%s:%u",
                   FUNC8(&addr), FUNC10(sin6->sin6_port));
          break;
#endif
      }
      FUNC13(p);
      FUNC12(p);
    }
  }

  log_PromptListChanged = 0;
  for (p = FUNC7(); p; p = p->next)
    if (FUNC4(&p->desc, fdset)) {
      FUNC5(&p->desc, bundle, fdset);
      if (log_PromptListChanged)
        break;
    }
}