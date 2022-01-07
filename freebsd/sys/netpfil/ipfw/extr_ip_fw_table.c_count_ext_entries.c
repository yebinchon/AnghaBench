
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_args {int cnt; } ;



__attribute__((used)) static int
count_ext_entries(void *e, void *arg)
{
 struct dump_args *da;

 da = (struct dump_args *)arg;
 da->cnt++;

 return (0);
}
