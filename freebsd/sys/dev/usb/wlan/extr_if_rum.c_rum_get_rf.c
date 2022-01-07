
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
rum_get_rf(int rev)
{
 switch (rev) {
 case 131: return "RT2527 (MIMO XR)";
 case 130: return "RT2528";
 case 129: return "RT5225 (MIMO XR)";
 case 128: return "RT5226";
 default: return "unknown";
 }
}
