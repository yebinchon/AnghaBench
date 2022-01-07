
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HASHINFO ;
typedef int DB ;


 int DB_HASH ;
 int PERM_SECURE ;
 int * dbopen (char*,int,int ,int ,int *) ;

__attribute__((used)) static DB *
open_db(char *path, int flags)
{
 extern HASHINFO openinfo;

 return(dbopen(path, flags, PERM_SECURE, DB_HASH, &openinfo));
}
