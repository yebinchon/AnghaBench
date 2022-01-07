
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int supported; } ;
struct port_info {TYPE_1__ link_cfg; } ;


 int fwcap_to_speed (int ) ;

__attribute__((used)) static inline int
port_top_speed(const struct port_info *pi)
{


 return (fwcap_to_speed(pi->link_cfg.supported) / 1000);
}
