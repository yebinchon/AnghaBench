
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
rt2661_get_rf(int rev)
{
 switch (rev) {
 case 129: return "RT5225";
 case 128: return "RT5325 (MIMO XR)";
 case 131: return "RT2527";
 case 130: return "RT2529 (MIMO XR)";
 default: return "unknown";
 }
}
