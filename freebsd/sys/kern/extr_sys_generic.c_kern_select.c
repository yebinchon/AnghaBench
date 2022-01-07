
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct thread {scalar_t__* td_retval; TYPE_1__* td_proc; } ;
struct filedesc {int fd_lastfile; } ;
typedef int sbintime_t ;
typedef int fd_set ;
typedef int fd_mask ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int EINTR ;
 int EINVAL ;
 int ERESTART ;
 int EWOULDBLOCK ;
 scalar_t__ INT32_MAX ;
 int M_SELECT ;
 int M_WAITOK ;
 int NBBY ;
 int NFDBITS ;
 int SBT_MAX ;
 scalar_t__ TIMESEL (int*,int) ;
 int bzero (int *,int) ;
 int free (int *,int ) ;
 int getbits (int *,int) ;
 int howmany (int,int) ;
 int * malloc (int,int ,int ) ;
 int putbits (int *,int) ;
 int roundup (int,int) ;
 int select_check_badfd (int *,int,int,int) ;
 int selrescan (struct thread*,int **,int **) ;
 int selscan (struct thread*,int **,int **,int) ;
 int seltdclear (struct thread*) ;
 int seltdinit (struct thread*) ;
 int seltdwait (struct thread*,int,int) ;
 int swizzle_fdset (int *) ;
 int tc_precexp ;
 scalar_t__ tc_tick_sbt ;
 int timevalisset (struct timeval*) ;
 int tvtosbt (struct timeval) ;

