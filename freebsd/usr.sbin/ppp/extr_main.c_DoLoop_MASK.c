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
struct timeval {int tv_sec; int tv_usec; } ;
struct bundle {int /*<<< orphan*/  desc; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  LogTIMER ; 
 int /*<<< orphan*/  FUNC2 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC3 (struct bundle*,int) ; 
 scalar_t__ FUNC4 (struct bundle*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct bundle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct bundle*,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 TYPE_1__ server ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(struct bundle *bundle)
{
  fd_set *rfds, *wfds, *efds;
  int i, nfds, nothing_done;

  if ((rfds = FUNC12()) == NULL) {
    FUNC11(LogERROR, "DoLoop: Cannot create fd_set\n");
    return;
  }

  if ((wfds = FUNC12()) == NULL) {
    FUNC11(LogERROR, "DoLoop: Cannot create fd_set\n");
    FUNC9(rfds);
    return;
  }

  if ((efds = FUNC12()) == NULL) {
    FUNC11(LogERROR, "DoLoop: Cannot create fd_set\n");
    FUNC9(rfds);
    FUNC9(wfds);
    return;
  }

  for (; !FUNC4(bundle); FUNC2(bundle)) {
    nfds = 0;
    FUNC16(rfds);
    FUNC16(wfds);
    FUNC16(efds);

    /* All our datalinks, the tun device and the MP socket */
    FUNC7(&bundle->desc, rfds, wfds, efds, &nfds);

    /* All our prompts and the diagnostic socket */
    FUNC7(&server.desc, rfds, NULL, NULL, &nfds);

    FUNC2(bundle);
    if (FUNC4(bundle))
      /* Don't select - we'll be here forever */
      break;

    /*
     * It's possible that we've had a signal since we last checked.  If
     * we don't check again before calling select(), we may end up stuck
     * after having missed the event.... sig_Handle() tries to be as
     * quick as possible if nothing is likely to have happened.
     * This is only really likely if we block in open(... O_NONBLOCK)
     * which will happen with a misconfigured device.
     */
    if (FUNC14())
      continue;

    i = FUNC13(nfds, rfds, wfds, efds, NULL);

    if (i < 0 && errno != EINTR) {
      FUNC11(LogERROR, "DoLoop: select(): %s\n", FUNC15(errno));
      if (FUNC10(LogTIMER)) {
        struct timeval t;

        for (i = 0; i <= nfds; i++) {
          if (FUNC1(i, rfds)) {
            FUNC11(LogTIMER, "Read set contains %d\n", i);
            FUNC0(i, rfds);
            t.tv_sec = t.tv_usec = 0;
            if (FUNC13(nfds, rfds, wfds, efds, &t) != -1) {
              FUNC11(LogTIMER, "The culprit !\n");
              break;
            }
          }
          if (FUNC1(i, wfds)) {
            FUNC11(LogTIMER, "Write set contains %d\n", i);
            FUNC0(i, wfds);
            t.tv_sec = t.tv_usec = 0;
            if (FUNC13(nfds, rfds, wfds, efds, &t) != -1) {
              FUNC11(LogTIMER, "The culprit !\n");
              break;
            }
          }
          if (FUNC1(i, efds)) {
            FUNC11(LogTIMER, "Error set contains %d\n", i);
            FUNC0(i, efds);
            t.tv_sec = t.tv_usec = 0;
            if (FUNC13(nfds, rfds, wfds, efds, &t) != -1) {
              FUNC11(LogTIMER, "The culprit !\n");
              break;
            }
          }
        }
      }
      break;
    }

    FUNC11(LogTIMER, "Select returns %d\n", i);

    FUNC14();

    if (i <= 0)
      continue;

    for (i = 0; i <= nfds; i++)
      if (FUNC1(i, efds)) {
        FUNC11(LogPHASE, "Exception detected on descriptor %d\n", i);
        /* We deal gracefully with link descriptor exceptions */
        if (!FUNC3(bundle, i)) {
          FUNC11(LogERROR, "Exception cannot be handled !\n");
          break;
        }
      }

    if (i <= nfds)
      break;

    nothing_done = 1;

    if (FUNC5(&server.desc, rfds)) {
      FUNC6(&server.desc, bundle, rfds);
      nothing_done = 0;
    }

    if (FUNC5(&bundle->desc, rfds)) {
      FUNC6(&bundle->desc, bundle, rfds);
      nothing_done = 0;
    }

    if (FUNC5(&bundle->desc, wfds))
      if (FUNC8(&bundle->desc, bundle, wfds) <= 0 && nothing_done) {
        /*
         * This is disastrous.  The OS has told us that something is
         * writable, and all our write()s have failed.  Rather than
         * going back immediately to do our UpdateSet()s and select(),
         * we sleep for a bit to avoid gobbling up all cpu time.
         */
        struct timeval t;

        t.tv_sec = 0;
        t.tv_usec = 100000;
        FUNC13(0, NULL, NULL, NULL, &t);
      }
  }

  FUNC11(LogDEBUG, "DoLoop done.\n");
}