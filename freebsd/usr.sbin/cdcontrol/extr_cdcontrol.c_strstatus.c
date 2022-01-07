
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
strstatus(int sts)
{
 switch (sts) {
 case 131: return ("invalid");
 case 129: return ("playing");
 case 130: return ("paused");
 case 133: return ("completed");
 case 132: return ("error");
 case 128: return ("void");
 default: return ("??");
 }
}
