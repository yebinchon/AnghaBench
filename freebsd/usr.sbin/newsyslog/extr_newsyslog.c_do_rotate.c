
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zwork ;
typedef int tm ;
typedef scalar_t__ time_t ;
struct zipwork_entry {int zw_fname; int zw_fsize; struct conf_entry const* zw_conf; } ;
struct tm {int dummy; } ;
struct stat {int dummy; } ;
struct sigwork_entry {int dummy; } ;
struct conf_entry {int flags; char* log; int numlogs; scalar_t__ compress; int fsize; int * pid_cmd_file; } ;
typedef int namepart ;
typedef int fk_entry ;
typedef int file2 ;
typedef int file1 ;
typedef int dirpart ;
typedef int datetimestr ;


 int CE_BINARY ;
 int CE_PLAIN0 ;
 scalar_t__ COMPRESS_NONE ;
 int FREE_ENT ;
 int KEEP_ENT ;
 int MAXPATHLEN ;
 char* archdirname ;
 scalar_t__ archtodir ;
 int bzero (struct tm*,int) ;
 int change_attrs (char*,struct conf_entry const*) ;
 int createdir (struct conf_entry const*,char*) ;
 int createlog (struct conf_entry const*) ;
 int delete_classiclog (char*,char*,int) ;
 int delete_oldest_timelog (struct conf_entry const*,char*) ;
 int do_zipwork (struct zipwork_entry*) ;
 int gen_classiclog_fname (char*,int,char*,char*,int) ;
 char* get_logfile_suffix (char*) ;
 int * localtime_r (scalar_t__*,struct tm*) ;
 int log_trim (char*,struct conf_entry const*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int memset (struct zipwork_entry*,int ,int) ;
 scalar_t__ noaction ;
 int printf (char*,...) ;
 int rename (char*,char*) ;
 struct sigwork_entry* save_sigwork (struct conf_entry const*) ;
 int save_zipwork (struct conf_entry const*,struct sigwork_entry*,int ,char*) ;
 int savelog (char*,char*) ;
 int sizefile (char*) ;
 int snprintf (char*,int,char*,char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (int ,char*) ;
 int strftime (char*,int,int *,struct tm*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char const*) ;
 char* strrchr (char*,char) ;
 scalar_t__ time (scalar_t__*) ;
 int * timefnamefmt ;
 int utimes (char*,int *) ;

__attribute__((used)) static fk_entry
do_rotate(const struct conf_entry *ent)
{
 char dirpart[MAXPATHLEN], namepart[MAXPATHLEN];
 char file1[MAXPATHLEN], file2[MAXPATHLEN];
 char zfile1[MAXPATHLEN], zfile2[MAXPATHLEN];
 const char *logfile_suffix;
 char datetimestr[30];
 int flags, numlogs_c;
 fk_entry free_or_keep;
 struct sigwork_entry *swork;
 struct stat st;
 struct tm tm;
 time_t now;

 flags = ent->flags;
 free_or_keep = FREE_ENT;

 if (archtodir) {
  char *p;


  if (*archdirname == '/') {
   strlcpy(dirpart, archdirname, sizeof(dirpart));
  } else {

   strlcpy(dirpart, ent->log, sizeof(dirpart));
   if ((p = strrchr(dirpart, '/')) == ((void*)0))
    dirpart[0] = '\0';
   else
    *(p + 1) = '\0';
   strlcat(dirpart, archdirname, sizeof(dirpart));
  }


  if (lstat(dirpart, &st))
   createdir(ent, dirpart);


  if ((p = strrchr(ent->log, '/')) == ((void*)0))
   strlcpy(namepart, ent->log, sizeof(namepart));
  else
   strlcpy(namepart, p + 1, sizeof(namepart));
 } else {




  dirpart[0] = '\0';
  strlcpy(namepart, ent->log, sizeof(namepart));
 }


 if (timefnamefmt != ((void*)0))
  delete_oldest_timelog(ent, dirpart);
 else {





  delete_classiclog(dirpart, namepart, ent->numlogs);

  if (ent->numlogs > 0)
   delete_classiclog(dirpart, namepart, ent->numlogs - 1);

 }

 if (timefnamefmt != ((void*)0)) {

  if (time(&now) == (time_t)-1 ||
      localtime_r(&now, &tm) == ((void*)0))
   bzero(&tm, sizeof(tm));

  strftime(datetimestr, sizeof(datetimestr), timefnamefmt, &tm);
  if (archtodir)
   (void) snprintf(file1, sizeof(file1), "%s/%s.%s",
       dirpart, namepart, datetimestr);
  else
   (void) snprintf(file1, sizeof(file1), "%s.%s",
       ent->log, datetimestr);


  numlogs_c = -1;
 } else {
  gen_classiclog_fname(file1, sizeof(file1), dirpart, namepart,
      ent->numlogs - 1);
  numlogs_c = ent->numlogs - 2;
 }


 for (; numlogs_c >= 0; numlogs_c--) {
  (void) strlcpy(file2, file1, sizeof(file2));

  gen_classiclog_fname(file1, sizeof(file1), dirpart, namepart,
      numlogs_c);

  logfile_suffix = get_logfile_suffix(file1);
  if (logfile_suffix == ((void*)0))
   continue;
  (void) strlcpy(zfile1, file1, MAXPATHLEN);
  (void) strlcpy(zfile2, file2, MAXPATHLEN);
  (void) strlcat(zfile1, logfile_suffix, MAXPATHLEN);
  (void) strlcat(zfile2, logfile_suffix, MAXPATHLEN);

  if (noaction)
   printf("\tmv %s %s\n", zfile1, zfile2);
  else {

   (void)rename(zfile1, zfile2);
   change_attrs(zfile2, ent);
   if (ent->compress && !strlen(logfile_suffix)) {

    struct zipwork_entry zwork;

    memset(&zwork, 0, sizeof(zwork));
    zwork.zw_conf = ent;
    zwork.zw_fsize = sizefile(zfile2);
    strcpy(zwork.zw_fname, zfile2);
    do_zipwork(&zwork);
   }
  }
 }

 if (ent->numlogs > 0) {
  if (noaction) {






   if (archtodir)
    printf("\tcp %s %s\n", ent->log, file1);
   else
    printf("\tln %s %s\n", ent->log, file1);
   printf("\ttouch %s\t\t"
       "# Update mtime for 'when'-interval processing\n",
       file1);
  } else {
   if (!(flags & CE_BINARY)) {

    log_trim(ent->log, ent);
   }
   savelog(ent->log, file1);





   utimes(file1, ((void*)0));
  }
  change_attrs(file1, ent);
 }


 if (noaction)
  printf("Start new log...\n");
 createlog(ent);







 swork = ((void*)0);
 if (ent->pid_cmd_file != ((void*)0))
  swork = save_sigwork(ent);
 if (ent->numlogs > 0 && ent->compress > COMPRESS_NONE) {
  if (!(ent->flags & CE_PLAIN0) ||
      strcmp(&file1[strlen(file1) - 2], ".0") != 0) {




   free_or_keep = KEEP_ENT;
   save_zipwork(ent, swork, ent->fsize, file1);
  }
 }

 return (free_or_keep);
}
