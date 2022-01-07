
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ off_t ;
typedef int mode_t ;


 scalar_t__ EFBIG ;
 scalar_t__ ENOENT ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int O_CREAT ;
 int O_WRONLY ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWUSR ;
 int close (int) ;
 int err (int,char*,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,char*) ;
 int expand_number (char*,int *) ;
 int fstat (int,struct stat*) ;
 int ftruncate (int,scalar_t__) ;
 int getopt (int,char**,char*) ;
 int open (char*,int,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int stat (char*,struct stat*) ;
 int usage () ;
 int warn (char*,char*) ;

int
main(int argc, char **argv)
{
 struct stat sb;
 mode_t omode;
 off_t oflow, rsize, sz, tsize, round;
 uint64_t usz;
 int ch, error, fd, oflags;
 int no_create;
 int do_relative;
 int do_round;
 int do_refer;
 int got_size;
 char *fname, *rname;

 fd = -1;
 rsize = tsize = sz = 0;
 no_create = do_relative = do_round = do_refer = got_size = 0;
 error = 0;
 rname = ((void*)0);
 while ((ch = getopt(argc, argv, "cr:s:")) != -1)
  switch (ch) {
  case 'c':
   no_create = 1;
   break;
  case 'r':
   do_refer = 1;
   rname = optarg;
   break;
  case 's':
   if (*optarg == '+' || *optarg == '-') {
    do_relative = 1;
   } else if (*optarg == '%' || *optarg == '/') {
    do_round = 1;
   }
   if (expand_number(do_relative || do_round ?
       optarg + 1 : optarg,
       &usz) == -1 || (off_t)usz < 0)
    errx(EXIT_FAILURE,
        "invalid size argument `%s'", optarg);

   sz = (*optarg == '-' || *optarg == '/') ?
    -(off_t)usz : (off_t)usz;
   got_size = 1;
   break;
  default:
   usage();

  }

 argv += optind;
 argc -= optind;






 if (do_refer + got_size != 1 || argc < 1)
  usage();
 if (do_refer) {
  if (stat(rname, &sb) == -1)
   err(EXIT_FAILURE, "%s", rname);
  tsize = sb.st_size;
 } else if (do_relative || do_round)
  rsize = sz;
 else
  tsize = sz;

 if (no_create)
  oflags = O_WRONLY;
 else
  oflags = O_WRONLY | O_CREAT;
 omode = S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH;

 while ((fname = *argv++) != ((void*)0)) {
  if (fd != -1)
   close(fd);
  if ((fd = open(fname, oflags, omode)) == -1) {
   if (errno != ENOENT) {
    warn("%s", fname);
    error++;
   }
   continue;
  }
  if (do_relative) {
   if (fstat(fd, &sb) == -1) {
    warn("%s", fname);
    error++;
    continue;
   }
   oflow = sb.st_size + rsize;
   if (oflow < (sb.st_size + rsize)) {
    errno = EFBIG;
    warn("%s", fname);
    error++;
    continue;
   }
   tsize = oflow;
  }
  if (do_round) {
   if (fstat(fd, &sb) == -1) {
    warn("%s", fname);
    error++;
    continue;
   }
   sz = rsize;
   if (sz < 0)
    sz = -sz;
   if (sb.st_size % sz) {
    round = sb.st_size / sz;
    if (round != sz && rsize < 0)
     round--;
    else if (rsize > 0)
     round++;
    tsize = (round < 0 ? 0 : round) * sz;
   } else
    tsize = sb.st_size;
  }
  if (tsize < 0)
   tsize = 0;

  if (ftruncate(fd, tsize) == -1) {
   warn("%s", fname);
   error++;
   continue;
  }
 }
 if (fd != -1)
  close(fd);

 return error ? EXIT_FAILURE : EXIT_SUCCESS;
}
