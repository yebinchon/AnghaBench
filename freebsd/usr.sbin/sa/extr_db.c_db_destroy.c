
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DB ;


 scalar_t__ DB_CLOSE (int *) ;
 int warn (char*,char const*) ;

void
db_destroy(DB *db, const char *uname)
{
 if (DB_CLOSE(db) < 0)
  warn("destroying %s stats", uname);
}
