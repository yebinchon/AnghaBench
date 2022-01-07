
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*,int ,char const*) ;
 int getstr (int) ;

__attribute__((used)) static void
unknown(const char *what)
{

 errx(2, "%s: %s", getstr(3), what);
}
