
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mkstemp (char*) ;
 int strncpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
create_tempfile(const char *path, char *temp, size_t tsize)
{
 char *p;

 (void)strncpy(temp, path, tsize);
 temp[tsize - 1] = '\0';
 if ((p = strrchr(temp, '/')) != ((void*)0))
  p++;
 else
  p = temp;
 (void)strncpy(p, "INS@XXXX", &temp[tsize - 1] - p);
 temp[tsize - 1] = '\0';
 return (mkstemp(temp));
}
