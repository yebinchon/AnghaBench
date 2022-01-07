
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int destbuf ;
typedef int FILE ;


 int BUFSIZ ;
 int fputc (char,int *) ;
 int fwrite (char*,int,int,int *) ;
 int isprintch (char) ;

__attribute__((used)) static void
filtered_write(char *wbuffer, int wlen, FILE *wstream)
{
 static char lastchar, savedchar;
 char *chkptr, *dest_end, *dest_ch, *nxtptr, *w_end;
 int destlen;
 char destbuf[BUFSIZ];

 if (wbuffer == ((void*)0)) {
  if (savedchar != '\0') {
   if (savedchar == '\r')
    savedchar = '\n';
   fputc(savedchar, wstream);
   lastchar = savedchar;
   savedchar = '\0';
  }
  if (lastchar != '\0' && lastchar != '\n')
   fputc('\n', wstream);
  lastchar = '\0';
  return;
 }

 dest_ch = &destbuf[0];
 dest_end = dest_ch + sizeof(destbuf);
 chkptr = wbuffer;
 w_end = wbuffer + wlen;
 lastchar = '\0';
 if (savedchar != '\0') {
  chkptr = &savedchar;
  nxtptr = wbuffer;
 } else
  nxtptr = chkptr + 1;

 while (chkptr < w_end) {
  if (nxtptr < w_end) {
   if ((*chkptr == '\r' && *nxtptr == '\n') ||
       (*chkptr == '\n' && *nxtptr == '\r')) {
    *dest_ch++ = '\n';

    nxtptr++;
    goto check_next;
   }
  } else {






   savedchar = '\0';
   if (*chkptr == '\r' || *chkptr == '\n') {
    savedchar = *chkptr;
    break;
   }
  }
  if (*chkptr == '\r')
   *dest_ch++ = '\n';





  else
   *dest_ch++ = *chkptr;

check_next:
  chkptr = nxtptr;
  nxtptr = chkptr + 1;
  if (dest_ch >= dest_end) {
   destlen = dest_ch - &destbuf[0];
   fwrite(destbuf, 1, destlen, wstream);
   lastchar = destbuf[destlen - 1];
   dest_ch = &destbuf[0];
  }
 }
 destlen = dest_ch - &destbuf[0];
 if (destlen > 0) {
  fwrite(destbuf, 1, destlen, wstream);
  lastchar = destbuf[destlen - 1];
 }
}
