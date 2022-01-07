
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_isdst; } ;
 scalar_t__ mktime (struct tm*) ;
 int plonk (int ) ;
 int sc_tokid ;
 int sc_tokplur ;
 int token () ;
 int warnx (char*) ;

__attribute__((used)) static void
plus_or_minus(struct tm *tm, int delay)
{
    int expectplur;

    expectplur = (delay != 1 && delay != -1) ? 1 : 0;

    switch (token()) {
    case 128:
     tm->tm_year += delay;
     break;
    case 130:
     tm->tm_mon += delay;
     break;
    case 129:
     delay *= 7;
    case 133:
     tm->tm_mday += delay;
     break;
    case 132:
     tm->tm_hour += delay;
     break;
    case 131:
     tm->tm_min += delay;
     break;
    default:
         plonk(sc_tokid);
     break;
    }

    if (expectplur != sc_tokplur)
 warnx("pluralization is wrong");

    tm->tm_isdst = -1;
    if (mktime(tm) < 0)
 plonk(sc_tokid);
}
