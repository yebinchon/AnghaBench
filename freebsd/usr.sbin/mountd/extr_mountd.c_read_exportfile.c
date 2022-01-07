
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int LOG_WARNING ;
 scalar_t__ debug ;
 int exit (int) ;
 int ** exnames ;
 int * exp_file ;
 int fclose (int *) ;
 int * fopen (int *,char*) ;
 int get_exportlist_one (int) ;
 int syslog (int ,char*,...) ;
 int warnx (char*,int *) ;

__attribute__((used)) static void
read_exportfile(int passno)
{
 int done, i;





 done = 0;
 for (i = 0; exnames[i] != ((void*)0); i++) {
  if (debug)
   warnx("reading exports from %s", exnames[i]);
  if ((exp_file = fopen(exnames[i], "r")) == ((void*)0)) {
   syslog(LOG_WARNING, "can't open %s", exnames[i]);
   continue;
  }
  get_exportlist_one(passno);
  fclose(exp_file);
  done++;
 }
 if (done == 0) {
  syslog(LOG_ERR, "can't open any exports file");
  exit(2);
 }
}
