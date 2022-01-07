
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int dummy; } ;


 int RV_NOTFOUND ;
 int RV_OK ;
 int RV_USAGE ;
 int UTXDB_ACTIVE ;
 int UTXDB_LASTLOGIN ;
 int UTXDB_LOG ;
 int assert (int) ;
 int endutxent () ;
 int fprintf (int ,char*,char*) ;
 char* getprogname () ;
 struct utmpx* getutxent () ;
 scalar_t__ setutxdb (int,char const*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int utmpxprint (struct utmpx const*) ;

__attribute__((used)) static int
utmpx(int argc, char *argv[])
{
 const struct utmpx *ut;
 const char *file = ((void*)0);
 int rv = RV_OK, db = 0;

 assert(argc > 1);
 assert(argv != ((void*)0));

 if (argc == 3 || argc == 4) {
  if (strcmp(argv[2], "active") == 0)
   db = UTXDB_ACTIVE;
  else if (strcmp(argv[2], "lastlogin") == 0)
   db = UTXDB_LASTLOGIN;
  else if (strcmp(argv[2], "log") == 0)
   db = UTXDB_LOG;
  else
   rv = RV_USAGE;
  if (argc == 4)
   file = argv[3];
 } else {
  rv = RV_USAGE;
 }

 if (rv == RV_USAGE) {
  fprintf(stderr,
      "Usage: %s utmpx active | lastlogin | log [filename]\n",
      getprogname());
 } else if (rv == RV_OK) {
  if (setutxdb(db, file) != 0)
   return (RV_NOTFOUND);
  while ((ut = getutxent()) != ((void*)0))
   utmpxprint(ut);
  endutxent();
 }
 return (rv);
}
