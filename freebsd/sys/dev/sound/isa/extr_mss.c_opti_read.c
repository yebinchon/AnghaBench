
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mss_info {int password; int bd_id; int indir; int passwdreg; int conf_base; } ;




 int port_rd (int ,int) ;
 int port_wr (int ,int ,int) ;

u_char
opti_read(struct mss_info *mss, u_char reg)
{
 port_wr(mss->conf_base, mss->passwdreg, mss->password);

 switch(mss->bd_id) {
 case 129:
  if (reg > 7) {
   port_wr(mss->conf_base, mss->passwdreg, reg);
   port_wr(mss->conf_base, mss->passwdreg, mss->password);
   return(port_rd(mss->conf_base, 9));
  }
  return(port_rd(mss->conf_base, reg));
  break;

 case 128:
  port_wr(mss->indir, 0, reg);
  port_wr(mss->conf_base, mss->passwdreg, mss->password);
  return port_rd(mss->indir, 1);
  break;
 }
 return -1;
}
