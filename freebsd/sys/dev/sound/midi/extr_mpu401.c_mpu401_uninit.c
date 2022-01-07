
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu401 {int mid; } ;


 int CMD (struct mpu401*,int ) ;
 int MPU_RESET ;
 int M_MIDI ;
 int free (struct mpu401*,int ) ;
 int midi_uninit (int ) ;

int
mpu401_uninit(struct mpu401 *m)
{
 int retval;

 CMD(m, MPU_RESET);
 retval = midi_uninit(m->mid);
 if (retval)
  return retval;
 free(m, M_MIDI);
 return 0;
}
