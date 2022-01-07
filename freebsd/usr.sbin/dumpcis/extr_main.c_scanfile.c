
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuple_list {int dummy; } ;


 int O_RDONLY ;
 int close (int) ;
 int dumpcis (struct tuple_list*) ;
 int freecis (struct tuple_list*) ;
 int open (char*,int ) ;
 int printf (char*,char*) ;
 struct tuple_list* readcis (int) ;

__attribute__((used)) static void
scanfile(char *name)
{
 int fd;
 struct tuple_list *tl;

 fd = open(name, O_RDONLY);
 if (fd < 0)
  return;
 tl = readcis(fd);
 if (tl) {
  printf("Configuration data for file %s\n",
      name);
  dumpcis(tl);
  freecis(tl);
 }
 close(fd);
}
