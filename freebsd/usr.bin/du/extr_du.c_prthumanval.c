
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int buf ;


 int Aflag ;
 int DEV_BSIZE ;
 int HN_AUTOSCALE ;
 int HN_B ;
 int HN_DECIMAL ;
 int HN_DIVISOR_1000 ;
 int HN_NOSPACE ;
 scalar_t__ UNITS_SI ;
 int cblocksize ;
 scalar_t__ hflag ;
 int humanize_number (char*,int,int ,char*,int ,int) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
prthumanval(int64_t bytes)
{
 char buf[5];
 int flags;

 bytes *= cblocksize;
 flags = HN_B | HN_NOSPACE | HN_DECIMAL;
 if (!Aflag)
  bytes *= DEV_BSIZE;
 if (hflag == UNITS_SI)
  flags |= HN_DIVISOR_1000;

 humanize_number(buf, sizeof(buf), bytes, "", HN_AUTOSCALE, flags);

 (void)printf("%4s", buf);
}
