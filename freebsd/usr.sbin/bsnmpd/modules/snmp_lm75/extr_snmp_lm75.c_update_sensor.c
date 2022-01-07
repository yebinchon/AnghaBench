
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm75_snmp_sensor {int parent; int pnpinfo; int location; int desc; } ;


 int update_sensor_sysctl (int ,size_t*,int,char*) ;

__attribute__((used)) static void
update_sensor(struct lm75_snmp_sensor *sensor, int idx)
{
 size_t len;

 len = sizeof(sensor->desc);
 update_sensor_sysctl(sensor->desc, &len, idx, "%desc");

 len = sizeof(sensor->location);
 update_sensor_sysctl(sensor->location, &len, idx, "%location");

 len = sizeof(sensor->pnpinfo);
 update_sensor_sysctl(sensor->pnpinfo, &len, idx, "%pnpinfo");

 len = sizeof(sensor->parent);
 update_sensor_sysctl(sensor->parent, &len, idx, "%parent");
}
