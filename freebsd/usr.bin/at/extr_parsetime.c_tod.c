
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_hour; int tm_min; int tm_mday; int tm_wday; } ;


 scalar_t__ AM ;
 scalar_t__ DOT ;
 scalar_t__ EOF ;
 scalar_t__ MINUS ;
 int NUMBER ;
 scalar_t__ PLUS ;
 scalar_t__ PM ;
 int atoi (int ) ;
 int expect (int ) ;
 int panic (char*) ;
 int sc_token ;
 scalar_t__ sc_tokid ;
 int strlen (int ) ;
 scalar_t__ token () ;

__attribute__((used)) static void
tod(struct tm *tm)
{
    int hour, minute = 0;
    int tlen;

    hour = atoi(sc_token);
    tlen = strlen(sc_token);




    if (token() == DOT) {
 expect(NUMBER);
 minute = atoi(sc_token);
 if (minute > 59)
     panic("garbled time");
 token();
    }
    else if (tlen == 4) {
 minute = hour%100;
 if (minute > 59)
     panic("garbled time");
 hour = hour/100;
    }



    if (sc_tokid == AM || sc_tokid == PM) {
 if (hour > 12)
     panic("garbled time");

 if (sc_tokid == PM) {
     if (hour != 12)
   hour += 12;
 } else {
     if (hour == 12)
   hour = 0;
 }
 token();
    }
    else if (hour > 23)
 panic("garbled time");





    if ((sc_tokid == EOF || sc_tokid == PLUS || sc_tokid == MINUS) &&
 tm->tm_hour > hour) {
 tm->tm_mday++;
 tm->tm_wday++;
    }

    tm->tm_hour = hour;
    tm->tm_min = minute;
    if (tm->tm_hour == 24) {
 tm->tm_hour = 0;
 tm->tm_mday++;
    }
}
