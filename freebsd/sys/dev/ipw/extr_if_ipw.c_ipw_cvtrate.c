
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
ipw_cvtrate(int ipwrate)
{
 switch (ipwrate) {
 case 131: return 2;
 case 129: return 4;
 case 128: return 11;
 case 130: return 22;
 }
 return 0;
}
