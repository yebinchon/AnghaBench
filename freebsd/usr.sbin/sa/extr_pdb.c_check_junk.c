
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct cmdinfo {char* ci_comm; scalar_t__ ci_calls; } ;


 char* fgetln (int ,size_t*) ;
 int fprintf (int ,char*,char*,int ) ;
 int stderr ;
 int stdin ;

__attribute__((used)) static int
check_junk(const struct cmdinfo *cip)
{
 char *cp;
 size_t len;

 fprintf(stderr, "%s (%ju) -- ", cip->ci_comm, (uintmax_t)cip->ci_calls);
 cp = fgetln(stdin, &len);

 return (cp && (cp[0] == 'y' || cp[0] == 'Y')) ? 1 : 0;
}
