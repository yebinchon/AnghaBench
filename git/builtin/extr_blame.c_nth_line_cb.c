
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_scoreboard {int dummy; } ;


 char const* blame_nth_line (struct blame_scoreboard*,long) ;

__attribute__((used)) static const char *nth_line_cb(void *data, long lno)
{
 return blame_nth_line((struct blame_scoreboard *)data, lno);
}
