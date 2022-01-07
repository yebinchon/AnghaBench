
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
Usage(void)
{
 fprintf(stderr,
  "Usage: fiforead [options] fifofile\n"
  "\t-b <start time integer>\n"
  "\t-B <start time>\n"
  "\t-e <end time integer>\n"
  "\t-E <end time>\n"
  "\t-o <output file>\n"
  "\t-R <regexp> # match regexp\n"
  "\t-t # format timestamps as %%Y%%m%%d%%H%%M%%S\n"
  "\t-T <timestamp format>\n"
 );
 exit (EX_USAGE);
}
