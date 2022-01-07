
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
iconvlist_cb(unsigned int count, const char * const *names, void *data)
{

 return (*(int *)data = ((names == ((void*)0)) && (count > 0)) ? -1 : 0);
}
