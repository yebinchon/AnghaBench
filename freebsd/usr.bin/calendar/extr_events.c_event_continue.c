
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {char* text; } ;


 int asprintf (char**,char*,char*,char*) ;
 char* convert (char*) ;
 int errx (int,char*) ;
 int free (char*) ;

void
event_continue(struct event *e, char *txt)
{
 char *oldtext, *text;

 text = convert(txt);
 oldtext = e->text;
 if (oldtext == ((void*)0))
  errx(1, "event_continue: cannot allocate memory");

 asprintf(&e->text, "%s\n%s", oldtext, text);
 if (e->text == ((void*)0))
  errx(1, "event_continue: cannot allocate memory");
 free(oldtext);
 free(text);

 return;
}
