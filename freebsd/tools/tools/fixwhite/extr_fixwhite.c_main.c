
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 scalar_t__ isspace (int) ;
 int printwhite () ;
 int readchar () ;
 int savewhite (int,int) ;
 int writechar (char) ;

int
main(void)
{
 int c;
 bool leading = 1;

 while ((c = readchar()) != EOF) {
  if (isspace(c))

   savewhite(c, leading);
  else {

   printwhite();
   writechar(c);
   leading = 0;
  }
 }

 if (!leading)
  writechar('\n');
 return (0);
}
