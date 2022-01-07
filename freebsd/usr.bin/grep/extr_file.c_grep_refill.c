
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int fd; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ FILE_MMAP ;
 int MAXBUFSIZ ;
 int buffer ;
 int bufpos ;
 scalar_t__ bufrem ;
 scalar_t__ filebehave ;
 scalar_t__ read (int ,int ,int ) ;

__attribute__((used)) static inline int
grep_refill(struct file *f)
{
 ssize_t nr;

 if (filebehave == FILE_MMAP)
  return (0);

 bufpos = buffer;
 bufrem = 0;

 nr = read(f->fd, buffer, MAXBUFSIZ);
 if (nr < 0)
  return (-1);

 bufrem = nr;
 return (0);
}
