
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* mt_density_name (int) ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static const char *
denstostring(int d)
{
 static char buf[20];
 const char *name = mt_density_name(d);

 if (name == ((void*)0))
  sprintf(buf, "0x%02x", d);
 else
  sprintf(buf, "0x%02x:%s", d, name);
 return buf;
}
