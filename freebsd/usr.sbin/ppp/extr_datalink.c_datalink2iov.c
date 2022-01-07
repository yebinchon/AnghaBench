
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iovec {int iov_len; int * iov_base; } ;
struct TYPE_7__ {int authtimer; } ;
struct TYPE_8__ {TYPE_3__ auth; } ;
struct TYPE_6__ {int authtimer; } ;
struct TYPE_5__ {int timer; } ;
struct datalink {struct datalink* name; int * physical; TYPE_4__ chap; TYPE_2__ pap; int cbcp; TYPE_1__ dial; } ;


 int DATALINK_MAXNAME ;
 int LogERROR ;
 int cbcp_Down (int *) ;
 int free (struct datalink*) ;
 int log_Printf (int ,char*) ;
 int physical2iov (int *,struct iovec*,int*,int,int*,int*) ;
 int * realloc (struct datalink*,int) ;
 int timer_Stop (int *) ;

int
datalink2iov(struct datalink *dl, struct iovec *iov, int *niov, int maxiov,
             int *auxfd, int *nauxfd)
{

  int link_fd;

  if (dl) {
    timer_Stop(&dl->dial.timer);

    cbcp_Down(&dl->cbcp);
    timer_Stop(&dl->pap.authtimer);
    timer_Stop(&dl->chap.auth.authtimer);
  }

  if (*niov >= maxiov - 1) {
    log_Printf(LogERROR, "Toiov: No room for datalink !\n");
    if (dl) {
      free(dl->name);
      free(dl);
    }
    return -1;
  }

  iov[*niov].iov_base = (void *)dl;
  iov[(*niov)++].iov_len = sizeof *dl;
  iov[*niov].iov_base = dl ? realloc(dl->name, DATALINK_MAXNAME) : ((void*)0);
  iov[(*niov)++].iov_len = DATALINK_MAXNAME;

  link_fd = physical2iov(dl ? dl->physical : ((void*)0), iov, niov, maxiov, auxfd,
                         nauxfd);

  if (link_fd == -1 && dl) {
    free(dl->name);
    free(dl);
  }

  return link_fd;
}
