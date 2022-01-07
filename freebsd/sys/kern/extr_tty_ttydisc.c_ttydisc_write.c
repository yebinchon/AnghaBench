
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; } ;
struct tty {int t_flags; unsigned int t_writepos; unsigned int t_column; int t_outwait; int t_inq; int t_outq; } ;


 scalar_t__ CMP_FLAG (int ,int ) ;
 int EIO ;
 int ENXIO ;
 int EWOULDBLOCK ;
 int IO_NDELAY ;
 int MA_OWNED ;
 unsigned int MIN (scalar_t__,int) ;
 int MPASS (int) ;
 int OPOST ;
 int TF_HIWAT_OUT ;
 int TF_ZOMBIE ;
 int TTY_STACKBUF ;
 int o ;
 scalar_t__ tty_gone (struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_lock_assert (struct tty*,int ) ;
 int tty_unlock (struct tty*) ;
 int tty_wait (struct tty*,int *) ;
 int ttydevsw_outwakeup (struct tty*) ;
 unsigned int ttydisc_findchar (char*,unsigned int) ;
 scalar_t__ ttydisc_write_oproc (struct tty*,char) ;
 int ttyinq_reprintpos_set (int *) ;
 unsigned int ttyoutq_write (int *,char*,unsigned int) ;
 int uiomove (char*,unsigned int,struct uio*) ;

int
ttydisc_write(struct tty *tp, struct uio *uio, int ioflag)
{
 char ob[TTY_STACKBUF];
 char *obstart;
 int error = 0;
 unsigned int oblen = 0;

 tty_lock_assert(tp, MA_OWNED);

 if (tp->t_flags & TF_ZOMBIE)
  return (EIO);







 while (uio->uio_resid > 0) {
  unsigned int nlen;

  MPASS(oblen == 0);


  obstart = ob;
  nlen = MIN(uio->uio_resid, sizeof ob);
  tty_unlock(tp);
  error = uiomove(ob, nlen, uio);
  tty_lock(tp);
  if (error != 0)
   break;
  oblen = nlen;

  if (tty_gone(tp)) {
   error = ENXIO;
   break;
  }

  MPASS(oblen > 0);


  do {
   unsigned int plen, wlen;


   if (CMP_FLAG(o, OPOST)) {
    plen = ttydisc_findchar(obstart, oblen);
   } else {
    plen = oblen;
   }

   if (plen == 0) {




    if (ttydisc_write_oproc(tp, *obstart) == 0) {
     obstart++;
     oblen--;

     tp->t_writepos = tp->t_column;
     ttyinq_reprintpos_set(&tp->t_inq);
     continue;
    }
   } else {

    wlen = ttyoutq_write(&tp->t_outq, obstart, plen);
    obstart += wlen;
    oblen -= wlen;
    tp->t_column += wlen;

    tp->t_writepos = tp->t_column;
    ttyinq_reprintpos_set(&tp->t_inq);

    if (wlen == plen)
     continue;
   }


   tp->t_flags |= TF_HIWAT_OUT;

   if (ioflag & IO_NDELAY) {
    error = EWOULDBLOCK;
    goto done;
   }






   ttydevsw_outwakeup(tp);
   if ((tp->t_flags & TF_HIWAT_OUT) == 0)
    continue;

   error = tty_wait(tp, &tp->t_outwait);
   if (error)
    goto done;

   if (tp->t_flags & TF_ZOMBIE) {
    error = EIO;
    goto done;
   }
  } while (oblen > 0);
 }

done:
 if (!tty_gone(tp))
  ttydevsw_outwakeup(tp);






 uio->uio_resid += oblen;
 return (error);
}
