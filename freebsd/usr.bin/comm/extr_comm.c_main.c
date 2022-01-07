
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int ssize_t ;
typedef int FILE ;


 int LC_ALL ;
 int * convert (char*) ;
 int err (int,char*,char*) ;
 int exit (int ) ;
 scalar_t__ ferror (int *) ;
 int * file (char*) ;
 int free (int *) ;
 int getline (char**,size_t*,int *) ;
 int getopt (int,char**,char*) ;
 int iflag ;
 scalar_t__ optind ;
 int printf (char*,char const*,char*) ;
 int setlocale (int ,char*) ;
 int show (int *,char*,char const*,char**,size_t*) ;
 int strcmp (char*,char*) ;
 char** tabs ;
 int usage () ;
 int wcscoll (int *,int *) ;

int
main(int argc, char *argv[])
{
 int comp, read1, read2;
 int ch, flag1, flag2, flag3;
 FILE *fp1, *fp2;
 const char *col1, *col2, *col3;
 size_t line1len, line2len;
 char *line1, *line2;
 ssize_t n1, n2;
 wchar_t *tline1, *tline2;
 const char **p;

 (void) setlocale(LC_ALL, "");

 flag1 = flag2 = flag3 = 1;

 while ((ch = getopt(argc, argv, "123i")) != -1)
  switch(ch) {
  case '1':
   flag1 = 0;
   break;
  case '2':
   flag2 = 0;
   break;
  case '3':
   flag3 = 0;
   break;
  case 'i':
   iflag = 1;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc != 2)
  usage();

 fp1 = file(argv[0]);
 fp2 = file(argv[1]);


 p = tabs;
 col1 = col2 = col3 = ((void*)0);
 if (flag1)
  col1 = *p++;
 if (flag2)
  col2 = *p++;
 if (flag3)
  col3 = *p;

 line1len = line2len = 0;
 line1 = line2 = ((void*)0);
 n1 = n2 = -1;

 for (read1 = read2 = 1;;) {

  if (read1) {
   n1 = getline(&line1, &line1len, fp1);
   if (n1 < 0 && ferror(fp1))
    err(1, "%s", argv[0]);
   if (n1 > 0 && line1[n1 - 1] == '\n')
    line1[n1 - 1] = '\0';

  }
  if (read2) {
   n2 = getline(&line2, &line2len, fp2);
   if (n2 < 0 && ferror(fp2))
    err(1, "%s", argv[1]);
   if (n2 > 0 && line2[n2 - 1] == '\n')
    line2[n2 - 1] = '\0';
  }


  if (n1 < 0) {
   if (n2 >= 0 && col2 != ((void*)0))
    show(fp2, argv[1], col2, &line2, &line2len);
   break;
  }
  if (n2 < 0) {
   if (n1 >= 0 && col1 != ((void*)0))
    show(fp1, argv[0], col1, &line1, &line1len);
   break;
  }

  tline2 = ((void*)0);
  if ((tline1 = convert(line1)) != ((void*)0))
   tline2 = convert(line2);
  if (tline1 == ((void*)0) || tline2 == ((void*)0))
   comp = strcmp(line1, line2);
  else
   comp = wcscoll(tline1, tline2);
  if (tline1 != ((void*)0))
   free(tline1);
  if (tline2 != ((void*)0))
   free(tline2);


  if (!comp) {
   read1 = read2 = 1;
   if (col3 != ((void*)0))
    (void)printf("%s%s\n", col3, line1);
   continue;
  }


  if (comp < 0) {
   read1 = 1;
   read2 = 0;
   if (col1 != ((void*)0))
    (void)printf("%s%s\n", col1, line1);
  } else {
   read1 = 0;
   read2 = 1;
   if (col2 != ((void*)0))
    (void)printf("%s%s\n", col2, line2);
  }
 }
 exit(0);
}
