
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ess_info {int dummy; } ;


 int DEB (int ) ;
 int ess_dspwr (struct ess_info*,int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static int
ess_cmd1(struct ess_info *sc, u_char cmd, int val)
{
     DEB(printf("ess_cmd1: %x, %x\n", cmd, val));
     if (ess_dspwr(sc, cmd)) {
  return ess_dspwr(sc, val & 0xff);
     } else return 0;
}
