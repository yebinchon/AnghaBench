
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;




 int snprintf (char*,int,char*,int) ;

const char *
Auth2Nam(u_short auth, u_char type)
{
  static char chap[10];

  switch (auth) {
  case 128:
    return "PAP";
  case 129:
    snprintf(chap, sizeof chap, "CHAP 0x%02x", type);
    return chap;
  case 0:
    return "none";
  }
  return "unknown";
}
