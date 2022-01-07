
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef scalar_t__ LINENUM ;


 int SEEK_SET ;
 int buf ;
 int fatal (char*,...) ;
 int fseeko (int ,scalar_t__,int ) ;
 scalar_t__ ftello (int ) ;
 scalar_t__ p_base ;
 scalar_t__ p_input_line ;
 int pfp ;
 size_t pgets (int) ;
 int say (char*,...) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
skip_to(off_t file_pos, LINENUM file_line)
{
 size_t len;

 if (p_base > file_pos)
  fatal("Internal error: seek %lld>%lld\n",
     (long long)p_base, (long long)file_pos);
 if (verbose && p_base < file_pos) {
  fseeko(pfp, p_base, SEEK_SET);
  say("The text leading up to this was:\n--------------------------\n");
  while (ftello(pfp) < file_pos) {
   len = pgets(0);
   if (len == 0)
    fatal("Unexpected end of file\n");
   say("|%s", buf);
  }
  say("--------------------------\n");
 } else
  fseeko(pfp, file_pos, SEEK_SET);
 p_input_line = file_line - 1;
}
