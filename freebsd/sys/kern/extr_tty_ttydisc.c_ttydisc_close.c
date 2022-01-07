
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_flags; } ;


 int FREAD ;
 int FWRITE ;
 int TF_HIWAT ;
 int TF_STOPPED ;
 int TF_ZOMBIE ;
 int close ;
 int tty_flush (struct tty*,int) ;
 int ttyhook_close (struct tty*) ;
 scalar_t__ ttyhook_hashook (struct tty*,int ) ;

void
ttydisc_close(struct tty *tp)
{


 tp->t_flags &= ~(TF_STOPPED|TF_HIWAT|TF_ZOMBIE);





 tty_flush(tp, FREAD | FWRITE);

 if (ttyhook_hashook(tp, close))
  ttyhook_close(tp);
}
