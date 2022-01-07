
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int column ;
 int peekbyte (int,char) ;
 int queuelen ;
 int savebyte (char) ;

__attribute__((used)) static void
savewhite(char c, bool leading)
{
 off_t ncolumn;

 switch (c) {
 case '\n':
  if (leading) {

   queuelen = 0;
   column = 0;
  } else {

   while (peekbyte(1, ' ') || peekbyte(1, '\t'))
    queuelen--;

   if (peekbyte(2, '\n') && peekbyte(1, '\n'))
    return;
   savebyte('\n');
  }
  break;
 case ' ':
  savebyte(' ');
  break;
 case '\t':

  ncolumn = (column / 8 + 1) * 8;
  while (peekbyte(1, ' ')) {
   queuelen--;
   column--;
  }
  while (column < ncolumn)
   savebyte('\t');
  break;
 }
}
