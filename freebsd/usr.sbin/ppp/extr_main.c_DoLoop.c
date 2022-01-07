
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct bundle {int desc; } ;
typedef int fd_set ;
struct TYPE_2__ {int desc; } ;


 scalar_t__ EINTR ;
 int FD_CLR (int,int *) ;
 scalar_t__ FD_ISSET (int,int *) ;
 int LogDEBUG ;
 int LogERROR ;
 int LogPHASE ;
 int LogTIMER ;
 int bundle_CleanDatalinks (struct bundle*) ;
 int bundle_Exception (struct bundle*,int) ;
 scalar_t__ bundle_IsDead (struct bundle*) ;
 scalar_t__ descriptor_IsSet (int *,int *) ;
 int descriptor_Read (int *,struct bundle*,int *) ;
 int descriptor_UpdateSet (int *,int *,int *,int *,int*) ;
 scalar_t__ descriptor_Write (int *,struct bundle*,int *) ;
 scalar_t__ errno ;
 int free (int *) ;
 scalar_t__ log_IsKept (int ) ;
 int log_Printf (int ,char*,...) ;
 int * mkfdset () ;
 int select (int,int *,int *,int *,struct timeval*) ;
 TYPE_1__ server ;
 scalar_t__ sig_Handle () ;
 int strerror (scalar_t__) ;
 int zerofdset (int *) ;

__attribute__((used)) static void
DoLoop(struct bundle *bundle)
{
  fd_set *rfds, *wfds, *efds;
  int i, nfds, nothing_done;

  if ((rfds = mkfdset()) == ((void*)0)) {
    log_Printf(LogERROR, "DoLoop: Cannot create fd_set\n");
    return;
  }

  if ((wfds = mkfdset()) == ((void*)0)) {
    log_Printf(LogERROR, "DoLoop: Cannot create fd_set\n");
    free(rfds);
    return;
  }

  if ((efds = mkfdset()) == ((void*)0)) {
    log_Printf(LogERROR, "DoLoop: Cannot create fd_set\n");
    free(rfds);
    free(wfds);
    return;
  }

  for (; !bundle_IsDead(bundle); bundle_CleanDatalinks(bundle)) {
    nfds = 0;
    zerofdset(rfds);
    zerofdset(wfds);
    zerofdset(efds);


    descriptor_UpdateSet(&bundle->desc, rfds, wfds, efds, &nfds);


    descriptor_UpdateSet(&server.desc, rfds, ((void*)0), ((void*)0), &nfds);

    bundle_CleanDatalinks(bundle);
    if (bundle_IsDead(bundle))

      break;
    if (sig_Handle())
      continue;

    i = select(nfds, rfds, wfds, efds, ((void*)0));

    if (i < 0 && errno != EINTR) {
      log_Printf(LogERROR, "DoLoop: select(): %s\n", strerror(errno));
      if (log_IsKept(LogTIMER)) {
        struct timeval t;

        for (i = 0; i <= nfds; i++) {
          if (FD_ISSET(i, rfds)) {
            log_Printf(LogTIMER, "Read set contains %d\n", i);
            FD_CLR(i, rfds);
            t.tv_sec = t.tv_usec = 0;
            if (select(nfds, rfds, wfds, efds, &t) != -1) {
              log_Printf(LogTIMER, "The culprit !\n");
              break;
            }
          }
          if (FD_ISSET(i, wfds)) {
            log_Printf(LogTIMER, "Write set contains %d\n", i);
            FD_CLR(i, wfds);
            t.tv_sec = t.tv_usec = 0;
            if (select(nfds, rfds, wfds, efds, &t) != -1) {
              log_Printf(LogTIMER, "The culprit !\n");
              break;
            }
          }
          if (FD_ISSET(i, efds)) {
            log_Printf(LogTIMER, "Error set contains %d\n", i);
            FD_CLR(i, efds);
            t.tv_sec = t.tv_usec = 0;
            if (select(nfds, rfds, wfds, efds, &t) != -1) {
              log_Printf(LogTIMER, "The culprit !\n");
              break;
            }
          }
        }
      }
      break;
    }

    log_Printf(LogTIMER, "Select returns %d\n", i);

    sig_Handle();

    if (i <= 0)
      continue;

    for (i = 0; i <= nfds; i++)
      if (FD_ISSET(i, efds)) {
        log_Printf(LogPHASE, "Exception detected on descriptor %d\n", i);

        if (!bundle_Exception(bundle, i)) {
          log_Printf(LogERROR, "Exception cannot be handled !\n");
          break;
        }
      }

    if (i <= nfds)
      break;

    nothing_done = 1;

    if (descriptor_IsSet(&server.desc, rfds)) {
      descriptor_Read(&server.desc, bundle, rfds);
      nothing_done = 0;
    }

    if (descriptor_IsSet(&bundle->desc, rfds)) {
      descriptor_Read(&bundle->desc, bundle, rfds);
      nothing_done = 0;
    }

    if (descriptor_IsSet(&bundle->desc, wfds))
      if (descriptor_Write(&bundle->desc, bundle, wfds) <= 0 && nothing_done) {






        struct timeval t;

        t.tv_sec = 0;
        t.tv_usec = 100000;
        select(0, ((void*)0), ((void*)0), ((void*)0), &t);
      }
  }

  log_Printf(LogDEBUG, "DoLoop done.\n");
}
