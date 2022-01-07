
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int INT_MAX ;
 scalar_t__ Iflag ;
 size_t SIZE_MAX ;
 int enqueue (char*,char,char*) ;
 int errx (int,char*,...) ;
 size_t file1ln ;
 size_t file2ln ;
 int free (char*) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ lflag ;
 int printa (int *,size_t) ;
 int printc (int *,size_t,int *,size_t) ;
 int printd (int *,size_t) ;
 int processq () ;
 size_t strtonum (char*,int ,int ,char const**) ;
 char* xfgets (int *) ;

__attribute__((used)) static int
parsecmd(FILE *diffpipe, FILE *file1, FILE *file2)
{
 size_t file1start, file1end, file2start, file2end, n;

 char *line, *p, *q;
 const char *errstr;
 char c, cmd;


 if (!(line = xfgets(diffpipe)))
  return (EOF);

 p = line;

 while (isdigit(*p))
  ++p;
 c = *p;
 *p++ = 0;
 file1start = strtonum(line, 0, INT_MAX, &errstr);
 if (errstr)
  errx(2, "file1 start is %s: %s", errstr, line);


 if (c == ',') {
  q = p;

  while (isdigit(*p))
   ++p;
  c = *p;
  *p++ = 0;
  file1end = strtonum(q, 0, INT_MAX, &errstr);
  if (errstr)
   errx(2, "file1 end is %s: %s", errstr, line);
  if (file1start > file1end)
   errx(2, "invalid line range in file1: %s", line);
 } else
  file1end = file1start;

 cmd = c;

 if (!(cmd == 'a' || cmd == 'c' || cmd == 'd'))
  errx(2, "ed command not recognized: %c: %s", cmd, line);

 q = p;

 while (isdigit(*p))
  ++p;
 c = *p;
 *p++ = 0;
 file2start = strtonum(q, 0, INT_MAX, &errstr);
 if (errstr)
  errx(2, "file2 start is %s: %s", errstr, line);





 if (c != ',' && c != '\0')
  errx(2, "invalid line range in file2: %c: %s", c, line);

 if (c == ',') {

  file2end = strtonum(p, 0, INT_MAX, &errstr);
  if (errstr)
   errx(2, "file2 end is %s: %s", errstr, line);
  if (file2start >= file2end)
   errx(2, "invalid line range in file2: %s", line);
 } else
  file2end = file2start;


 if (cmd == 'a') {
  if (file1start != file1end)
   errx(2, "append cannot have a file1 range: %s",
       line);
  if (file1start == SIZE_MAX)
   errx(2, "file1 line range too high: %s", line);
  file1start = ++file1end;
 }




 else if (cmd == 'd') {
  if (file2start != file2end)
   errx(2, "delete cannot have a file2 range: %s",
       line);
  if (file2start == SIZE_MAX)
   errx(2, "file2 line range too high: %s", line);
  file2start = ++file2end;
 }





 for (; file1ln < file1start && file2ln < file2start;
     ++file1ln, ++file2ln) {
  char *s1, *s2;

  if (!(s1 = xfgets(file1)))
   errx(2, "file1 shorter than expected");
  if (!(s2 = xfgets(file2)))
   errx(2, "file2 shorter than expected");


  if (lflag) {
   free(s2);







   if (Iflag)
    enqueue(s1, '(', ((void*)0));
   else
    enqueue(s1, ' ', ((void*)0));
  } else
   enqueue(s1, ' ', s2);
 }

 for (; file1ln < file1start; ++file1ln) {
  char *s;

  if (!(s = xfgets(file1)))
   errx(2, "file1 shorter than expected");

  enqueue(s, '(', ((void*)0));
 }

 for (; file2ln < file2start; ++file2ln) {
  char *s;

  if (!(s = xfgets(file2)))
   errx(2, "file2 shorter than expected");


  if (lflag)
   free(s);
  else
   enqueue(((void*)0), ')', s);
 }


 processq();

 switch (cmd) {
 case 'a':
  printa(file2, file2end);
  n = file2end - file2start + 1;
  break;
 case 'c':
  printc(file1, file1end, file2, file2end);
  n = file1end - file1start + 1 + 1 + file2end - file2start + 1;
  break;
 case 'd':
  printd(file1, file1end);
  n = file1end - file1start + 1;
  break;
 default:
  errx(2, "invalid diff command: %c: %s", cmd, line);
 }
 free(line);


 while (n--) {
  if (!(line = xfgets(diffpipe)))
   errx(2, "diff ended early");
  free(line);
 }

 return (0);
}
