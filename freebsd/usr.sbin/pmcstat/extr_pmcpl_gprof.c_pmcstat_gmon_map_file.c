
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_gmonfile {int pgf_gmondata; int pgf_ndatabytes; int pgf_name; } ;


 int EX_OSERR ;
 int MAP_FAILED ;
 int MAP_NOSYNC ;
 int MAP_SHARED ;
 int O_NOFOLLOW ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int close (int) ;
 int err (int ,char*,char const*) ;
 int mmap (int *,int ,int,int,int,int ) ;
 int open (char const*,int,int ) ;
 char* pmcstat_string_unintern (int ) ;

__attribute__((used)) static void
pmcstat_gmon_map_file(struct pmcstat_gmonfile *pgf)
{
 int fd;
 const char *pathname;

 pathname = pmcstat_string_unintern(pgf->pgf_name);


 if ((fd = open(pathname, O_RDWR | O_NOFOLLOW, 0)) < 0)
  err(EX_OSERR, "ERROR: cannot open \"%s\"", pathname);

 pgf->pgf_gmondata = mmap(((void*)0), pgf->pgf_ndatabytes,
     PROT_READ|PROT_WRITE, MAP_NOSYNC|MAP_SHARED, fd, 0);

 if (pgf->pgf_gmondata == MAP_FAILED)
  err(EX_OSERR, "ERROR: cannot map \"%s\"", pathname);

 (void) close(fd);
}
