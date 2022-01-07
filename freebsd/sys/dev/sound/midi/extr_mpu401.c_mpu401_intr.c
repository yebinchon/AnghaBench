
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu401 {int flags; int timer; scalar_t__ si; int mid; } ;
typedef int MIDI_TYPE ;


 int D (int,int) ;
 int MPU_INPUTBUSY ;
 int MPU_INTR_BUF ;
 int MPU_OUTPUTBUSY ;
 int M_TXEN ;
 int READ (struct mpu401*) ;
 int STATUS (struct mpu401*) ;
 int WRITE (struct mpu401*,int ) ;
 int callout_reset (int *,int,int ,struct mpu401*) ;
 int midi_in (int ,int *,int) ;
 scalar_t__ midi_out (int ,int *,int) ;
 int mpu401_timeout ;

__attribute__((used)) static int
mpu401_intr(struct mpu401 *m)
{

 MIDI_TYPE b[16];
 int i;
 int s;
 i = 0;
 s = STATUS(m);
        ;
 while ((s & MPU_INPUTBUSY) == 0 && i < 16) {
  b[i] = READ(m);



  i++;
  s = STATUS(m);
 }
 if (i)
  midi_in(m->mid, b, i);
 i = 0;
 while (!(s & MPU_OUTPUTBUSY) && i < 16) {
  if (midi_out(m->mid, b, 1)) {




   WRITE(m, *b);
  } else {



   return 0;
  }
  i++;

  s = STATUS(m);
 }

 if ((m->flags & M_TXEN) && (m->si)) {
  callout_reset(&m->timer, 1, mpu401_timeout, m);
 }
 return (m->flags & M_TXEN) == M_TXEN;
}
