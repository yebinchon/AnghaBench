
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct seltd* td_sel; } ;
struct seltd {int st_flags; int st_mtx; int st_wait; } ;
typedef int sbintime_t ;


 int C_ABSOLUTE ;
 int EWOULDBLOCK ;
 int SELTD_PENDING ;
 int SELTD_RESCAN ;
 int cv_timedwait_sig_sbt (int *,int *,int,int,int ) ;
 int cv_wait_sig (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
seltdwait(struct thread *td, sbintime_t sbt, sbintime_t precision)
{
 struct seltd *stp;
 int error;

 stp = td->td_sel;




 mtx_lock(&stp->st_mtx);



 stp->st_flags |= SELTD_RESCAN;
 if (stp->st_flags & SELTD_PENDING) {
  mtx_unlock(&stp->st_mtx);
  return (0);
 }
 if (sbt == 0)
  error = EWOULDBLOCK;
 else if (sbt != -1)
  error = cv_timedwait_sig_sbt(&stp->st_wait, &stp->st_mtx,
      sbt, precision, C_ABSOLUTE);
 else
  error = cv_wait_sig(&stp->st_wait, &stp->st_mtx);
 mtx_unlock(&stp->st_mtx);

 return (error);
}
