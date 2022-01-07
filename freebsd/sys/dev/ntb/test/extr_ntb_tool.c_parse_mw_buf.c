
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ ssize_t ;


 scalar_t__ DEFAULT_MW_OFF ;
 scalar_t__ DEFAULT_MW_SIZE ;
 int EINVAL ;
 int printf (char*) ;
 int sscanf (char*,char*,char*,char*,scalar_t__*,char*,scalar_t__*,char*,scalar_t__*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
parse_mw_buf(char *buf, char *cmd, ssize_t *offset, ssize_t *buf_size,
    uint64_t *pattern, bool *s_pflag)
{
 char op1[8], op2[8], op3[8];
 uint64_t val1, val2, val3;
 bool vs1, vs2, vs3;
 int rc = 0;

 vs1 = vs2 = vs3 = 0;
 sscanf(buf, "%c %s %jx %s %jx %s %jx",
     cmd, op1, &val1, op2, &val2, op3, &val3);

 if (*cmd != 'W' && *cmd != 'R')
  return (EINVAL);

 if (!strcmp(op1, "offset")) {
  *offset = val1 ? val1 : DEFAULT_MW_OFF;
  vs1 = 1;
 } else if (!strcmp(op1, "nbytes")) {
  *buf_size = val1 ? val1: DEFAULT_MW_SIZE;
  vs2 = 1;
 } else if (!strcmp(op1, "pattern")) {
  *pattern = val1;
  vs3 = 1;
 }

 if (!vs1 && !strcmp(op2, "offset")) {
  *offset = val2 ? val2 : DEFAULT_MW_OFF;
  vs1 = 1;
 } else if (!vs2 && !strcmp(op2, "nbytes")) {
  *buf_size = val2 ? val2: DEFAULT_MW_SIZE;
  vs2 = 1;
 } else if (!vs3 && !strcmp(op2, "pattern")) {
  *pattern = val2;
  vs3 = 1;
 }

 if (!vs1 && !strcmp(op3, "offset")) {
  *offset = val3 ? val3 : DEFAULT_MW_OFF;
 } else if (!vs2 && !strcmp(op3, "nbytes")) {
  *buf_size = val3 ? val3: DEFAULT_MW_SIZE;
 } else if (!vs3 && !strcmp(op3, "pattern")) {
  *pattern = val3;
  vs3 = 1;
 }

 *s_pflag = vs3;
 if (vs3 && *cmd == 'R')
  printf("NTB_TOOL_WARN: pattern is not supported with read "
      "command\n");

 return (rc);
}
