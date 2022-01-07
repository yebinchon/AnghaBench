
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int category_file () ;
 int errf (char*,int ) ;
 int errno ;
 scalar_t__ fchmod (int ,int) ;
 scalar_t__ fclose (int *) ;
 int fflush (int ) ;
 int fileno (int *) ;
 int fprintf (int ,char*) ;
 int stdout ;
 int strerror (int ) ;
 int unlink (int ) ;
 scalar_t__ verbose ;

void
close_category(FILE *f)
{
 if (fchmod(fileno(f), 0644) < 0) {
  (void) fclose(f);
  (void) unlink(category_file());
  errf("%s", strerror(errno));
 }
 if (fclose(f) < 0) {
  (void) unlink(category_file());
  errf("%s", strerror(errno));
 }
 if (verbose) {
  (void) fprintf(stdout, "done.\n");
  (void) fflush(stdout);
 }
}
