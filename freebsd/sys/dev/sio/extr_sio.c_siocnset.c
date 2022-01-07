
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_unit; int cn_name; } ;


 int sprintf (int ,char*,int) ;

__attribute__((used)) static void
siocnset(struct consdev *cd, int unit)
{

 cd->cn_unit = unit;
 sprintf(cd->cn_name, "ttyd%d", unit);
}
