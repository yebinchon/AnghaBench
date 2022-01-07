
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 struct strbuf STRBUF_INIT ;
 int convert_slashes (char*) ;
 char* getenv (char*) ;
 scalar_t__ is_directory (char*) ;
 int setenv (char*,char*,int) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void setup_windows_environment(void)
{
 char *tmp = getenv("TMPDIR");


 if (!tmp) {
  if (!(tmp = getenv("TMP")))
   tmp = getenv("TEMP");
  if (tmp) {
   setenv("TMPDIR", tmp, 1);
   tmp = getenv("TMPDIR");
  }
 }

 if (tmp) {






  convert_slashes(tmp);
 }


 if (!getenv("TERM"))
  setenv("TERM", "cygwin", 1);


 if (!getenv("HOME")) {





  if ((tmp = getenv("HOMEDRIVE"))) {
   struct strbuf buf = STRBUF_INIT;
   strbuf_addstr(&buf, tmp);
   if ((tmp = getenv("HOMEPATH"))) {
    strbuf_addstr(&buf, tmp);
    if (is_directory(buf.buf))
     setenv("HOME", buf.buf, 1);
    else
     tmp = ((void*)0);
   }
   strbuf_release(&buf);
  }

  if (!tmp && (tmp = getenv("USERPROFILE")))
   setenv("HOME", tmp, 1);
 }
}
