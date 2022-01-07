
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ctladm_opts {char* subopt; int * optname; int argnum; int cmdnum; } ;
typedef int ctladm_optret ;
typedef int ctladm_cmdargs ;


 int CC_OR_AMBIGUOUS ;
 int CC_OR_FOUND ;
 int CC_OR_NOT_FOUND ;
 scalar_t__ strcmp (int *,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int *,char*,int ) ;

ctladm_optret
getoption(struct ctladm_opts *table, char *arg, uint32_t *cmdnum,
   ctladm_cmdargs *argnum, const char **subopt)
{
 struct ctladm_opts *opts;
 int num_matches = 0;

 for (opts = table; (opts != ((void*)0)) && (opts->optname != ((void*)0));
      opts++) {
  if (strncmp(opts->optname, arg, strlen(arg)) == 0) {
   *cmdnum = opts->cmdnum;
   *argnum = opts->argnum;
   *subopt = opts->subopt;

   if (strcmp(opts->optname, arg) == 0)
    return (CC_OR_FOUND);

   if (++num_matches > 1)
    return(CC_OR_AMBIGUOUS);
  }
 }

 if (num_matches > 0)
  return(CC_OR_FOUND);
 else
  return(CC_OR_NOT_FOUND);
}
