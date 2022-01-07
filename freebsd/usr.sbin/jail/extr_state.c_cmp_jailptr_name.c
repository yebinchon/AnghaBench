
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfjail {int name; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int
cmp_jailptr_name(const void *a, const void *b)
{
 return strcmp((const char *)a, ((*(struct cfjail * const *)b))->name);
}