int
kern_select(struct thread *td, int nd, fd_set *fd_in, fd_set *fd_ou,
    fd_set *fd_ex, struct timeval *tvp, int abi_nfdbits)
{
 struct filedesc *fdp;






 fd_mask s_selbits[howmany(2048, NFDBITS)];
 fd_mask *ibits[3], *obits[3], *selbits, *sbp;
 struct timeval rtv;
 sbintime_t asbt, precision, rsbt;
 u_int nbufbytes, ncpbytes, ncpubytes, nfdbits;
 int error, lf, ndu;

 if (nd < 0)
  return (EINVAL);
 fdp = td->td_proc->p_fd;
 ndu = nd;
 lf = fdp->fd_lastfile;
 if (nd > lf + 1)
  nd = lf + 1;

 error = select_check_badfd(fd_in, nd, ndu, abi_nfdbits);
 if (error != 0)
  return (error);
 error = select_check_badfd(fd_ou, nd, ndu, abi_nfdbits);
 if (error != 0)
  return (error);
 error = select_check_badfd(fd_ex, nd, ndu, abi_nfdbits);
 if (error != 0)
  return (error);





 nfdbits = roundup(nd, NFDBITS);
 ncpbytes = nfdbits / NBBY;
 ncpubytes = roundup(nd, abi_nfdbits) / NBBY;
 nbufbytes = 0;
 if (fd_in != ((void*)0))
  nbufbytes += 2 * ncpbytes;
 if (fd_ou != ((void*)0))
  nbufbytes += 2 * ncpbytes;
 if (fd_ex != ((void*)0))
  nbufbytes += 2 * ncpbytes;
 if (nbufbytes <= sizeof s_selbits)
  selbits = &s_selbits[0];
 else
  selbits = malloc(nbufbytes, M_SELECT, M_WAITOK);






 sbp = selbits;
 do { if (fd_in == ((void*)0)) { ibits[0] = ((void*)0); obits[0] = ((void*)0); } else { ibits[0] = sbp + nbufbytes / 2 / sizeof *sbp; obits[0] = sbp; sbp += ncpbytes / sizeof *sbp; error = copyin(fd_in, ibits[0], ncpubytes); if (error != 0) goto done; if (ncpbytes != ncpubytes) bzero((char *)ibits[0] + ncpubytes, ncpbytes - ncpubytes); } } while (0);
 do { if (fd_ou == ((void*)0)) { ibits[1] = ((void*)0); obits[1] = ((void*)0); } else { ibits[1] = sbp + nbufbytes / 2 / sizeof *sbp; obits[1] = sbp; sbp += ncpbytes / sizeof *sbp; error = copyin(fd_ou, ibits[1], ncpubytes); if (error != 0) goto done; if (ncpbytes != ncpubytes) bzero((char *)ibits[1] + ncpubytes, ncpbytes - ncpubytes); } } while (0);
 do { if (fd_ex == ((void*)0)) { ibits[2] = ((void*)0); obits[2] = ((void*)0); } else { ibits[2] = sbp + nbufbytes / 2 / sizeof *sbp; obits[2] = sbp; sbp += ncpbytes / sizeof *sbp; error = copyin(fd_ex, ibits[2], ncpubytes); if (error != 0) goto done; if (ncpbytes != ncpubytes) bzero((char *)ibits[2] + ncpubytes, ncpbytes - ncpubytes); } } while (0);
 if (abi_nfdbits != NFDBITS && ibits[0] != ((void*)0)) { int i; for (i = 0; i < ncpbytes / sizeof *sbp; i++) ibits[0][i] = (ibits[0][i] >> 32) | (ibits[0][i] << 32); };
 if (abi_nfdbits != NFDBITS && ibits[1] != ((void*)0)) { int i; for (i = 0; i < ncpbytes / sizeof *sbp; i++) ibits[1][i] = (ibits[1][i] >> 32) | (ibits[1][i] << 32); };
 if (abi_nfdbits != NFDBITS && ibits[2] != ((void*)0)) { int i; for (i = 0; i < ncpbytes / sizeof *sbp; i++) ibits[2][i] = (ibits[2][i] >> 32) | (ibits[2][i] << 32); };

 if (nbufbytes != 0)
  bzero(selbits, nbufbytes / 2);

 precision = 0;
 if (tvp != ((void*)0)) {
  rtv = *tvp;
  if (rtv.tv_sec < 0 || rtv.tv_usec < 0 ||
      rtv.tv_usec >= 1000000) {
   error = EINVAL;
   goto done;
  }
  if (!timevalisset(&rtv))
   asbt = 0;
  else if (rtv.tv_sec <= INT32_MAX) {
   rsbt = tvtosbt(rtv);
   precision = rsbt;
   precision >>= tc_precexp;
   if (TIMESEL(&asbt, rsbt))
    asbt += tc_tick_sbt;
   if (asbt <= SBT_MAX - rsbt)
    asbt += rsbt;
   else
    asbt = -1;
  } else
   asbt = -1;
 } else
  asbt = -1;
 seltdinit(td);

 for (;;) {
  error = selscan(td, ibits, obits, nd);
  if (error || td->td_retval[0] != 0)
   break;
  error = seltdwait(td, asbt, precision);
  if (error)
   break;
  error = selrescan(td, ibits, obits);
  if (error || td->td_retval[0] != 0)
   break;
 }
 seltdclear(td);

done:

 if (error == ERESTART)
  error = EINTR;
 if (error == EWOULDBLOCK)
  error = 0;


 if (abi_nfdbits != NFDBITS && obits[0] != ((void*)0)) { int i; for (i = 0; i < ncpbytes / sizeof *sbp; i++) obits[0][i] = (obits[0][i] >> 32) | (obits[0][i] << 32); };
 if (abi_nfdbits != NFDBITS && obits[1] != ((void*)0)) { int i; for (i = 0; i < ncpbytes / sizeof *sbp; i++) obits[1][i] = (obits[1][i] >> 32) | (obits[1][i] << 32); };
 if (abi_nfdbits != NFDBITS && obits[2] != ((void*)0)) { int i; for (i = 0; i < ncpbytes / sizeof *sbp; i++) obits[2][i] = (obits[2][i] >> 32) | (obits[2][i] << 32); };





 if (error == 0) {
  int error2;

  if (fd_in && (error2 = copyout(obits[0], fd_in, ncpubytes))) error = error2;;
  if (fd_ou && (error2 = copyout(obits[1], fd_ou, ncpubytes))) error = error2;;
  if (fd_ex && (error2 = copyout(obits[2], fd_ex, ncpubytes))) error = error2;;

 }
 if (selbits != &s_selbits[0])
  free(selbits, M_SELECT);

 return (error);
}
