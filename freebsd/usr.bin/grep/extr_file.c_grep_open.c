
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;
struct file {int fd; int binary; } ;
typedef int off_t ;


 scalar_t__ BINFILE_TEXT ;
 scalar_t__ FILE_MMAP ;
 scalar_t__ FILE_STDIO ;
 int MADV_SEQUENTIAL ;
 int * MAP_FAILED ;
 int MAP_NOCORE ;
 int MAP_NOSYNC ;
 int MAP_PREFAULT_READ ;
 int MAP_PRIVATE ;
 int MAXBUFSIZ ;
 scalar_t__ OFF_MAX ;
 int O_RDONLY ;
 int PROT_READ ;
 int STDIN_FILENO ;
 int S_ISREG (int ) ;
 scalar_t__ binbehave ;
 int * buffer ;
 int * bufpos ;
 scalar_t__ bufrem ;
 int close (int) ;
 scalar_t__ filebehave ;
 char fileeol ;
 int free (struct file*) ;
 scalar_t__ fsiz ;
 int fstat (int,struct stat*) ;
 void* grep_malloc (int) ;
 scalar_t__ grep_refill (struct file*) ;
 int lbflag ;
 int madvise (int *,scalar_t__,int ) ;
 int * memchr (int *,char,scalar_t__) ;
 int memset (struct file*,int ,int) ;
 int * mmap (int *,scalar_t__,int ,int,int,int ) ;
 int open (char const*,int ) ;

struct file *
grep_open(const char *path)
{
 struct file *f;

 f = grep_malloc(sizeof *f);
 memset(f, 0, sizeof *f);
 if (path == ((void*)0)) {

  lbflag = 1;
  f->fd = STDIN_FILENO;
 } else if ((f->fd = open(path, O_RDONLY)) == -1)
  goto error1;

 if (filebehave == FILE_MMAP) {
  struct stat st;

  if ((fstat(f->fd, &st) == -1) || (st.st_size > OFF_MAX) ||
      (!S_ISREG(st.st_mode)))
   filebehave = FILE_STDIO;
  else {
   int flags = MAP_PRIVATE | MAP_NOCORE | MAP_NOSYNC;



   fsiz = st.st_size;
   buffer = mmap(((void*)0), fsiz, PROT_READ, flags,
        f->fd, (off_t)0);
   if (buffer == MAP_FAILED)
    filebehave = FILE_STDIO;
   else {
    bufrem = st.st_size;
    bufpos = buffer;
    madvise(buffer, st.st_size, MADV_SEQUENTIAL);
   }
  }
 }

 if ((buffer == ((void*)0)) || (buffer == MAP_FAILED))
  buffer = grep_malloc(MAXBUFSIZ);


 if (bufrem == 0 && grep_refill(f) != 0)
  goto error2;


 if (binbehave != BINFILE_TEXT && fileeol != '\0' &&
     memchr(bufpos, '\0', bufrem) != ((void*)0))
  f->binary = 1;

 return (f);

error2:
 close(f->fd);
error1:
 free(f);
 return (((void*)0));
}
