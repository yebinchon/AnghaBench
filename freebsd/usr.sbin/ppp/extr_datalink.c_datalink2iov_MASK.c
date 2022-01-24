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
struct iovec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
struct TYPE_7__ {int /*<<< orphan*/  authtimer; } ;
struct TYPE_8__ {TYPE_3__ auth; } ;
struct TYPE_6__ {int /*<<< orphan*/  authtimer; } ;
struct TYPE_5__ {int /*<<< orphan*/  timer; } ;
struct datalink {struct datalink* name; int /*<<< orphan*/ * physical; TYPE_4__ chap; TYPE_2__ pap; int /*<<< orphan*/  cbcp; TYPE_1__ dial; } ;

/* Variables and functions */
 int DATALINK_MAXNAME ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct iovec*,int*,int,int*,int*) ; 
 int /*<<< orphan*/ * FUNC4 (struct datalink*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct datalink *dl, struct iovec *iov, int *niov, int maxiov,
             int *auxfd, int *nauxfd)
{
  /* If `dl' is NULL, we're allocating before a Fromiov() */
  int link_fd;

  if (dl) {
    FUNC5(&dl->dial.timer);
    /* The following is purely for the sake of paranoia */
    FUNC0(&dl->cbcp);
    FUNC5(&dl->pap.authtimer);
    FUNC5(&dl->chap.auth.authtimer);
  }

  if (*niov >= maxiov - 1) {
    FUNC2(LogERROR, "Toiov: No room for datalink !\n");
    if (dl) {
      FUNC1(dl->name);
      FUNC1(dl);
    }
    return -1;
  }

  iov[*niov].iov_base = (void *)dl;
  iov[(*niov)++].iov_len = sizeof *dl;
  iov[*niov].iov_base = dl ? FUNC4(dl->name, DATALINK_MAXNAME) : NULL;
  iov[(*niov)++].iov_len = DATALINK_MAXNAME;

  link_fd = FUNC3(dl ? dl->physical : NULL, iov, niov, maxiov, auxfd,
                         nauxfd);

  if (link_fd == -1 && dl) {
    FUNC1(dl->name);
    FUNC1(dl);
  }

  return link_fd;
}