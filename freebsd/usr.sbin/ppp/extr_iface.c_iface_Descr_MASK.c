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
struct TYPE_4__ {char* buffer; scalar_t__ length; } ;
struct ifreq {TYPE_2__ ifr_buffer; int /*<<< orphan*/  ifr_name; } ;
struct iface {char* descr; int /*<<< orphan*/  name; } ;
struct cmdargs {int argn; int argc; char** argv; TYPE_1__* bundle; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_3__ {struct iface* iface; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCSIFDESCR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC10(struct cmdargs const *arg)
{
  struct ifreq ifr;
  struct iface *iface;
  size_t sz, len;
  int s, n, ifdescr_maxlen;
  char *descr;

  sz = sizeof(int);
  if (FUNC9("net.ifdescr_maxlen", &ifdescr_maxlen, &sz, NULL, 0) < 0) {
    FUNC3(LogERROR, "iface descr: sysctl failed: %s\n", FUNC5(errno));
    return 1;
  }

  if (ifdescr_maxlen < 1) {
    FUNC3(LogERROR, "iface descr: sysctl net.ifdescr_maxlen < 1\n");
    return 1;
  }

  sz = sizeof(char) * ifdescr_maxlen;
  if ((descr = FUNC4(sz)) == NULL) {
    FUNC3(LogERROR, "iface descr: malloc failed: %s\n", FUNC5(errno));
    return 1;
  }

  *descr = '\0';
  n = arg->argn;
  while (n < arg->argc) {
    if (n > arg->argn && (len = FUNC6(descr, " ", sz)) >= sz)
      break;
    if ((len = FUNC6(descr, arg->argv[n], sz)) >= sz)
      break;
    ++n;
  }
  if (len >= sz) {
    FUNC3(LogERROR, "iface descr: description exceeds maximum (%d)\n",
               ifdescr_maxlen-1);
    FUNC2(descr);
    return 1;
  }

  if ((s = FUNC1(PF_INET, SOCK_DGRAM, 0)) == -1) {
    FUNC3(LogERROR, "iface descr: socket(): %s\n", FUNC5(errno));
    FUNC2(descr);
    return 1;
  }

  iface = arg->bundle->iface;
  FUNC7(ifr.ifr_name, iface->name, sizeof(ifr.ifr_name));
  ifr.ifr_buffer.length = FUNC8(descr) + 1;
  ifr.ifr_buffer.buffer = descr;
  if (FUNC0(s, SIOCSIFDESCR, (caddr_t)&ifr) < 0) {
    FUNC3(LogWARN, "iface descr: ioctl(SIOCSIFDESCR, %s): %s\n",
               descr, FUNC5(errno));
    FUNC2(descr);
    return 1;
  }

  FUNC2(iface->descr);
  iface->descr = descr;

  return 0;
}