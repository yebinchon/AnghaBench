
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mss_info {int passwdreg; int password; int bd_id; int indir; int conf_base; } ;




 int port_wr (int ,int,int) ;

__attribute__((used)) static void
opti_write(struct mss_info *mss, u_char reg, u_char val)
{
 port_wr(mss->conf_base, mss->passwdreg, mss->password);

 switch(mss->bd_id) {
 case 129:
  if (reg > 7) {
   port_wr(mss->conf_base, mss->passwdreg, reg);
   port_wr(mss->conf_base, mss->passwdreg,
    mss->password);
   port_wr(mss->conf_base, 9, val);
   return;
  }
  port_wr(mss->conf_base, reg, val);
  break;

 case 128:
  port_wr(mss->indir, 0, reg);
  port_wr(mss->conf_base, mss->passwdreg, mss->password);
  port_wr(mss->indir, 1, val);
  break;
 }
}
