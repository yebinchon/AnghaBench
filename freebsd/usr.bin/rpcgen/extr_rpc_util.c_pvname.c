
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*,int ,char const*) ;
 int fout ;
 int locase (char const*) ;

void
pvname(const char *pname, const char *vnum)
{
 f_print(fout, "%s_%s", locase(pname), vnum);
}
