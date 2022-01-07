
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mss_info {int conf_base; } ;


 int port_wr (int ,int,int ) ;

__attribute__((used)) static void
gus_wr(struct mss_info *mss, u_char reg, u_char value)
{
     port_wr(mss->conf_base, 3, reg);
     port_wr(mss->conf_base, 5, value);
}
