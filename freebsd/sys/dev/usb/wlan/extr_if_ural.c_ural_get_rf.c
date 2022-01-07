
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
ural_get_rf(int rev)
{
 switch (rev) {
 case 134: return "RT2522";
 case 133: return "RT2523";
 case 132: return "RT2524";
 case 131: return "RT2525";
 case 130: return "RT2525e";
 case 129: return "RT2526";
 case 128: return "RT5222";
 default: return "unknown";
 }
}
