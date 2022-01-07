
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char *
stripath(const char *path)
{
    const char *s;

    return ((s = strrchr(path, '/')) != ((void*)0) && s[1] ?
      s + 1 : path);
}
