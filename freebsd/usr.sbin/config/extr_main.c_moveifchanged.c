
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef int off_t ;


 int EX_OSERR ;
 char* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_READ ;
 int err (int ,char*,char const*,...) ;
 scalar_t__ fstat (int,struct stat*) ;
 int memcmp (char*,char*,size_t) ;
 char* mmap (int *,size_t,int ,int ,int,int ) ;
 int munmap (char*,size_t) ;
 int open (char const*,int ) ;
 scalar_t__ rename (char const*,char const*) ;
 scalar_t__ unlink (char const*) ;

void
moveifchanged(const char *from_name, const char *to_name)
{
 char *p, *q;
 int changed;
 size_t tsize;
 struct stat from_sb, to_sb;
 int from_fd, to_fd;

 changed = 0;

 if ((from_fd = open(from_name, O_RDONLY)) < 0)
  err(EX_OSERR, "moveifchanged open(%s)", from_name);

 if ((to_fd = open(to_name, O_RDONLY)) < 0)
  changed++;

 if (!changed && fstat(from_fd, &from_sb) < 0)
  err(EX_OSERR, "moveifchanged fstat(%s)", from_name);

 if (!changed && fstat(to_fd, &to_sb) < 0)
  err(EX_OSERR, "moveifchanged fstat(%s)", to_name);

 if (!changed && from_sb.st_size != to_sb.st_size)
  changed++;

 tsize = (size_t)from_sb.st_size;

 if (!changed) {
  p = mmap(((void*)0), tsize, PROT_READ, MAP_SHARED, from_fd, (off_t)0);
  if (p == MAP_FAILED)
   err(EX_OSERR, "mmap %s", from_name);
  q = mmap(((void*)0), tsize, PROT_READ, MAP_SHARED, to_fd, (off_t)0);
  if (q == MAP_FAILED)
   err(EX_OSERR, "mmap %s", to_name);

  changed = memcmp(p, q, tsize);
  munmap(p, tsize);
  munmap(q, tsize);
 }
 if (changed) {
  if (rename(from_name, to_name) < 0)
   err(EX_OSERR, "rename(%s, %s)", from_name, to_name);
 } else {
  if (unlink(from_name) < 0)
   err(EX_OSERR, "unlink(%s)", from_name);
 }
}
