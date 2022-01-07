
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int autofs_readdir_one (int *,char const*,int,size_t*) ;

__attribute__((used)) static size_t
autofs_dirent_reclen(const char *name)
{
 size_t reclen;

 (void)autofs_readdir_one(((void*)0), name, -1, &reclen);

 return (reclen);
}
