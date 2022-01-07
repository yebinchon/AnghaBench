
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCAddMsg (int,char*) ;
 int MCAddSet (int) ;
 int MCDelMsg (int) ;
 int MCDelSet (int) ;
 int atoi (char*) ;
 char* cskip (char*) ;
 char* get_line (int) ;
 char* getmsg (int,char*,char) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int warning (char*,char*) ;
 char* wskip (char*) ;

void
MCParse(int fd)
{
 char *cptr, *str;
 int setid, msgid = 0;
 char quote = 0;



 while ((cptr = get_line(fd))) {
  if (*cptr == '$') {
   ++cptr;
   if (strncmp(cptr, "set", 3) == 0) {
    cptr += 3;
    cptr = wskip(cptr);
    setid = atoi(cptr);
    MCAddSet(setid);
    msgid = 0;
   } else if (strncmp(cptr, "delset", 6) == 0) {
    cptr += 6;
    cptr = wskip(cptr);
    setid = atoi(cptr);
    MCDelSet(setid);
   } else if (strncmp(cptr, "quote", 5) == 0) {
    cptr += 5;
    if (!*cptr)
     quote = 0;
    else {
     cptr = wskip(cptr);
     if (!*cptr)
      quote = 0;
     else
      quote = *cptr;
    }
   } else if (isspace((unsigned char) *cptr)) {
    ;
   } else {
    if (*cptr) {
     cptr = wskip(cptr);
     if (*cptr)
      warning(cptr, "unrecognized line");
    }
   }
  } else {



   if (!*cptr)
    continue;




   if (isdigit((unsigned char) *cptr)) {
    msgid = atoi(cptr);
    cptr = cskip(cptr);
    cptr = wskip(cptr);

   } else {
    warning(cptr, "neither blank line nor start of a message id");
    continue;
   }





   if (!*cptr) {
    MCDelMsg(msgid);
   } else {
    str = getmsg(fd, cptr, quote);
    MCAddMsg(msgid, str);
   }
  }
 }
}
