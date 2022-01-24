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
struct svc_req {int /*<<< orphan*/  rq_xprt; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  VIS_WHITE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 

int FUNC7(struct svc_req *req, char *arg)
{
  int len, dstlen, ret;
  struct sockaddr *claddr;
  char *dst;

  len = FUNC3(arg);
  dstlen = (4 * len) + 1;
  dst = FUNC2(dstlen);
  claddr = (struct sockaddr *) (FUNC5(req->rq_xprt)->buf) ;
  ret = 1;

  if (claddr == NULL || dst == NULL)
  {
    ret = 0;
  }
  else if (FUNC4(dst, arg, VIS_WHITE) != len)
  {
    FUNC6(LOG_ERR,
	"sm_stat: client %s hostname %s contained invalid characters.",
	FUNC1(claddr),
	dst);
    ret = 0;
  }
  FUNC0(dst);
  return (ret);
}