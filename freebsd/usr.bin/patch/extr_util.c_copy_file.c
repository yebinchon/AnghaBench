
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int O_CREAT ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 int buf ;
 int buf_size ;
 int close (int) ;
 int open (char const*,int,int) ;
 int pfatal (char*,char const*) ;
 scalar_t__ read (int,int ,int ) ;
 scalar_t__ write (int,int ,scalar_t__) ;

int
copy_file(const char *from, const char *to)
{
 int tofd, fromfd;
 ssize_t i;

 tofd = open(to, O_CREAT|O_TRUNC|O_WRONLY, 0666);
 if (tofd < 0)
  return -1;
 fromfd = open(from, O_RDONLY, 0);
 if (fromfd < 0)
  pfatal("internal error, can't reopen %s", from);
 while ((i = read(fromfd, buf, buf_size)) > 0)
  if (write(tofd, buf, i) != i)
   pfatal("write to %s failed", to);
 close(fromfd);
 close(tofd);
 return 0;
}
