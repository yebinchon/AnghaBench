
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;


 int snprintf (char*,int,char*,int) ;
 char* sysdecode_signal (int) ;

__attribute__((used)) static const char *
strsig2(int sig)
{
 static char tmp[32];
 const char *signame;

 signame = sysdecode_signal(sig);
 if (signame == ((void*)0)) {
  snprintf(tmp, sizeof(tmp), "%d", sig);
  signame = tmp;
 }
 return (signame);
}
