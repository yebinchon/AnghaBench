
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MGMT_MODE_EX ;
 int MGMT_MODE_RD ;
 int MGMT_MODE_WR ;
 int strcat (char*,char*) ;

__attribute__((used)) static char *mode_string(int mode)
{
 static char mode_str[4];

 mode_str[0] = '\0';
 if (mode & MGMT_MODE_RD) {
  strcat(mode_str, "r");
 }
 if (mode & MGMT_MODE_WR) {
  strcat(mode_str, "w");
 }
 if (mode & MGMT_MODE_EX) {
  strcat(mode_str, "x");
 }

 return mode_str;

}
