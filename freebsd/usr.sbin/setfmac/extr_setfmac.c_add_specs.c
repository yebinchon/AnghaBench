
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label_specs {int head; } ;
struct label_spec {size_t nentries; int * entries; } ;
typedef int FILE ;


 int STAILQ_INSERT_TAIL (int *,struct label_spec*,int ) ;
 int add_spec_line (char const*,int,int *,char*) ;
 int * calloc (size_t,int) ;
 int chomp_line (char**,size_t*) ;
 int err (int,char*,...) ;
 int errx (int,char*,char const*) ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 scalar_t__ ferror (int *) ;
 char* fgetln (int *,size_t*) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int link ;
 struct label_spec* malloc (int) ;
 int qflag ;
 int rewind (int *) ;
 int warnx (char*,char const*,long) ;

void
add_specs(struct label_specs *specs, const char *file, int is_sebsd)
{
 struct label_spec *spec;
 FILE *fp;
 char *line;
 size_t nlines = 0, linesize;
 int freeline;

 spec = malloc(sizeof(*spec));
 if (spec == ((void*)0))
  err(1, "malloc");
 fp = fopen(file, "r");
 if (fp == ((void*)0))
  err(1, "opening %s", file);
 while ((line = fgetln(fp, &linesize)) != ((void*)0)) {
  freeline = chomp_line(&line, &linesize);
  if (linesize > 0)
   nlines++;
  if (freeline)
   free(line);
 }
 if (ferror(fp))
  err(1, "fgetln on %s", file);
 rewind(fp);
 spec->entries = calloc(nlines, sizeof(*spec->entries));
 if (spec->entries == ((void*)0))
  err(1, "malloc");
 spec->nentries = nlines;
 while (nlines > 0) {
  line = fgetln(fp, &linesize);
  if (line == ((void*)0)) {
   if (feof(fp))
    errx(1, "%s ended prematurely", file);
   else
    err(1, "failure reading %s", file);
  }
  freeline = chomp_line(&line, &linesize);
  if (linesize == 0) {
   if (freeline)
    free(line);
   continue;
  }
  add_spec_line(file, is_sebsd, &spec->entries[--nlines], line);
  if (freeline)
   free(line);
 }
 fclose(fp);
 if (!qflag)
  warnx("%s: read %lu specifications", file,
      (long)spec->nentries);
 STAILQ_INSERT_TAIL(&specs->head, spec, link);
}
