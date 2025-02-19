
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* decode_events (int) ;
 int fflush (int ) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static void
report(int num, const char *state, int expected, int got)
{
 if (expected == got)
  printf("ok %-2d    ", num);
 else
  printf("not ok %-2d", num);
 printf(" state %s: expected %s; got %s\n",
     state, decode_events(expected), decode_events(got));
 fflush(stdout);
}
