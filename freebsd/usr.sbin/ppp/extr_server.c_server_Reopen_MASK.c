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
typedef  scalar_t__ u_short ;
struct stat {int st_mode; } ;
struct bundle {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  enum server_stat { ____Placeholder_server_stat } server_stat ;
struct TYPE_3__ {char* sockname; scalar_t__ port; int /*<<< orphan*/  mask; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;

/* Variables and functions */
 int SERVER_FAILED ; 
 int SERVER_UNSET ; 
 int S_IFSOCK ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC0 (struct bundle*) ; 
 int FUNC1 (struct bundle*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bundle*,scalar_t__) ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 

enum server_stat
FUNC6(struct bundle *bundle)
{
  char name[sizeof server.cfg.sockname];
  struct stat st;
  u_short port;
  mode_t mask;
  enum server_stat ret;

  if (server.cfg.sockname[0] != '\0') {
    FUNC4(name, server.cfg.sockname);
    mask = server.cfg.mask;
    FUNC0(bundle);
    if (server.cfg.sockname[0] != '\0' && FUNC3(server.cfg.sockname, &st) == 0)
      if (!(st.st_mode & S_IFSOCK) || FUNC5(server.cfg.sockname) != 0)
        return SERVER_FAILED;
    ret = FUNC1(bundle, name, mask);
  } else if (server.cfg.port != 0) {
    port = server.cfg.port;
    FUNC0(bundle);
    ret = FUNC2(bundle, port);
  } else
    ret = SERVER_UNSET;

  return ret;
}