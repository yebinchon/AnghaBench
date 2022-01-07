
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int dialog_msgbox (char const*,char*,int ,int ,int ) ;
 int sprintf (char*,char*,char const*,char*,...) ;
 char* strerror (int) ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static void
gpart_show_error(const char *title, const char *explanation, const char *errstr)
{
 char *errmsg;
 char message[512];
 int error;

 if (explanation == ((void*)0))
  explanation = "";

 error = strtol(errstr, &errmsg, 0);
 if (errmsg != errstr) {
  while (errmsg[0] == ' ')
   errmsg++;
  if (errmsg[0] != '\0')
   sprintf(message, "%s%s. %s", explanation,
       strerror(error), errmsg);
  else
   sprintf(message, "%s%s", explanation, strerror(error));
 } else {
  sprintf(message, "%s%s", explanation, errmsg);
 }

 dialog_msgbox(title, message, 0, 0, TRUE);
}
