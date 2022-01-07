
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int read (int ,char*,int) ;
 int write (int ,char*,int) ;

__attribute__((used)) static int
echo(char *s)
{
 char c;

 while (c = *s++) switch (c) {

 case '$':
  read(FD, &c, 1);
  s++;
  break;

 case '#':
  c = *s++;
  write(FD, &c, 1);
  break;

 default:
  write(FD, &c, 1);
  read(FD, &c, 1);
 }
}
