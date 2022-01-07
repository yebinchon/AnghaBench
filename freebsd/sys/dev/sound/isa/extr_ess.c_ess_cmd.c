
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ess_info {int dummy; } ;


 int ess_dspwr (struct ess_info*,int) ;
 int printf (char*,int) ;

__attribute__((used)) static int
ess_cmd(struct ess_info *sc, u_char val)
{



     return ess_dspwr(sc, val);
}
