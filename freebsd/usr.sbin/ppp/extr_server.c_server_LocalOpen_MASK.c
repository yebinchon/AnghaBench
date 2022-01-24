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
struct sockaddr_un {int sun_len; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct bundle {int dummy; } ;
typedef  scalar_t__ mode_t ;
typedef  enum server_stat { ____Placeholder_server_stat } server_stat ;
struct TYPE_3__ {char* sockname; scalar_t__ mask; scalar_t__ port; } ;
struct TYPE_4__ {int fd; TYPE_1__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int SERVER_FAILED ; 
 int SERVER_INVALID ; 
 int SERVER_OK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_un*,char,int) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC5 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 char const* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 

enum server_stat
FUNC15(struct bundle *bundle, const char *name, mode_t mask)
{
  struct sockaddr_un ifsun;
  mode_t oldmask;
  int s;

  oldmask = (mode_t)-1;		/* Silence compiler */

  if (server.cfg.sockname[0] != '\0' && !FUNC8(server.cfg.sockname, name))
    FUNC5(bundle);

  FUNC4(&ifsun, '\0', sizeof ifsun);
  ifsun.sun_len = FUNC11(name);
  if (ifsun.sun_len > sizeof ifsun.sun_path - 1) {
    FUNC3(LogERROR, "Local: %s: Path too long\n", name);
    return SERVER_INVALID;
  }
  ifsun.sun_family = AF_LOCAL;
  FUNC9(ifsun.sun_path, name);

  s = FUNC7(PF_LOCAL, SOCK_STREAM, 0);
  if (s < 0) {
    FUNC3(LogERROR, "Local: socket: %s\n", FUNC10(errno));
    goto failed;
  }
  FUNC6(s, SOL_SOCKET, SO_REUSEADDR, &s, sizeof s);
  if (mask != (mode_t)-1)
    oldmask = FUNC13(mask);
  if (FUNC0(s, (struct sockaddr *)&ifsun, sizeof ifsun) < 0) {
    if (mask != (mode_t)-1)
      FUNC13(oldmask);
    FUNC3(LogWARN, "Local: bind: %s\n", FUNC10(errno));
    FUNC1(s);
    goto failed;
  }
  if (mask != (mode_t)-1)
    FUNC13(oldmask);
  if (FUNC2(s, 5) != 0) {
    FUNC3(LogERROR, "Local: Unable to listen to socket -"
               " BUNDLE overload?\n");
    FUNC1(s);
    FUNC14(name);
    goto failed;
  }
  FUNC5(bundle);
  server.fd = s;
  server.cfg.port = 0;
  FUNC12(server.cfg.sockname, ifsun.sun_path, sizeof server.cfg.sockname - 1);
  server.cfg.sockname[sizeof server.cfg.sockname - 1] = '\0';
  server.cfg.mask = mask;
  FUNC3(LogPHASE, "Listening at local socket %s.\n", name);

  return SERVER_OK;

failed:
  if (server.fd == -1) {
    server.fd = -1;
    server.cfg.port = 0;
    FUNC12(server.cfg.sockname, ifsun.sun_path,
            sizeof server.cfg.sockname - 1);
    server.cfg.sockname[sizeof server.cfg.sockname - 1] = '\0';
    server.cfg.mask = mask;
  }
  return SERVER_FAILED;
}