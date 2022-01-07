
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 char const* TMPPATNAME ;
 int buf ;
 int buf_size ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 int fread (int ,int,int ,int ) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int fwrite (int ,int,int,int *) ;
 int next_intuit_at (int ,long) ;
 int p_filesize ;
 int pfatal (char*,char const*) ;
 int * pfp ;
 int set_hunkmax () ;
 int stdin ;
 scalar_t__ strEQ (char const*,char*) ;

void
open_patch_file(const char *filename)
{
 struct stat filestat;
 int nr, nw;

 if (filename == ((void*)0) || *filename == '\0' || strEQ(filename, "-")) {
  pfp = fopen(TMPPATNAME, "w");
  if (pfp == ((void*)0))
   pfatal("can't create %s", TMPPATNAME);
  while ((nr = fread(buf, 1, buf_size, stdin)) > 0) {
   nw = fwrite(buf, 1, nr, pfp);
   if (nr != nw)
    pfatal("write error to %s", TMPPATNAME);
  }
  if (ferror(pfp) || fclose(pfp))
   pfatal("can't write %s", TMPPATNAME);
  filename = TMPPATNAME;
 }
 pfp = fopen(filename, "r");
 if (pfp == ((void*)0))
  pfatal("patch file %s not found", filename);
 if (fstat(fileno(pfp), &filestat))
  pfatal("can't stat %s", filename);
 p_filesize = filestat.st_size;
 next_intuit_at(0, 1L);
 set_hunkmax();
}
