
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mss_info {scalar_t__ opti_offset; int conf_base; } ;


 int port_rd (int ,scalar_t__) ;
 int port_wr (int ,scalar_t__,int ) ;

__attribute__((used)) static u_char
opti_rd(struct mss_info *mss, u_char reg)
{
 port_wr(mss->conf_base, mss->opti_offset + 0, reg);
     return port_rd(mss->conf_base, mss->opti_offset + 1);
}
