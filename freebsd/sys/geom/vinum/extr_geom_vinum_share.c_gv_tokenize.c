
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ iswhite (char) ;

int
gv_tokenize(char *cptr, char *token[], int maxtoken)
{
 int tokennr;
 char delim;

 for (tokennr = 0; tokennr < maxtoken;) {


  while (iswhite(*cptr))
   cptr++;


  if ((*cptr == '\0') || (*cptr == '\n') || (*cptr == '#'))
   return tokennr;

  delim = *cptr;
  token[tokennr] = cptr;
  tokennr++;


  if (tokennr == maxtoken)
   return tokennr;


  if ((delim == '\'') || (delim == '"')) {
   for (;;) {
    cptr++;


    if ((*cptr == delim) && (cptr[-1] != '\\')) {
     cptr++;


     if (!iswhite(*cptr))
      return -1;


     *cptr++ = '\0';


    } else if ((*cptr == '\0') || (*cptr == '\n'))
     return -1;
   }


  } else {
   while ((*cptr != '\0') &&
       (!iswhite(*cptr)) &&
       (*cptr != '\n'))
    cptr++;


   if (*cptr != '\0')
    *cptr++ = '\0';
  }
 }


 return maxtoken;
}
