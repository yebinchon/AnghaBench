
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 int OL_ALIAS ;
 int SLIST_INIT (int *) ;
 char* machinename ;
 int otab ;
 int read_option_file (char*,int ) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void
read_options(void)
{
 char fname[MAXPATHLEN];

 SLIST_INIT(&otab);
 read_option_file("../../conf/options", 0);
 (void)snprintf(fname, sizeof fname, "../../conf/options.%s",
     machinename);
 if (!read_option_file(fname, 0)) {
  (void)snprintf(fname, sizeof fname, "options.%s", machinename);
  read_option_file(fname, 0);
 }
 read_option_file("../../conf/options-compat", OL_ALIAS);
}
