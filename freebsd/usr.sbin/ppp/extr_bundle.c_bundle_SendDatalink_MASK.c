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
struct sockaddr_un {int /*<<< orphan*/  sun_path; } ;
struct msghdr {int msg_iovlen; char* msg_control; int msg_controllen; scalar_t__ msg_flags; struct iovec* msg_iov; scalar_t__ msg_namelen; int /*<<< orphan*/ * msg_name; } ;
struct iovec {int /*<<< orphan*/  iov_base; scalar_t__ iov_len; } ;
struct datalink {int /*<<< orphan*/  bundle; int /*<<< orphan*/  physical; int /*<<< orphan*/  name; } ;
struct cmsghdr {int cmsg_len; int /*<<< orphan*/  cmsg_type; int /*<<< orphan*/  cmsg_level; } ;
typedef  int ssize_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  OPT_KEEPSESSION ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int SCATTER_SEGMENTS ; 
 int /*<<< orphan*/  SCM_RIGHTS ; 
 int SEND_MAXFD ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int UU_LOCK_OK ; 
 char const* Version ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct datalink*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct datalink*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct datalink*,struct iovec*,int*,int,int*,int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC13 (struct msghdr*,char,int) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int,scalar_t__*,int) ; 
 int FUNC16 (int,struct msghdr*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC20 (char const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (char const*) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int FUNC25 (int,struct iovec*,int) ; 

void
FUNC26(struct datalink *dl, int s, struct sockaddr_un *sun)
{
  char cmsgbuf[FUNC1(sizeof(int) * SEND_MAXFD)];
  const char *constlock;
  char *lock;
  struct cmsghdr *cmsg;
  struct msghdr msg;
  struct iovec iov[SCATTER_SEGMENTS];
  int niov, f, expect, newsid, fd[SEND_MAXFD], nfd, reply[2];
  ssize_t got;
  pid_t newpid;

  FUNC12(LogPHASE, "Transmitting datalink %s\n", dl->name);

  /* Record the base device name for a lock transfer later */
  constlock = FUNC14(dl->physical);
  if (constlock) {
    lock = FUNC4(FUNC22(constlock) + 1);
    FUNC19(lock, constlock);
  } else
    lock = NULL;

  FUNC6(dl->bundle, dl);
  FUNC5(dl->bundle, dl);

  /* Build our scatter/gather array */
  iov[0].iov_len = FUNC22(Version) + 1;
  iov[0].iov_base = FUNC20(Version);
  niov = 1;
  nfd = 0;

  fd[0] = FUNC9(dl, iov, &niov, SCATTER_SEGMENTS, fd + 2, &nfd);

  if (fd[0] != -1 && FUNC18(AF_UNIX, SOCK_STREAM, PF_UNSPEC, reply) != -1) {
    /*
     * fd[1] is used to get the peer process id back, then to confirm that
     * we've transferred any device locks to that process id.
     */
    fd[1] = reply[1];

    nfd += 2;			/* Include fd[0] and fd[1] */
    FUNC13(&msg, '\0', sizeof msg);

    msg.msg_name = NULL;
    msg.msg_namelen = 0;
    /*
     * Only send the version to start...  We used to send the whole lot, but
     * this caused problems with our RECVBUF size as a single link is about
     * 22k !  This way, we should bump into no limits.
     */
    msg.msg_iovlen = 1;
    msg.msg_iov = iov;
    msg.msg_control = cmsgbuf;
    msg.msg_controllen = FUNC1(sizeof(int) * nfd);
    msg.msg_flags = 0;

    cmsg = (struct cmsghdr *)cmsgbuf;
    cmsg->cmsg_len = msg.msg_controllen;
    cmsg->cmsg_level = SOL_SOCKET;
    cmsg->cmsg_type = SCM_RIGHTS;

    for (f = 0; f < nfd; f++)
      *((int *)FUNC0(cmsg) + f) = fd[f];

    for (f = 1, expect = 0; f < niov; f++)
      expect += iov[f].iov_len;

    if (FUNC17(reply[0], SOL_SOCKET, SO_SNDBUF, &expect, sizeof(int)) == -1)
      FUNC12(LogERROR, "setsockopt(SO_RCVBUF, %d): %s\n", expect,
                 FUNC21(errno));
    if (FUNC17(reply[1], SOL_SOCKET, SO_RCVBUF, &expect, sizeof(int)) == -1)
      FUNC12(LogERROR, "setsockopt(SO_RCVBUF, %d): %s\n", expect,
                 FUNC21(errno));

    FUNC12(LogDEBUG, "Sending %d descriptor%s and %u bytes in scatter"
               "/gather array\n", nfd, nfd == 1 ? "" : "s",
               (unsigned)iov[0].iov_len);

    if ((got = FUNC16(s, &msg, 0)) == -1)
      FUNC12(LogERROR, "Failed sendmsg: %s: %s\n",
                 sun->sun_path, FUNC21(errno));
    else if (got != (ssize_t)iov[0].iov_len)
      FUNC12(LogERROR, "%s: Failed initial sendmsg: Only sent %zd of %u\n",
                 sun->sun_path, got, (unsigned)iov[0].iov_len);
    else {
      /* We must get the ACK before closing the descriptor ! */
      int res;

      if ((got = FUNC15(reply[0], &newpid, sizeof newpid)) == sizeof newpid) {
        FUNC12(LogDEBUG, "Received confirmation from pid %ld\n",
                   (long)newpid);
        if (lock && (res = FUNC3(lock, newpid)) != UU_LOCK_OK)
            FUNC12(LogERROR, "uu_lock_txfr: %s\n", FUNC24(res));

        FUNC12(LogDEBUG, "Transmitting link (%d bytes)\n", expect);
        if ((got = FUNC25(reply[0], iov + 1, niov - 1)) != expect) {
          if (got == -1)
            FUNC12(LogERROR, "%s: Failed writev: %s\n",
                       sun->sun_path, FUNC21(errno));
          else
            FUNC12(LogERROR, "%s: Failed writev: Wrote %zd of %d\n",
                       sun->sun_path, got, expect);
        }
      } else if (got == -1)
        FUNC12(LogERROR, "%s: Failed socketpair read: %s\n",
                   sun->sun_path, FUNC21(errno));
      else
        FUNC12(LogERROR, "%s: Failed socketpair read: Got %zd of %d\n",
                   sun->sun_path, got, (int)(sizeof newpid));
    }

    FUNC8(reply[0]);
    FUNC8(reply[1]);

    newsid = FUNC2(dl->bundle, OPT_KEEPSESSION) ||
             FUNC23(fd[0]) == FUNC11();
    while (nfd)
      FUNC8(fd[--nfd]);
    if (newsid)
      FUNC7(dl->bundle, got != -1);
  }
  FUNC8(s);

  while (niov--)
    FUNC10(iov[niov].iov_base);
}