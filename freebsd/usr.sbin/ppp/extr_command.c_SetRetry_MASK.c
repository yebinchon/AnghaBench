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
typedef  int u_int ;

/* Variables and functions */
 int DEF_FSMRETRY ; 
 int /*<<< orphan*/  LogWARN ; 
 long MIN_FSMRETRY ; 
 long FUNC0 (char const* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long,...) ; 

__attribute__((used)) static int
FUNC2(int argc, char const *const *argv, u_int *timeout, u_int *maxreq,
          u_int *maxtrm, int def)
{
  if (argc == 0) {
    *timeout = DEF_FSMRETRY;
    *maxreq = def;
    if (maxtrm != NULL)
      *maxtrm = def;
  } else {
    long l = FUNC0(argv[0]);

    if (l < MIN_FSMRETRY) {
      FUNC1(LogWARN, "%ld: Invalid FSM retry period - min %d\n",
                 l, MIN_FSMRETRY);
      return 1;
    } else
      *timeout = l;

    if (argc > 1) {
      l = FUNC0(argv[1]);
      if (l < 1) {
        FUNC1(LogWARN, "%ld: Invalid FSM REQ tries - changed to 1\n", l);
        l = 1;
      }
      *maxreq = l;

      if (argc > 2 && maxtrm != NULL) {
        l = FUNC0(argv[2]);
        if (l < 1) {
          FUNC1(LogWARN, "%ld: Invalid FSM TRM tries - changed to 1\n", l);
          l = 1;
        }
        *maxtrm = l;
      }
    }
  }

  return 0;
}