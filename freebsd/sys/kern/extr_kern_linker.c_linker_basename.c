
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char *
linker_basename(const char *path)
{
 const char *filename;

 filename = strrchr(path, '/');
 if (filename == ((void*)0))
  return path;
 if (filename[1])
  filename++;
 return (filename);
}
