
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scrnmap ;
typedef int scrmap_t ;
typedef int FILE ;


 int PIO_SCRNMAP ;
 char* SCRNMAP_PATH ;
 int decode (int *,char*,int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int fclose (int *) ;
 size_t fread (int *,int,int,int *) ;
 int ioctl (int ,int ,int *) ;
 int * openguess (char const**,char const**,char const**,char const**,char**) ;
 int revert () ;
 int rewind (int *) ;

__attribute__((used)) static void
load_scrnmap(const char *filename)
{
 FILE *fd;
 int size;
 char *name;
 scrmap_t scrnmap;
 const char *a[] = {"", SCRNMAP_PATH, ((void*)0)};
 const char *b[] = {filename, ((void*)0)};
 const char *c[] = {"", ".scm", ((void*)0)};
 const char *d[] = {"", ((void*)0)};

 fd = openguess(a, b, c, d, &name);

 if (fd == ((void*)0)) {
  revert();
  errx(1, "screenmap file not found");
 }

 size = sizeof(scrnmap);

 if (decode(fd, (char *)&scrnmap, size) != size) {
  rewind(fd);

  if (fread(&scrnmap, 1, size, fd) != (size_t)size) {
   fclose(fd);
   revert();
   errx(1, "bad screenmap file");
  }
 }

 if (ioctl(0, PIO_SCRNMAP, &scrnmap) == -1) {
  revert();
  err(1, "loading screenmap");
 }

 fclose(fd);
}
