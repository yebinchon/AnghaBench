
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATOI2 (char const*) ;
 int errx (int,char*) ;
 int strlen (char const*) ;

int
timeoffset(const char *arg)
{
 int offset;
 int isneg;

 offset = 0;
 isneg = *arg == '-';
 if (isneg)
  arg++;
 switch (strlen(arg)) {
 default:
  errx(1, "Invalid offset spec, must be [-][[HH]MM]SS");

 case 6:
  offset = ATOI2(arg);

 case 4:
  offset = offset * 60 + ATOI2(arg);

 case 2:
  offset = offset * 60 + ATOI2(arg);
 }
 if (isneg)
  return (-offset);
 else
  return (offset);
}
