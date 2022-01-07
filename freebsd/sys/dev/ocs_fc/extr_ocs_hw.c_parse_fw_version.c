
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int HW_FWREV (int,int,int,int) ;
 int HW_FWREV_MAX ;
 int ocs_strtoul (char const*,int ,int ) ;

__attribute__((used)) static uint64_t
parse_fw_version(const char *fwrev_string)
{
 int v[4] = {0};
 const char *p;
 int i;

 for (p = fwrev_string, i = 0; *p && (i < 4); i ++) {
  v[i] = ocs_strtoul(p, 0, 0);
  while(*p && *p != '.') {
   p ++;
  }
  if (*p) {
   p ++;
  }
 }


 if (v[2] == 9999) {
  return HW_FWREV_MAX;
 } else {
  return HW_FWREV(v[0], v[1], v[2], v[3]);
 }
}
