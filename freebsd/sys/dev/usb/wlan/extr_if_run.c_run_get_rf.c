
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
__attribute__((used)) static const char *
run_get_rf(uint16_t rev)
{
 switch (rev) {
 case 138: return "RT2820";
 case 137: return "RT2850";
 case 140: return "RT2720";
 case 139: return "RT2750";
 case 135: return "RT3020";
 case 136: return "RT2020";
 case 134: return "RT3021";
 case 133: return "RT3022";
 case 132: return "RT3052";
 case 131: return "RT3053";
 case 128: return "RT5592";
 case 130: return "RT5370";
 case 129: return "RT5372";
 }
 return ("unknown");
}
