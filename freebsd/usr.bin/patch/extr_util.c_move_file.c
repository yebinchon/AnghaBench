
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ EXDEV ;
 int O_RDONLY ;
 int STDOUT_FILENO ;
 scalar_t__ backup_file (char const*) ;
 int buf ;
 int buf_size ;
 int close (int) ;
 scalar_t__ copy_file (char const*,char const*) ;
 int debug ;
 scalar_t__ errno ;
 int open (char const*,int ) ;
 int pfatal (char*,...) ;
 scalar_t__ read (int,int ,int ) ;
 scalar_t__ rename (char const*,char const*) ;
 int say (char*,char const*,...) ;
 scalar_t__ strEQ (char const*,char*) ;
 int strerror (scalar_t__) ;
 scalar_t__ write (int ,int ,scalar_t__) ;

int
move_file(const char *from, const char *to)
{
 int fromfd;
 ssize_t i;



 if (strEQ(to, "-")) {




  fromfd = open(from, O_RDONLY);
  if (fromfd < 0)
   pfatal("internal error, can't reopen %s", from);
  while ((i = read(fromfd, buf, buf_size)) > 0)
   if (write(STDOUT_FILENO, buf, i) != i)
    pfatal("write failed");
  close(fromfd);
  return 0;
 }
 if (backup_file(to) < 0) {
  say("Can't backup %s, output is in %s: %s\n", to, from,
      strerror(errno));
  return -1;
 }




 if (rename(from, to) < 0) {
  if (errno != EXDEV || copy_file(from, to) < 0) {
   say("Can't create %s, output is in %s: %s\n",
       to, from, strerror(errno));
   return -1;
  }
 }
 return 0;
}
