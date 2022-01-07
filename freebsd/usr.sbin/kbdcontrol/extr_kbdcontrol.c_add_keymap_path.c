
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathent {char* path; } ;


 int STAILQ_INSERT_TAIL (int *,struct pathent*,int ) ;
 int err (int,char*) ;
 void* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int next ;
 int pathlist ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
add_keymap_path(const char *path)
{
 struct pathent* pe;
 size_t len;

 len = strlen(path);
 if ((pe = malloc(sizeof(*pe))) == ((void*)0) ||
     (pe->path = malloc(len + 2)) == ((void*)0))
  err(1, "malloc");
 memcpy(pe->path, path, len);
 if (len > 0 && path[len - 1] != '/')
  pe->path[len++] = '/';
 pe->path[len] = '\0';
 STAILQ_INSERT_TAIL(&pathlist, pe, next);
}
