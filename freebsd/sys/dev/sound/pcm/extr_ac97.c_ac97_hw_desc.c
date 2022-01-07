
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 scalar_t__ bootverbose ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static const char*
ac97_hw_desc(u_int32_t id, const char* vname, const char* cname, char* buf)
{
 if (cname == ((void*)0)) {
  sprintf(buf, "Unknown AC97 Codec (id = 0x%08x)", id);
  return buf;
 }

 if (vname == ((void*)0)) vname = "Unknown";

 if (bootverbose) {
  sprintf(buf, "%s %s AC97 Codec (id = 0x%08x)", vname, cname, id);
 } else {
  sprintf(buf, "%s %s AC97 Codec", vname, cname);
 }
 return buf;
}
