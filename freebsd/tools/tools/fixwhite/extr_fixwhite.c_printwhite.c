
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int column ;
 int exit (int) ;
 scalar_t__ fwrite (char*,int,scalar_t__,int ) ;
 int peekbyte (int,char) ;
 int perror (char*) ;
 char* queue ;
 scalar_t__ queuelen ;
 int stdout ;

__attribute__((used)) static void
printwhite(void)
{
 off_t i;


 if ((column % 8) == 0) {
  for (i = 0; i < column; i++)
   if (!peekbyte(i + 1, ' '))
    break;
  if (i == column) {
   queuelen -= column;
   for (i = 0; i < column; i += 8)
    queue[queuelen++] = '\t';
  }
 }

 if (fwrite(queue, 1, queuelen, stdout) != queuelen) {
  perror("write");
  exit(1);
 }
 queuelen = 0;
}
