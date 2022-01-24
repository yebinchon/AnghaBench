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
struct datalink {int /*<<< orphan*/  physical; int /*<<< orphan*/  state; struct datalink* next; } ;
struct bundle {struct datalink* links; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATALINK_CLOSED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bundle*) ; 
 scalar_t__ FUNC4 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC5 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,long,...) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,char*,int) ; 

void
FUNC23(struct bundle *bundle, int holdsession)
{
  /*
   * Lose the current session.  This means getting rid of our pid
   * too so that the tty device will really go away, and any getty
   * etc will be allowed to restart.
   */
  pid_t pid, orig;
  int fds[2];
  char done;
  struct datalink *dl;

  if (!holdsession && FUNC4(bundle)) {
    /*
     * No need to lose our session after all... we're going away anyway
     *
     * We should really stop the timer and pause if holdsession is set and
     * the bundle's dead, but that leaves other resources lying about :-(
     */
    return;
  }

  orig = FUNC9();
  if (FUNC13(fds) == -1) {
    FUNC10(LogERROR, "pipe: %s\n", FUNC18(errno));
    return;
  }
  switch ((pid = FUNC7())) {
    case -1:
      FUNC10(LogERROR, "fork: %s\n", FUNC18(errno));
      FUNC6(fds[0]);
      FUNC6(fds[1]);
      return;
    case 0:
      FUNC6(fds[1]);
      FUNC14(fds[0], &done, 1);		/* uu_locks are mine ! */
      FUNC6(fds[0]);
      if (FUNC13(fds) == -1) {
        FUNC10(LogERROR, "pipe(2): %s\n", FUNC18(errno));
        return;
      }
      switch ((pid = FUNC7())) {
        case -1:
          FUNC10(LogERROR, "fork(2): %s\n", FUNC18(errno));
          FUNC6(fds[0]);
          FUNC6(fds[1]);
          return;
        case 0:
          FUNC6(fds[1]);
          FUNC5(bundle);	/* update pid */
          FUNC14(fds[0], &done, 1);	/* uu_locks are mine ! */
          FUNC6(fds[0]);
          FUNC15();
          FUNC3(bundle);
          FUNC10(LogDEBUG, "%ld -> %ld: %s session control\n",
                     (long)orig, (long)FUNC9(),
                     holdsession ? "Passed" : "Dropped");
          FUNC19(0);		/* Start the Timer Service */
          break;
        default:
          FUNC6(fds[0]);
          /* Give away all our physical locks (to the final process) */
          for (dl = bundle->links; dl; dl = dl->next)
            if (dl->state != DATALINK_CLOSED)
              FUNC12(dl->physical, pid);
          FUNC22(fds[1], "!", 1);	/* done */
          FUNC6(fds[1]);
          FUNC2(0);
          break;
      }
      break;
    default:
      FUNC6(fds[0]);
      /* Give away all our physical locks (to the intermediate process) */
      for (dl = bundle->links; dl; dl = dl->next)
        if (dl->state != DATALINK_CLOSED)
          FUNC12(dl->physical, pid);
      FUNC22(fds[1], "!", 1);	/* done */
      FUNC6(fds[1]);
      if (holdsession) {
        int fd, status;

        FUNC20();
        FUNC17(SIGPIPE, SIG_DFL);
        FUNC17(SIGALRM, SIG_DFL);
        FUNC17(SIGHUP, SIG_DFL);
        FUNC17(SIGTERM, SIG_DFL);
        FUNC17(SIGINT, SIG_DFL);
        FUNC17(SIGQUIT, SIG_DFL);
        for (fd = FUNC8(); fd >= 0; fd--)
          FUNC6(fd);
        /*
         * Reap the intermediate process.  As we're not exiting but the
         * intermediate is, we don't want it to become defunct.
         */
        FUNC21(pid, &status, 0);
        /* Tweak our process arguments.... */
        FUNC1("session owner");
#ifndef NOSUID
        FUNC16(FUNC0());
#endif
        /*
         * Hang around for a HUP.  This should happen as soon as the
         * ppp that we passed our ctty descriptor to closes it.
         * NOTE: If this process dies, the passed descriptor becomes
         *       invalid and will give a select() error by setting one
         *       of the error fds, aborting the other ppp.  We don't
         *       want that to happen !
         */
        FUNC11();
      }
      FUNC2(0);
      break;
  }
}