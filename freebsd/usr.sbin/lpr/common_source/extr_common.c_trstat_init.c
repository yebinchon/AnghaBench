
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {char* jobnum; int jobdfnum; int tr_timestr; int tr_start; } ;


 scalar_t__ TIMESTR_SIZE ;
 int lpd_gettime (int *,int ,size_t) ;
 int memset (char*,int ,int) ;
 char* strchr (char const*,char) ;

void
trstat_init(struct printer *pp, const char *fname, int filenum)
{
 register const char *srcp;
 register char *destp, *endp;
 memset(pp->jobnum, 0, sizeof(pp->jobnum));
 pp->jobnum[0] = '0';
 srcp = strchr(fname, '/');
 if (srcp == ((void*)0))
  srcp = fname;
 destp = &(pp->jobnum[0]);
 endp = destp + 5;
 while (*srcp != '\0' && (*srcp < '0' || *srcp > '9'))
  srcp++;
 while (*srcp >= '0' && *srcp <= '9' && destp < endp)
  *(destp++) = *(srcp++);



 pp->jobdfnum = filenum;
 lpd_gettime(&pp->tr_start, pp->tr_timestr, (size_t)TIMESTR_SIZE);

 return;
}
