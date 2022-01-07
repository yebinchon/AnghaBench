
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CASEOF (char,char) ;
 int error (char*) ;
 char* get_line (int) ;
 int isdigit (unsigned char) ;
 int isspace (unsigned char) ;
 long strlen (char*) ;
 int warning (char*,char*) ;
 scalar_t__* wskip (char*) ;
 char* xmalloc (long) ;
 char* xrealloc (char*,long) ;

__attribute__((used)) static char *
getmsg(int fd, char *cptr, char quote)
{
 static char *msg = ((void*)0);
 static long msglen = 0;
 long clen, i;
 char *tptr;

 if (quote && *cptr == quote) {
  ++cptr;
 }

 clen = strlen(cptr) + 1;
 if (clen > msglen) {
  if (msglen)
   msg = xrealloc(msg, clen);
  else
   msg = xmalloc(clen);
  msglen = clen;
 }
 tptr = msg;

 while (*cptr) {
  if (quote && *cptr == quote) {
   char *tmp;
   tmp = cptr + 1;
   if (*tmp && (!isspace((unsigned char) *tmp) || *wskip(tmp))) {
    warning(cptr, "unexpected quote character, ignoring");
    *tptr++ = *cptr++;
   } else {
    *cptr = '\0';
   }
  } else
   if (*cptr == '\\') {
    ++cptr;
    switch (*cptr) {
    case '\0':
     cptr = get_line(fd);
     if (!cptr)
      error("premature end of file");
     msglen += strlen(cptr);
     i = tptr - msg;
     msg = xrealloc(msg, msglen);
     tptr = msg + i;
     break;







    case 'n': *tptr++ = '\n'; ++cptr; break;;
    case 't': *tptr++ = '\t'; ++cptr; break;;
    case 'v': *tptr++ = '\v'; ++cptr; break;;
    case 'b': *tptr++ = '\b'; ++cptr; break;;
    case 'r': *tptr++ = '\r'; ++cptr; break;;
    case 'f': *tptr++ = '\f'; ++cptr; break;;
    case '"': *tptr++ = '"'; ++cptr; break;;
    case '\\': *tptr++ = '\\'; ++cptr; break;;

    default:
     if (quote && *cptr == quote) {
      *tptr++ = *cptr++;
     } else if (isdigit((unsigned char) *cptr)) {
      *tptr = 0;
      for (i = 0; i < 3; ++i) {
       if (!isdigit((unsigned char) *cptr))
        break;
       if (*cptr > '7')
        warning(cptr, "octal number greater than 7?!");
       *tptr *= 8;
       *tptr += (*cptr - '0');
       ++cptr;
      }
     } else {
      warning(cptr, "unrecognized escape sequence");
     }
     break;
    }
   } else {
    *tptr++ = *cptr++;
   }
 }
 *tptr = '\0';
 return (msg);
}
