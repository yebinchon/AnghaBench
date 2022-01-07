
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int os; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int int32_t ;


 int ocs_log_test (int ,char*,...) ;
 char* ocs_strchr (char*,char) ;
 int ocs_strncpy (char*,char*,int) ;
 char* ocs_strstr (char const*,char const*) ;

__attribute__((used)) static int32_t
ocs_hw_clp_resp_get_value(ocs_hw_t *hw, const char *keyword, char *value, uint32_t value_len, const char *resp, uint32_t resp_len)
{
 char *start = ((void*)0);
 char *end = ((void*)0);


 start = ocs_strstr(resp, keyword);
 if (start == ((void*)0)) {
  ocs_log_test(hw->os, "could not find keyword=%s in CLP response\n",
        keyword);
  return -1;
 }


 start = ocs_strchr(start, '=');
 if (start == ((void*)0)) {
  ocs_log_test(hw->os, "could not find \'=\' in CLP response for keyword=%s\n",
        keyword);
  return -1;
 }
 start++;


 end = ocs_strstr(start, "\r\n");
 if (end == ((void*)0)) {
  ocs_log_test(hw->os, "could not find \\r\\n for keyword=%s in CLP response\n",
        keyword);
  return -1;
 }


 if ((end - start + 1) > value_len) {
  ocs_log_test(hw->os, "value len=%d not large enough for actual=%ld\n",
        value_len, (end-start));
  return -1;
 }

 ocs_strncpy(value, start, (end - start));
 value[end-start] = '\0';
 return (end-start+1);
}
