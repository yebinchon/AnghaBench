
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_t ;


 int OCS_DEBUG_ENABLE_EQ_DUMP ;
 int ocs_debug_disable (int ) ;
 int ocs_debug_enable (int ) ;
 scalar_t__ ocs_strcasecmp (char*,char*) ;

__attribute__((used)) static int
set_debug_eq_dump(ocs_t *ocs, char *name, char *value)
{
 int result;

 if (ocs_strcasecmp(value, "false") == 0) {
  ocs_debug_disable(OCS_DEBUG_ENABLE_EQ_DUMP);
  result = 0;
 } else if (ocs_strcasecmp(value, "true") == 0) {
  ocs_debug_enable(OCS_DEBUG_ENABLE_EQ_DUMP);
  result = 0;
 } else {
  result = -1;
 }

 return result;
}
