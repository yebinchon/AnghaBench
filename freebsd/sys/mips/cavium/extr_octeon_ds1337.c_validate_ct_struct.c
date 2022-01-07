
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocktime {int sec; int min; int hour; int day; int dow; int mon; int year; } ;


 int CT_CHECK (int,char*) ;

__attribute__((used)) static int validate_ct_struct(struct clocktime *ct)
{
    int rc = 0;

    if (!ct)
 return -1;

    CT_CHECK(ct->sec < 0 || ct->sec > 60, "second");
    CT_CHECK(ct->min < 0 || ct->min > 59, "minute");
    CT_CHECK(ct->hour < 0 || ct->hour > 23, "hour");
    CT_CHECK(ct->day < 1 || ct->day > 31, "day");
    CT_CHECK(ct->dow < 0 || ct->dow > 6, "day of week");
    CT_CHECK(ct->mon < 1 || ct->mon > 12, "month");
    CT_CHECK(ct->year > 2037,"year");

    return rc;
}
