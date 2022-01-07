
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm75_snmp_sensor {int dummy; } ;


 struct lm75_snmp_sensor* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct lm75_snmp_sensor*,int ) ;
 int free (struct lm75_snmp_sensor*) ;
 int link ;
 int sensors ;

__attribute__((used)) static void
free_sensors(void)
{
 struct lm75_snmp_sensor *sensor;

 while ((sensor = TAILQ_FIRST(&sensors)) != ((void*)0)) {
  TAILQ_REMOVE(&sensors, sensor, link);
  free(sensor);
 }
}
