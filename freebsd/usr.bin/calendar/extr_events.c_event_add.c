
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int month; int day; int var; int * extra; int * text; int * date; } ;


 int addtodate (struct event*,int,int,int) ;
 scalar_t__ calloc (int,int) ;
 void* convert (char*) ;
 int errx (int,char*) ;

struct event *
event_add(int year, int month, int day, char *date, int var, char *txt,
    char *extra)
{
 struct event *e;
 e = (struct event *)calloc(1, sizeof(struct event));
 if (e == ((void*)0))
  errx(1, "event_add: cannot allocate memory");
 e->month = month;
 e->day = day;
 e->var = var;
 e->date = convert(date);
 if (e->date == ((void*)0))
  errx(1, "event_add: cannot allocate memory");
 e->text = convert(txt);
 if (e->text == ((void*)0))
  errx(1, "event_add: cannot allocate memory");
 e->extra = ((void*)0);
 if (extra != ((void*)0) && extra[0] != '\0')
  e->extra = convert(extra);
 addtodate(e, year, month, day);
 return (e);
}
