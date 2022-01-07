
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ value; } ;



__attribute__((used)) static int ignore_removal_cb(const struct option *opt, const char *arg, int unset)
{

 *(int *)opt->value = !unset ? 0 : 1;
 return 0;
}
