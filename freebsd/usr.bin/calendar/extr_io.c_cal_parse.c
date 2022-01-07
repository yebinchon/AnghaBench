
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_mon; int tm_mday; int tm_year; scalar_t__ tm_wday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
typedef int ssize_t ;
typedef int dbuf ;
typedef int FILE ;


 int D_MD_ORDER ;
 int F_VARIABLE ;
 int LC_ALL ;
 int MAXCOUNT ;
 int REPLACE (char*,int,int ) ;



 scalar_t__ debug ;
 int doall ;
 int event_add (int,int,int,char*,int,char*,int ) ;
 int event_continue (int ,char*) ;
 int * events ;
 int * extradata ;
 int fclose (int *) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 scalar_t__ isspace (unsigned char) ;
 int memcpy (char*,char*,int ) ;
 int ncny ;
 int ndecsolstice ;
 int neaster ;
 int nfullmoon ;
 int njunsolstice ;
 char* nl_langinfo (int ) ;
 int nmarequinox ;
 int nnewmoon ;
 int npaskha ;
 int nsepequinox ;
 int parsedaymonth (char*,int*,int*,int*,int*,int *) ;
 int set_new_encoding () ;
 int setlocale (int ,char*) ;
 int setnnames () ;
 int setnsequences (char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 int strftime (char*,int,char*,struct tm*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int token (char*,int *,int*) ;

__attribute__((used)) static int
cal_parse(FILE *in, FILE *out)
{
 char *line = ((void*)0);
 char *buf;
 size_t linecap = 0;
 ssize_t linelen;
 ssize_t l;
 static int d_first = -1;
 static int count = 0;
 int i;
 int month[MAXCOUNT];
 int day[MAXCOUNT];
 int year[MAXCOUNT];
 bool skip = 0;
 char dbuf[80];
 char *pp, p;
 struct tm tm;
 int flags;


 tm.tm_sec = 0;
 tm.tm_min = 0;
 tm.tm_hour = 0;
 tm.tm_wday = 0;

 if (in == ((void*)0))
  return (1);

 while ((linelen = getline(&line, &linecap, in)) > 0) {
  if (*line == '#') {
   switch (token(line+1, out, &skip)) {
   case 130:
    free(line);
    return (1);
   case 129:
    continue;
   case 128:
    break;
   default:
    break;
   }
  }

  if (skip)
   continue;

  buf = line;
  for (l = linelen;
       l > 0 && isspace((unsigned char)buf[l - 1]);
       l--)
   ;
  buf[l] = '\0';
  if (buf[0] == '\0')
   continue;
  if (strncmp(buf, "LANG=", 5) == 0) {
   (void)setlocale(LC_ALL, buf + 5);
   d_first = (*nl_langinfo(D_MD_ORDER) == 'd');




   setnnames();
   continue;
  }

  REPLACE("Easter=", 7, neaster);
  REPLACE("Paskha=", 7, npaskha);
  REPLACE("ChineseNewYear=", 15, ncny);
  REPLACE("NewMoon=", 8, nnewmoon);
  REPLACE("FullMoon=", 9, nfullmoon);
  REPLACE("MarEquinox=", 11, nmarequinox);
  REPLACE("SepEquinox=", 11, nsepequinox);
  REPLACE("JunSolstice=", 12, njunsolstice);
  REPLACE("DecSolstice=", 12, ndecsolstice);
  if (strncmp(buf, "SEQUENCE=", 9) == 0) {
   setnsequences(buf + 9);
   continue;
  }





  if (buf[0] == '\t') {
   for (i = 0; i < count; i++)
    event_continue(events[i], buf);
   continue;
  }


  while (isspace((unsigned char)buf[0]))
   memcpy(buf, buf + 1, strlen(buf));


  if ((pp = strchr(buf, '\t')) == ((void*)0))
   continue;


  while (isspace((unsigned char)pp[-1]))
   pp--;

  p = *pp;
  *pp = '\0';
  if ((count = parsedaymonth(buf, year, month, day, &flags,
      extradata)) == 0)
   continue;
  *pp = p;
  if (count < 0) {

   if (debug)
    fprintf(stderr, "Ignored: %s\n", buf);
   if (count == -1)
    continue;
   count = -count + 1;
  }


  while (pp[1] == '\t')
   pp++;

  if (d_first < 0)
   d_first = (*nl_langinfo(D_MD_ORDER) == 'd');

  for (i = 0; i < count; i++) {
   tm.tm_mon = month[i] - 1;
   tm.tm_mday = day[i];
   tm.tm_year = year[i] - 1900;
   (void)strftime(dbuf, sizeof(dbuf),
       d_first ? "%e %b" : "%b %e", &tm);
   if (debug)
    fprintf(stderr, "got %s\n", pp);
   events[i] = event_add(year[i], month[i], day[i], dbuf,
       ((flags &= F_VARIABLE) != 0) ? 1 : 0, pp,
       extradata[i]);
  }
 }

 free(line);
 fclose(in);

 return (0);
}
