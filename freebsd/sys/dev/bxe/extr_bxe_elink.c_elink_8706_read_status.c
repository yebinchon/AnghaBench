
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_vars {int dummy; } ;
struct elink_phy {int dummy; } ;
struct elink_params {int dummy; } ;
typedef int elink_status_t ;


 int elink_8706_8726_read_status (struct elink_phy*,struct elink_params*,struct elink_vars*) ;

__attribute__((used)) static elink_status_t elink_8706_read_status(struct elink_phy *phy,
      struct elink_params *params,
      struct elink_vars *vars)
{
 return elink_8706_8726_read_status(phy, params, vars);
}
