
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t get_path_prefix(const char *path, size_t pathlen, size_t maxlen)
{
 size_t i = pathlen;
 if (i > 1 && path[i - 1] == '/')
  i--;
 if (i > maxlen)
  i = maxlen;
 do {
  i--;
 } while (i > 0 && path[i] != '/');
 return i;
}
