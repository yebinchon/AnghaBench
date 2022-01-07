
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcisel {int dummy; } ;


 int O_RDWR ;
 int _PATH_DEVPCI ;
 int close (int) ;
 int err (int,char*,int ) ;
 struct pcisel getsel (char const*) ;
 int open (int ,int ,int ) ;
 int putchar (char) ;
 int readone (int,struct pcisel*,long,int) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static void
readit(const char *name, const char *reg, int width)
{
 long rstart;
 long rend;
 long r;
 char *end;
 int i;
 int fd;
 struct pcisel sel;

 fd = open(_PATH_DEVPCI, O_RDWR, 0);
 if (fd < 0)
  err(1, "%s", _PATH_DEVPCI);

 rend = rstart = strtol(reg, &end, 0);
 if (end && *end == ':') {
  end++;
  rend = strtol(end, (char **) 0, 0);
 }
 sel = getsel(name);
 for (i = 1, r = rstart; r <= rend; i++, r += width) {
  readone(fd, &sel, r, width);
  if (i && !(i % 8))
   putchar(' ');
  putchar(i % (16/width) ? ' ' : '\n');
 }
 if (i % (16/width) != 1)
  putchar('\n');
 close(fd);
}
