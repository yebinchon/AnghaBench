
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi {int dummy; } ;
struct mpu401 {int dummy; } ;


 int CMD (struct mpu401*,int ) ;
 scalar_t__ MPU_ACK ;
 int MPU_RESET ;
 int MPU_UART ;
 scalar_t__ READ (struct mpu401*) ;
 scalar_t__ RXRDY (struct mpu401*) ;
 int printf (char*) ;

__attribute__((used)) static int
mpu401_minit(struct snd_midi *sm, void *arg)
{
 struct mpu401 *m = arg;
 int i;

 CMD(m, MPU_RESET);
 CMD(m, MPU_UART);
 return 0;
 i = 0;
 while (++i < 2000) {
  if (RXRDY(m))
   if (READ(m) == MPU_ACK)
    break;
 }

 if (i < 2000) {
  CMD(m, MPU_UART);
  return 0;
 }
 printf("mpu401_minit failed active sensing\n");
 return 1;
}
