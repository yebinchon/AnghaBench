
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline int
mwl_cvtlegacyrate(int rate)
{
 switch (rate) {
 case 2: return 0;
 case 4: return 1;
 case 11: return 2;
 case 22: return 3;
 case 44: return 4;
 case 12: return 5;
 case 18: return 6;
 case 24: return 7;
 case 36: return 8;
 case 48: return 9;
 case 72: return 10;
 case 96: return 11;
 case 108:return 12;
 }
 return 0;
}
