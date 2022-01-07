
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISTMD5 ;
 int disttype (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
distfile(const char *path)
{
    const char *s;
    int type;

    if ((type = disttype(path)) == DISTMD5 ||
 ((s = strrchr(path, '.')) != ((void*)0) && s > path &&
  (type = disttype(s + 1)) != 0))
 return type;
    return 0;
}
