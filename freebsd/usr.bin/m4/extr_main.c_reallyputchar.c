
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ synch_lineno; scalar_t__ lineno; } ;


 int active ;
 int do_emit_synchline () ;
 size_t ilevel ;
 TYPE_1__* infile ;
 int putc (int,int ) ;
 scalar_t__ synch_lines ;

void
reallyputchar(int c)
{
 putc(c, active);
 if (synch_lines && c == '\n') {
  infile[ilevel].synch_lineno++;
  if (infile[ilevel].synch_lineno != infile[ilevel].lineno)
   do_emit_synchline();
 }
}
