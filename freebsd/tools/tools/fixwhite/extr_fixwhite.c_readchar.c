
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int exit (int) ;
 scalar_t__ ferror (int ) ;
 int getchar () ;
 int perror (char*) ;
 int stdin ;

__attribute__((used)) static char
readchar(void)
{
 int c;

 c = getchar();
 if (c == EOF && ferror(stdin)) {
  perror("read");
  exit(1);
 }
 return (c);
}
