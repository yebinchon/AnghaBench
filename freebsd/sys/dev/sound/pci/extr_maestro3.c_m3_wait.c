
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;


 int CODEC_STATUS ;
 int DELAY (int) ;
 int m3_rd_1 (struct sc_info*,int ) ;

__attribute__((used)) static __inline int
m3_wait(struct sc_info *sc)
{
 int i;

 for (i=0 ; i<20 ; i++) {
  if ((m3_rd_1(sc, CODEC_STATUS) & 1) == 0) {
   return 0;
  }
  DELAY(2);
 }
 return -1;
}
