#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  bundle; } ;
struct TYPE_4__ {char* resolv; char* resolv_nons; int resolver; TYPE_3__* dns; } ;
struct ipcp {TYPE_2__ fsm; TYPE_1__ ns; } ;
typedef  int ssize_t ;
struct TYPE_6__ {scalar_t__ s_addr; } ;

/* Variables and functions */
 scalar_t__ INADDR_ANY ; 
 scalar_t__ INADDR_NONE ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  _PATH_RESCONF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 scalar_t__ FUNC4 (char*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (char) ; 
 scalar_t__ FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long,...) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,char*,int) ; 
 char* FUNC12 (char*,char) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (char*) ; 
 char* FUNC16 (char*,char*) ; 

void
FUNC17(struct ipcp *ipcp)
{
  int fd;

  ipcp->ns.dns[0].s_addr = ipcp->ns.dns[1].s_addr = INADDR_NONE;

  if (ipcp->ns.resolv != NULL) {
    FUNC2(ipcp->ns.resolv);
    ipcp->ns.resolv = NULL;
  }
  if (ipcp->ns.resolv_nons != NULL) {
    FUNC2(ipcp->ns.resolv_nons);
    ipcp->ns.resolv_nons = NULL;
  }
  ipcp->ns.resolver = 0;

  if ((fd = FUNC10(_PATH_RESCONF, O_RDONLY)) != -1) {
    struct stat st;

    if (FUNC3(fd, &st) == 0) {
      ssize_t got;

      /*
       * Note, ns.resolv and ns.resolv_nons are assumed to always point to
       * buffers of the same size!  See the strcpy() below.
       */
      if ((ipcp->ns.resolv_nons = (char *)FUNC8(st.st_size + 1)) == NULL)
        FUNC7(LogERROR, "Failed to malloc %lu for %s: %s\n",
                   (unsigned long)st.st_size, _PATH_RESCONF, FUNC14(errno));
      else if ((ipcp->ns.resolv = (char *)FUNC8(st.st_size + 1)) == NULL) {
        FUNC7(LogERROR, "Failed(2) to malloc %lu for %s: %s\n",
                   (unsigned long)st.st_size, _PATH_RESCONF, FUNC14(errno));
        FUNC2(ipcp->ns.resolv_nons);
        ipcp->ns.resolv_nons = NULL;
      } else if ((got = FUNC11(fd, ipcp->ns.resolv, st.st_size)) != st.st_size) {
        if (got == -1)
          FUNC7(LogERROR, "Failed to read %s: %s\n",
                     _PATH_RESCONF, FUNC14(errno));
        else
          FUNC7(LogERROR, "Failed to read %s, got %lu not %lu\n",
                     _PATH_RESCONF, (unsigned long)got,
                     (unsigned long)st.st_size);
        FUNC2(ipcp->ns.resolv_nons);
        ipcp->ns.resolv_nons = NULL;
        FUNC2(ipcp->ns.resolv);
        ipcp->ns.resolv = NULL;
      } else {
        char *cp, *cp_nons, *ncp, ch;
        int n;

        ipcp->ns.resolv[st.st_size] = '\0';
        ipcp->ns.resolver = 1;

        cp_nons = ipcp->ns.resolv_nons;
        cp = ipcp->ns.resolv;
        n = 0;

        while ((ncp = FUNC16(cp, "nameserver")) != NULL) {
          if (ncp != cp) {
            FUNC9(cp_nons, cp, ncp - cp);
            cp_nons += ncp - cp;
          }
          if ((ncp != cp && ncp[-1] != '\n') || !FUNC6(ncp[10])) {
            FUNC9(cp_nons, ncp, 9);
            cp_nons += 9;
            cp = ncp + 9;	/* Can't match "nameserver" at cp... */
            continue;
          }

          for (cp = ncp + 11; FUNC6(*cp); cp++)	/* Skip whitespace */
            ;

          for (ncp = cp; FUNC5(*ncp); ncp++)		/* Jump over IP */
            ;

          ch = *ncp;
          *ncp = '\0';
          if (n < 2 && FUNC4(cp, ipcp->ns.dns))
            n++;
          *ncp = ch;

          if ((cp = FUNC12(ncp, '\n')) == NULL)	/* Point at next line */
            cp = ncp + FUNC15(ncp);
          else
            cp++;
        }
        /*
         * Note, cp_nons and cp always point to buffers of the same size, so
         * strcpy is ok!
         */
        FUNC13(cp_nons, cp);	/* Copy the end - including the NUL */
        cp_nons += FUNC15(cp_nons) - 1;
        while (cp_nons >= ipcp->ns.resolv_nons && *cp_nons == '\n')
          *cp_nons-- = '\0';
        if (n == 2 && ipcp->ns.dns[0].s_addr == INADDR_ANY) {
          ipcp->ns.dns[0].s_addr = ipcp->ns.dns[1].s_addr;
          ipcp->ns.dns[1].s_addr = INADDR_ANY;
        }
        FUNC0(ipcp->fsm.bundle);
      }
    } else
      FUNC7(LogERROR, "Failed to stat opened %s: %s\n",
                 _PATH_RESCONF, FUNC14(errno));

    FUNC1(fd);
  }
}