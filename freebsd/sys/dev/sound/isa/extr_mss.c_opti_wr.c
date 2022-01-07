
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mss_info {scalar_t__ opti_offset; int conf_base; } ;


 int port_wr (int ,scalar_t__,int ) ;

__attribute__((used)) static void
opti_wr(struct mss_info *mss, u_char reg, u_char value)
{
     port_wr(mss->conf_base, mss->opti_offset + 0, reg);
     port_wr(mss->conf_base, mss->opti_offset + 1, value);
}
