
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int DB ;


 int DB_HASH ;



 int MAXPATHLEN ;
 int O_RDONLY ;
 int PERM_SECURE ;
 int YP_BADARGS ;
 int YP_BADDB ;
 int YP_NODOM ;
 int YP_NOMAP ;
 int YP_TRUE ;
 int YP_YPERR ;
 int * dbopen (char*,int ,int ,int ,int *) ;
 int errno ;
 int snprintf (char*,int,char*,char*,char const*,char const*) ;
 scalar_t__ strchr (char const*,char) ;
 char* yp_dir ;
 int yp_errno ;
 int yp_error (char*) ;
 int yp_flush () ;
 scalar_t__ yp_validdomain (char const*) ;

DB *
yp_open_db(const char *domain, const char *map)
{
 DB *dbp = ((void*)0);
 char buf[MAXPATHLEN + 2];

 yp_errno = YP_TRUE;

 if (map[0] == '.' || strchr(map, '/')) {
  yp_errno = YP_BADARGS;
  return (((void*)0));
 }







 snprintf(buf, sizeof(buf), "%s/%s/%s", yp_dir, domain, map);




 dbp = dbopen(buf, O_RDONLY, PERM_SECURE, DB_HASH, ((void*)0));

 if (dbp == ((void*)0)) {
  switch (errno) {
  case 128:
   yp_errno = YP_NOMAP;
   break;
  case 130:
   yp_errno = YP_BADDB;
   break;
  default:
   yp_errno = YP_YPERR;
   break;
  }
 }

 return (dbp);
}
