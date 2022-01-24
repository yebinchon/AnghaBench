#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct servent {scalar_t__ s_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 TYPE_1__ FUNC0 (char*) ; 
 scalar_t__ INADDR_NONE ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 struct servent* FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(const char *name, char *host, char *port)
{
  struct sockaddr_in dest;
  int sock;
  struct servent *sp;

  dest.sin_family = AF_INET;
  dest.sin_addr = FUNC0(host);
  if (dest.sin_addr.s_addr == INADDR_NONE) {
    FUNC6(LogWARN, "%s: %s: unknown host\n", name, host);
    return -2;
  }
  dest.sin_port = FUNC5(FUNC1(port));
  if (dest.sin_port == 0) {
    sp = FUNC4(port, "tcp");
    if (sp)
      dest.sin_port = sp->s_port;
    else {
      FUNC6(LogWARN, "%s: %s: unknown service\n", name, port);
      return -2;
    }
  }
  FUNC6(LogPHASE, "%s: Connecting to %s:%s/tcp\n", name, host, port);

  sock = FUNC7(PF_INET, SOCK_STREAM, 0);
  if (sock < 0)
    return -2;

  if (FUNC3(sock, (struct sockaddr *)&dest, sizeof dest) < 0) {
    FUNC6(LogWARN, "%s: connect: %s\n", name, FUNC8(errno));
    FUNC2(sock);
    return -2;
  }

  return sock;
}