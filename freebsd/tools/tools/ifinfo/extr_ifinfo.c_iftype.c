
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NIFTYPES ;
 char const** if_types ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static const char *
iftype(int type)
{
 static char buf[256];

 if (type <= 0 || type >= NIFTYPES) {
  sprintf(buf, "unknown type %d", type);
  return buf;
 }

 return if_types[type];
}
