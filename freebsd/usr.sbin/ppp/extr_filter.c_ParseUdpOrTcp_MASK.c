#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct protoent {scalar_t__ p_proto; int /*<<< orphan*/  p_name; } ;
struct filterent {scalar_t__ f_srcop; scalar_t__ f_dstop; int f_estab; int f_syn; int f_finrst; scalar_t__ f_srcport; scalar_t__ f_dstport; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  LogWARN ; 
 scalar_t__ OP_NONE ; 
 void* FUNC0 (char const* const,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char const* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const* const,char*) ; 

__attribute__((used)) static int
FUNC4(int argc, char const *const *argv, const struct protoent *pe,
              struct filterent *tgt)
{
  tgt->f_srcop = tgt->f_dstop = OP_NONE;
  tgt->f_estab = tgt->f_syn = tgt->f_finrst = 0;

  if (argc >= 3 && !FUNC3(*argv, "src")) {
    tgt->f_srcop = FUNC1(argv[1]);
    if (tgt->f_srcop == OP_NONE) {
      FUNC2(LogWARN, "ParseUdpOrTcp: bad operator\n");
      return 0;
    }
    if (pe == NULL)
      return 0;
    tgt->f_srcport = FUNC0(argv[2], pe->p_name);
    if (tgt->f_srcport == 0)
      return 0;
    argc -= 3;
    argv += 3;
  }

  if (argc >= 3 && !FUNC3(argv[0], "dst")) {
    tgt->f_dstop = FUNC1(argv[1]);
    if (tgt->f_dstop == OP_NONE) {
      FUNC2(LogWARN, "ParseUdpOrTcp: bad operator\n");
      return 0;
    }
    if (pe == NULL)
      return 0;
    tgt->f_dstport = FUNC0(argv[2], pe->p_name);
    if (tgt->f_dstport == 0)
      return 0;
    argc -= 3;
    argv += 3;
  }

  if (pe && pe->p_proto == IPPROTO_TCP) {
    for (; argc > 0; argc--, argv++)
      if (!FUNC3(*argv, "estab"))
        tgt->f_estab = 1;
      else if (!FUNC3(*argv, "syn"))
        tgt->f_syn = 1;
      else if (!FUNC3(*argv, "finrst"))
        tgt->f_finrst = 1;
      else
        break;
  }

  if (argc > 0) {
    FUNC2(LogWARN, "ParseUdpOrTcp: bad src/dst port syntax: %s\n", *argv);
    return 0;
  }

  return 1;
}