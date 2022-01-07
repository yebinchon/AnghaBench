
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
struct lm75_snmp_sensor {int sysctlidx; int temp; scalar_t__ index; } ;


 int LOG_ERR ;
 int TAILQ_INSERT_TAIL (int *,struct lm75_snmp_sensor*,int ) ;
 int TZ_ZEROC ;
 struct lm75_snmp_sensor* calloc (int,int) ;
 int link ;
 scalar_t__ lm75_sensors ;
 int sensors ;
 int sscanf (char*,char*,int*) ;
 int syslog (int ,char*,int) ;
 int update_sensor (struct lm75_snmp_sensor*,int) ;
 scalar_t__ update_sensor_sysctl (int*,size_t*,int,char*) ;

__attribute__((used)) static int
add_sensor(char *buf)
{
 int idx, temp;
 size_t len;
 struct lm75_snmp_sensor *sensor;

 if (sscanf(buf, "dev.lm75.%d.temperature", &idx) != 1)
  return (-1);


 len = sizeof(temp);
 if (update_sensor_sysctl(&temp, &len, idx, "temperature") != 0)
  return (-1);


 sensor = calloc(1, sizeof(*sensor));
 if (sensor == ((void*)0)) {
  syslog(LOG_ERR, "Unable to allocate %zu bytes for resource",
      sizeof(*sensor));
  return (-1);
 }
 sensor->index = ++lm75_sensors;
 sensor->sysctlidx = idx;
 sensor->temp = (temp - TZ_ZEROC) / 10;
 TAILQ_INSERT_TAIL(&sensors, sensor, link);

 update_sensor(sensor, idx);

 return (0);
}
