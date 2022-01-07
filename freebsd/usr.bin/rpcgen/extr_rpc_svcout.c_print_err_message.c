
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _errbuf ;
 int f_print (int ,char*,char const*,int ) ;
 int fout ;
 scalar_t__ inetdflag ;
 scalar_t__ logflag ;
 scalar_t__ pmflag ;

__attribute__((used)) static void
print_err_message(const char *space)
{
 if (logflag)
  f_print(fout, "%ssyslog(LOG_ERR, \"%s\");\n", space, _errbuf);
 else if (inetdflag || pmflag)
  f_print(fout, "%s_msgout(\"%s\");\n", space, _errbuf);
 else
  f_print(fout, "%sfprintf(stderr, \"%s\");\n", space, _errbuf);
}
