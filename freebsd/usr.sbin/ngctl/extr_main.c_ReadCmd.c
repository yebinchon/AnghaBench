
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CMDRTN_ERROR ;
 int CMDRTN_USAGE ;
 int ReadFile (int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int warn (char*,char*) ;

__attribute__((used)) static int
ReadCmd(int ac, char **av)
{
 FILE *fp;
 int rtn;


 switch (ac) {
 case 2:
  if ((fp = fopen(av[1], "r")) == ((void*)0)) {
   warn("%s", av[1]);
   return (CMDRTN_ERROR);
  }
  break;
 default:
  return (CMDRTN_USAGE);
 }


 rtn = ReadFile(fp);
 fclose(fp);
 return (rtn);
}
