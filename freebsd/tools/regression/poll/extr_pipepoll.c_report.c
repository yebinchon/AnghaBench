
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* decode_events (int) ;
 int fflush (int ) ;
 int printf (char*,...) ;
 int report_state (char const*) ;
 int stdout ;

__attribute__((used)) static void
report(int num, const char *state, int expected, int got, int res,
    int res_expected)
{

 if (res != res_expected) {
  printf("not ok %-2d", num);
  report_state(state);
  printf("poll result %d expected %d. ",
      res, res_expected);
 } else {
  if (expected == got)
   printf("ok %-2d    ", num);
  else
   printf("not ok %-2d", num);
  report_state(state);
 }
 printf("expected %s; got %s\n", decode_events(expected),
     decode_events(got));
 fflush(stdout);
}
