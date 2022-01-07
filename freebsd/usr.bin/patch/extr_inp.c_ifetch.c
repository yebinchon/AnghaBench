
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int off_t ;
typedef int LINENUM ;


 int SEEK_SET ;
 int TMPINNAME ;
 char** i_ptr ;
 int input_lines ;
 int lines_per_buf ;
 scalar_t__ lseek (int ,int ,int ) ;
 int pfatal (char*,...) ;
 scalar_t__ read (int ,char*,int) ;
 int say (char*,int) ;
 char** tibuf ;
 int tibuflen ;
 int tifd ;
 int* tiline ;
 int tireclen ;
 scalar_t__ using_plan_a ;
 int warn_on_invalid_line ;

char *
ifetch(LINENUM line, int whichbuf)
{
 if (line < 1 || line > input_lines) {
  if (warn_on_invalid_line) {
   say("No such line %ld in input file, ignoring\n", line);
   warn_on_invalid_line = 0;
  }
  return ((void*)0);
 }
 if (using_plan_a)
  return i_ptr[line];
 else {
  LINENUM offline = line % lines_per_buf;
  LINENUM baseline = line - offline;

  if (tiline[0] == baseline)
   whichbuf = 0;
  else if (tiline[1] == baseline)
   whichbuf = 1;
  else {
   tiline[whichbuf] = baseline;

   if (lseek(tifd, (off_t) (baseline / lines_per_buf *
       tibuflen), SEEK_SET) < 0)
    pfatal("cannot seek in the temporary input file");

   if (read(tifd, tibuf[whichbuf], tibuflen) !=
       (ssize_t) tibuflen)
    pfatal("error reading tmp file %s", TMPINNAME);
  }
  return tibuf[whichbuf] + (tireclen * offline);
 }
}
