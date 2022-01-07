
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int FILE ;


 int EOF ;
 int EXIT_FAILURE ;
 int O_RDONLY ;
 int SEEK_CUR ;
 scalar_t__ S_ISDIR (int ) ;
 int asprintf (char**,char*,char const*) ;
 int assert (int ) ;
 char* calloc (int,int) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,...) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fgetc (int *) ;
 int fputc (int,int ) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 int fseek (int *,unsigned int,int ) ;
 int fstat (int,struct stat*) ;
 int open (char const*,int ) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int sscanf (char*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int stdout ;

__attribute__((used)) static void
kernconfdump(const char *file)
{
 struct stat st;
 FILE *fp, *pp;
 int error, osz, r;
 unsigned int i, off, size, t1, t2, align;
 char *cmd, *o;

 r = open(file, O_RDONLY);
 if (r == -1)
  err(EXIT_FAILURE, "Couldn't open file '%s'", file);
 error = fstat(r, &st);
 if (error == -1)
  err(EXIT_FAILURE, "fstat() failed");
 if (S_ISDIR(st.st_mode))
  errx(EXIT_FAILURE, "'%s' is a directory", file);
 fp = fdopen(r, "r");
 if (fp == ((void*)0))
  err(EXIT_FAILURE, "fdopen() failed");
 osz = 1024;
 o = calloc(1, osz);
 if (o == ((void*)0))
  err(EXIT_FAILURE, "Couldn't allocate memory");

 asprintf(&cmd, "/usr/bin/elfdump -c %s | grep -A 8 kern_conf"
     "| tail -5 | cut -d ' ' -f 2 | paste - - - - -", file);
 if (cmd == ((void*)0))
  errx(EXIT_FAILURE, "asprintf() failed");
 pp = popen(cmd, "r");
 if (pp == ((void*)0))
  errx(EXIT_FAILURE, "popen() failed");
 free(cmd);
 (void)fread(o, osz, 1, pp);
 pclose(pp);
 r = sscanf(o, "%d%d%d%d%d", &off, &size, &t1, &t2, &align);
 free(o);
 if (r != 5)
  errx(EXIT_FAILURE, "File %s doesn't contain configuration "
      "file. Either unsupported, or not compiled with "
      "INCLUDE_CONFIG_FILE", file);
 r = fseek(fp, off, SEEK_CUR);
 if (r != 0)
  err(EXIT_FAILURE, "fseek() failed");
 for (i = 0; i < size; i++) {
  r = fgetc(fp);
  if (r == EOF)
   break;
  if (r == '\0') {
   assert(i == size - 1 &&
       ("\\0 found in the middle of a file"));
   break;
  }
  fputc(r, stdout);
 }
 fclose(fp);
}
