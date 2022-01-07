
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ess_info {int dummy; } ;


 int DELAY (int) ;
 int SBDSP_CMD ;
 scalar_t__ ess_dspready (struct ess_info*) ;
 int ess_wr (struct ess_info*,int ,int) ;
 int printf (char*,int) ;

__attribute__((used)) static int
ess_dspwr(struct ess_info *sc, u_char val)
{
     int i;

     for (i = 0; i < 1000; i++) {
  if (ess_dspready(sc)) {
       ess_wr(sc, SBDSP_CMD, val);
       return 1;
  }
  if (i > 10) DELAY((i > 100)? 1000 : 10);
     }
     printf("ess_dspwr(0x%02x) timed out.\n", val);
     return 0;
}
