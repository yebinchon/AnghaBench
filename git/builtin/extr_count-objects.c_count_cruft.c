
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int loose_garbage (char const*) ;

__attribute__((used)) static int count_cruft(const char *basename, const char *path, void *data)
{
 loose_garbage(path);
 return 0;
}
