
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mss_info {int conf_base; } ;


 int port_rd (int ,int) ;
 int port_wr (int ,int ,int ) ;

__attribute__((used)) static u_char
conf_rd(struct mss_info *mss, u_char reg)
{
 port_wr(mss->conf_base, 0, reg);
     return port_rd(mss->conf_base, 1);
}
