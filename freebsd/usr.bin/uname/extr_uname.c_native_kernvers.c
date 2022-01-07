
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int getosreldate () ;
 char* kernvers ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
native_kernvers(void)
{
 static char buf[128];

 snprintf(buf, sizeof(buf), "%d", getosreldate());
 kernvers = buf;
}
