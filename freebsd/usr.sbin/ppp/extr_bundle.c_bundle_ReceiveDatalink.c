
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_iovlen; char* msg_control; int msg_controllen; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; } ;
struct iovec {int * iov_base; scalar_t__ iov_len; } ;
struct datalink {int bundle; } ;
struct cmsghdr {int cmsg_len; scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
struct bundle {int dummy; } ;
typedef int ssize_t ;
typedef int pid_t ;
typedef int caddr_t ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 int LogDEBUG ;
 int LogERROR ;
 int LogPHASE ;
 int LogWARN ;
 int MSG_WAITALL ;
 int SCATTER_SEGMENTS ;
 scalar_t__ SCM_RIGHTS ;
 int SEND_MAXFD ;
 scalar_t__ SOL_SOCKET ;
 int Version ;
 int bundle_CalculateBandwidth (int ) ;
 int bundle_DatalinkLinkin (struct bundle*,struct datalink*) ;
 int close (int) ;
 int datalink2iov (int *,struct iovec*,int*,int,int *,int *) ;
 int datalink_AuthOk (struct datalink*) ;
 int datalink_Destroy (struct datalink*) ;
 int errno ;
 int free (int *) ;
 int getpid () ;
 struct datalink* iov2datalink (struct bundle*,struct iovec*,int*,int,int,int*,int*) ;
 int log_Printf (int ,char*,...) ;
 int * malloc (scalar_t__) ;
 int memset (struct msghdr*,char,int) ;
 int readv (int,struct iovec*,int) ;
 int recvmsg (int,struct msghdr*,int ) ;
 int strerror (int ) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ strncmp (int ,int *,scalar_t__) ;
 int write (int,int *,int) ;

void
bundle_ReceiveDatalink(struct bundle *bundle, int s)
{
  char cmsgbuf[sizeof(struct cmsghdr) + sizeof(int) * SEND_MAXFD];
  int niov, expect, f, *fd, nfd, onfd;
  ssize_t got;
  struct iovec iov[SCATTER_SEGMENTS];
  struct cmsghdr *cmsg;
  struct msghdr msg;
  struct datalink *dl;
  pid_t pid;

  log_Printf(LogPHASE, "Receiving datalink\n");






  iov[0].iov_len = strlen(Version) + 1;
  iov[0].iov_base = ((void*)0);
  niov = 1;
  if (datalink2iov(((void*)0), iov, &niov, SCATTER_SEGMENTS, ((void*)0), ((void*)0)) == -1) {
    log_Printf(LogERROR, "Cannot determine space required for link\n");
    return;
  }


  for (f = expect = 0; f < niov; f++) {
    if ((iov[f].iov_base = malloc(iov[f].iov_len)) == ((void*)0)) {
      log_Printf(LogERROR, "Cannot allocate space to receive link\n");
      return;
    }
    if (f)
      expect += iov[f].iov_len;
  }


  cmsg = (struct cmsghdr *)cmsgbuf;
  cmsg->cmsg_len = sizeof cmsgbuf;
  cmsg->cmsg_level = SOL_SOCKET;
  cmsg->cmsg_type = 0;

  memset(&msg, '\0', sizeof msg);
  msg.msg_name = ((void*)0);
  msg.msg_namelen = 0;
  msg.msg_iov = iov;
  msg.msg_iovlen = 1;
  msg.msg_control = cmsgbuf;
  msg.msg_controllen = sizeof cmsgbuf;

  log_Printf(LogDEBUG, "Expecting %u scatter/gather bytes\n",
             (unsigned)iov[0].iov_len);

  if ((got = recvmsg(s, &msg, MSG_WAITALL)) != (ssize_t)iov[0].iov_len) {
    if (got == -1)
      log_Printf(LogERROR, "Failed recvmsg: %s\n", strerror(errno));
    else
      log_Printf(LogERROR, "Failed recvmsg: Got %zd, not %u\n",
                 got, (unsigned)iov[0].iov_len);
    while (niov--)
      free(iov[niov].iov_base);
    return;
  }

  if (cmsg->cmsg_level != SOL_SOCKET || cmsg->cmsg_type != SCM_RIGHTS) {
    log_Printf(LogERROR, "Recvmsg: no descriptors received !\n");
    while (niov--)
      free(iov[niov].iov_base);
    return;
  }

  fd = (int *)CMSG_DATA(cmsg);
  nfd = ((caddr_t)cmsg + cmsg->cmsg_len - (caddr_t)fd) / sizeof(int);

  if (nfd < 2) {
    log_Printf(LogERROR, "Recvmsg: %d descriptor%s received (too few) !\n",
               nfd, nfd == 1 ? "" : "s");
    while (nfd--)
      close(fd[nfd]);
    while (niov--)
      free(iov[niov].iov_base);
    return;
  }






  if (strncmp(Version, iov[0].iov_base, iov[0].iov_len)) {
    log_Printf(LogWARN, "Cannot receive datalink, incorrect version"
               " (\"%.*s\", not \"%s\")\n", (int)iov[0].iov_len,
               (char *)iov[0].iov_base, Version);
    while (nfd--)
      close(fd[nfd]);
    while (niov--)
      free(iov[niov].iov_base);
    return;
  }






  pid = getpid();
  if ((got = write(fd[1], &pid, sizeof pid)) != sizeof pid) {
    if (got == -1)
      log_Printf(LogERROR, "Failed write: %s\n", strerror(errno));
    else
      log_Printf(LogERROR, "Failed write: Got %zd, not %d\n", got,
                 (int)(sizeof pid));
    while (nfd--)
      close(fd[nfd]);
    while (niov--)
      free(iov[niov].iov_base);
    return;
  }

  if ((got = readv(fd[1], iov + 1, niov - 1)) != expect) {
    if (got == -1)
      log_Printf(LogERROR, "Failed write: %s\n", strerror(errno));
    else
      log_Printf(LogERROR, "Failed write: Got %zd, not %d\n", got, expect);
    while (nfd--)
      close(fd[nfd]);
    while (niov--)
      free(iov[niov].iov_base);
    return;
  }
  close(fd[1]);

  onfd = nfd;
  nfd -= 2;
  niov = 1;
  dl = iov2datalink(bundle, iov, &niov, sizeof iov / sizeof *iov, fd[0],
                    fd + 2, &nfd);
  if (dl) {

    if (nfd) {
      log_Printf(LogERROR, "bundle_ReceiveDatalink: Failed to handle %d "
                 "auxiliary file descriptors (%d remain)\n", onfd, nfd);
      datalink_Destroy(dl);
      while (nfd--)
        close(fd[onfd--]);
      close(fd[0]);
    } else {
      bundle_DatalinkLinkin(bundle, dl);
      datalink_AuthOk(dl);
      bundle_CalculateBandwidth(dl->bundle);
    }
  } else {
    while (nfd--)
      close(fd[onfd--]);
    close(fd[0]);
    close(fd[1]);
  }

  free(iov[0].iov_base);
}
