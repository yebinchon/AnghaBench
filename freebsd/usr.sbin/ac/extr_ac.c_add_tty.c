
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_entry {int ret; int line; scalar_t__ len; } ;


 int AC_T ;
 int Flags ;
 int SLIST_INSERT_HEAD (int *,struct tty_entry*,int ) ;
 int Ttys ;
 int errx (int,char*) ;
 struct tty_entry* malloc (int) ;
 int next ;
 char* strchr (int ,char) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void
add_tty(const char *line)
{
 struct tty_entry *tp;
 char *rcp;

 Flags |= AC_T;

 if ((tp = malloc(sizeof(*tp))) == ((void*)0))
  errx(1, "malloc failed");
 tp->len = 0;
 tp->ret = 1;
 if (*line == '!') {
  tp->ret = 0;
  line++;
 }
 strlcpy(tp->line, line, sizeof(tp->line));

 if ((rcp = strchr(tp->line, '*')) != ((void*)0)) {
  *rcp = '\0';

  tp->len = strlen(tp->line);
 }
 SLIST_INSERT_HEAD(&Ttys, tp, next);
}
