
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 int errx (int,char*,char const*) ;

int str2rate(const char *rate)
{
 switch (atoi(rate)) {
 case 54: return 54*2;
 case 48: return 48*2;
 case 36: return 36*2;
 case 24: return 24*2;
 case 18: return 18*2;
 case 12: return 12*2;
 case 9: return 9*2;
 case 6: return 6*2;
 case 11: return 11*2;
 case 5: return 11;
 case 2: return 2*2;
 case 1: return 1*2;
 }
 errx(1, "unknown transmit rate %s", rate);
}
