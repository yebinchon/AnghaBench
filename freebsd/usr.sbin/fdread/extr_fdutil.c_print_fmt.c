
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_type {int secsize; int trans; int sectrac; int datalen; int gap; int tracks; int heads; int f_gap; int f_inter; int offset_side2; int flags; } ;






 int FL_2STEP ;
 int FL_AUTO ;
 int FL_MFM ;
 int FL_PERPND ;
 int printf (char*,...) ;
 int putc (char,int ) ;
 int stdout ;

void
print_fmt(struct fd_type in)
{
 int secsize, speed;

 secsize = 128 << in.secsize;
 switch (in.trans) {
 case 130: speed = 250; break;
 case 129: speed = 300; break;
 case 128: speed = 500; break;
 case 131: speed = 1000; break;
 default: speed = 1; break;
 }

 printf("%d,%d,%#x,%#x,%d,%d,%d,%#x,%d,%d",
        in.sectrac, secsize, in.datalen, in.gap, in.tracks,
        speed, in.heads, in.f_gap, in.f_inter, in.offset_side2);
 if (in.flags & FL_MFM)
  printf(",+mfm");
 if (in.flags & FL_2STEP)
  printf(",+2step");
 if (in.flags & FL_PERPND)
  printf(",+perpnd");
 if (in.flags & FL_AUTO)
  printf(",+auto");
 putc('\n', stdout);
}
