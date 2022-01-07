
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {char* cchar; char* fmt; } ;
typedef TYPE_1__ PR ;


 scalar_t__ isprint (int) ;
 scalar_t__ odmode ;
 int printf (char*,...) ;

void
conv_u(PR *pr, u_char *p)
{
 static char const * list[] = {
  "nul", "soh", "stx", "etx", "eot", "enq", "ack", "bel",
   "bs", "ht", "lf", "vt", "ff", "cr", "so", "si",
  "dle", "dc1", "dc2", "dc3", "dc4", "nak", "syn", "etb",
  "can", "em", "sub", "esc", "fs", "gs", "rs", "us",
 };


 if (*p <= 0x1f) {
  *pr->cchar = 's';
  if (odmode && *p == 0x0a)
   (void)printf(pr->fmt, "nl");
  else
   (void)printf(pr->fmt, list[*p]);
 } else if (*p == 0x7f) {
  *pr->cchar = 's';
  (void)printf(pr->fmt, "del");
 } else if (odmode && *p == 0x20) {
  *pr->cchar = 's';
  (void)printf(pr->fmt, " sp");
 } else if (isprint(*p)) {
  *pr->cchar = 'c';
  (void)printf(pr->fmt, *p);
 } else {
  *pr->cchar = 'x';
  (void)printf(pr->fmt, (int)*p);
 }
}
