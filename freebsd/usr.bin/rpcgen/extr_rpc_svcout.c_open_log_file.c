
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*,char const*,char const*) ;
 int fout ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void
open_log_file(const char *infile, const char *sp)
{
 char *s;

 s = strrchr(infile, '.');
 if (s)
  *s = '\0';
 f_print(fout, "%sopenlog(\"%s\", LOG_PID, LOG_DAEMON);\n", sp, infile);
 if (s)
  *s = '.';
}
