
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct stat {scalar_t__ st_size; int st_mode; } ;
typedef int ptrdiff_t ;


 int MADV_SEQUENTIAL ;
 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 scalar_t__ SIZE_MAX ;
 int S_ISREG (int ) ;
 int ask (char*,char const*) ;
 scalar_t__ batch ;
 char* buf ;
 scalar_t__ check_only ;
 int close (int) ;
 int creat (char const*,int) ;
 int debug ;
 char* empty_line ;
 int fatal (char*,...) ;
 int filemode ;
 scalar_t__ force ;
 int free (char**) ;
 char** i_ptr ;
 size_t i_size ;
 char* i_womp ;
 size_t input_lines ;
 int last_line_missing_eol ;
 int madvise (char*,size_t,int ) ;
 int makedirs (char const*,int) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 char* mmap (int *,size_t,int ,int ,int,int ) ;
 int munmap (char*,size_t) ;
 scalar_t__ ok_to_create_file ;
 int open (char const*,int ) ;
 int out_of_mem ;
 int perror (char*) ;
 int pfatal (char*,char const*) ;
 int reallocate_lines (size_t*) ;
 int rev_in_string (char*) ;
 char const* revision ;
 int say (char*,...) ;
 int set_hunkmax () ;
 int stat (char const*,struct stat*) ;
 scalar_t__ verbose ;

__attribute__((used)) static bool
plan_a(const char *filename)
{
 int ifd, statfailed;
 char *p, *s;
 struct stat filestat;
 ptrdiff_t sz;
 size_t i;
 size_t iline, lines_allocated;






 if (filename == ((void*)0) || *filename == '\0')
  return 0;

 statfailed = stat(filename, &filestat);
 if (statfailed && ok_to_create_file) {
  if (verbose)
   say("(Creating file %s...)\n", filename);






  if (check_only)
   return 1;
  makedirs(filename, 1);
  close(creat(filename, 0666));
  statfailed = stat(filename, &filestat);
 }
 if (statfailed)
  fatal("can't find %s\n", filename);
 filemode = filestat.st_mode;
 if (!S_ISREG(filemode))
  fatal("%s is not a normal file--can't patch\n", filename);
 if ((uint64_t)filestat.st_size > SIZE_MAX) {
  say("block too large to mmap\n");
  return 0;
 }
 i_size = (size_t)filestat.st_size;
 if (out_of_mem) {
  set_hunkmax();
  out_of_mem = 0;
  return 0;
 }
 if ((ifd = open(filename, O_RDONLY)) < 0)
  pfatal("can't open file %s", filename);

 if (i_size) {
  i_womp = mmap(((void*)0), i_size, PROT_READ, MAP_PRIVATE, ifd, 0);
  if (i_womp == MAP_FAILED) {
   perror("mmap failed");
   i_womp = ((void*)0);
   close(ifd);
   return 0;
  }
 } else {
  i_womp = ((void*)0);
 }

 close(ifd);
 if (i_size)
  madvise(i_womp, i_size, MADV_SEQUENTIAL);


 lines_allocated = i_size / 25;
 if (lines_allocated < 100)
  lines_allocated = 100;

 if (!reallocate_lines(&lines_allocated))
  return 0;


 iline = 1;
 i_ptr[iline] = i_womp;




 for (s = i_womp, i = 0; i < i_size; s++, i++) {
  if (*s == '\n') {
   if (iline == lines_allocated) {
    if (!reallocate_lines(&lines_allocated))
     return 0;
   }

   i_ptr[++iline] = s + 1;
  }
 }

 if (i_size > 0 && i_womp[i_size - 1] != '\n') {
  last_line_missing_eol = 1;

  sz = s - i_ptr[iline];
  p = malloc(sz + 1);
  if (p == ((void*)0)) {
   free(i_ptr);
   i_ptr = ((void*)0);
   munmap(i_womp, i_size);
   i_womp = ((void*)0);
   return 0;
  }

  memcpy(p, i_ptr[iline], sz);
  p[sz] = '\n';
  i_ptr[iline] = p;

  i_ptr[++iline] = empty_line;
 } else
  last_line_missing_eol = 0;

 input_lines = iline - 1;



 if (revision != ((void*)0)) {
  if (i_womp == ((void*)0) || !rev_in_string(i_womp)) {
   if (force) {
    if (verbose)
     say("Warning: this file doesn't appear "
         "to be the %s version--patching anyway.\n",
         revision);
   } else if (batch) {
    fatal("this file doesn't appear to be the "
        "%s version--aborting.\n",
        revision);
   } else {
    ask("This file doesn't appear to be the "
        "%s version--patch anyway? [n] ",
        revision);
    if (*buf != 'y')
     fatal("aborted\n");
   }
  } else if (verbose)
   say("Good.  This file appears to be the %s version.\n",
       revision);
 }
 return 1;
}
