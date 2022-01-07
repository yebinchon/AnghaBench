
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int SEEK_CUR ;
 int fgetc (int ) ;
 int fseeko (int ,int,int ) ;
 int pfp ;

__attribute__((used)) static bool
remove_special_line(void)
{
 int c;

 c = fgetc(pfp);
 if (c == '\\') {
  do {
   c = fgetc(pfp);
  } while (c != EOF && c != '\n');

  return 1;
 }
 if (c != EOF)
  fseeko(pfp, -1, SEEK_CUR);

 return 0;
}
