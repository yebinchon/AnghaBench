
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 char ch_erase ;
 char ch_kill ;
 int fflush (int ) ;
 int fputs (char*,int ) ;
 int isdigit (char) ;
 int isprint (char) ;
 char msglen ;
 scalar_t__ overstrike ;
 int putchar (char) ;
 scalar_t__ read (int ,char*,int) ;
 int stdout ;

int
readline(char *buffer, int size, int numeric)
{
    char *ptr = buffer;
    char ch;
    char cnt = 0;
    char maxcnt = 0;


    size -= 1;


    while ((fflush(stdout), read(0, ptr, 1) > 0))
    {

 if ((ch = *ptr) == '\n' || ch == '\r')
 {
     break;
 }


 if (ch == ch_kill)
 {

     if (overstrike)
     {
  msglen += maxcnt;
     }


     *buffer = '\0';
     putchar('\r');
     return(-1);
 }
 else if (ch == ch_erase)
 {

     if (cnt <= 0)
     {

  putchar('\7');
     }
     else
     {
  fputs("\b \b", stdout);
  ptr--;
  cnt--;
     }
 }

 else if (cnt == size || (numeric && !isdigit(ch)) ||
  !isprint(ch))
 {

     putchar('\7');
 }
 else
 {

     putchar(ch);
     ptr++;
     cnt++;
     if (cnt > maxcnt)
     {
  maxcnt = cnt;
     }
 }
    }


    *ptr = '\0';



    msglen += overstrike ? maxcnt : cnt;


    putchar('\r');
    return(cnt == 0 ? -1 : numeric ? atoi(buffer) : cnt);
}
