
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
iwi_cvtrate(int iwirate)
{
 switch (iwirate) {
 case 139: return 2;
 case 137: return 4;
 case 136: return 11;
 case 138: return 22;
 case 129: return 12;
 case 128: return 18;
 case 135: return 24;
 case 134: return 36;
 case 133: return 48;
 case 132: return 72;
 case 131: return 96;
 case 130: return 108;
 }
 return 0;
}
