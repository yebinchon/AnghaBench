
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int boot_on; int always_on; int min_uvolt; int max_uvolt; } ;
struct regnode {TYPE_1__ std_param; } ;


 int ERANGE ;
 int REGULATOR_STATUS_ENABLED ;
 scalar_t__ bootverbose ;
 int printf (char*,char*,...) ;
 int regnode_enable (struct regnode*) ;
 char* regnode_get_name (struct regnode*) ;
 int regnode_get_voltage (struct regnode*,int*) ;
 int regnode_status (struct regnode*,int*) ;

int
regnode_set_constraint(struct regnode *regnode)
{
 int status, rv, uvolt;

 if (regnode->std_param.boot_on != 1 &&
     regnode->std_param.always_on != 1)
  return (0);

 rv = regnode_status(regnode, &status);
 if (rv != 0) {
  if (bootverbose)
   printf("Cannot get regulator status for %s\n",
       regnode_get_name(regnode));
  return (rv);
 }

 if (status == REGULATOR_STATUS_ENABLED)
  return (0);

 rv = regnode_get_voltage(regnode, &uvolt);
 if (rv != 0) {
  if (bootverbose)
   printf("Cannot get regulator voltage for %s\n",
       regnode_get_name(regnode));
  return (rv);
 }

 if (uvolt < regnode->std_param.min_uvolt ||
   uvolt > regnode->std_param.max_uvolt) {
  if (bootverbose)
   printf("Regulator %s current voltage %d is not in the"
       " acceptable range : %d<->%d\n",
       regnode_get_name(regnode),
       uvolt, regnode->std_param.min_uvolt,
       regnode->std_param.max_uvolt);
  return (ERANGE);
 }

 rv = regnode_enable(regnode);
 if (rv != 0) {
  if (bootverbose)
   printf("Cannot enable regulator %s\n",
       regnode_get_name(regnode));
  return (rv);
 }

 return (0);
}
