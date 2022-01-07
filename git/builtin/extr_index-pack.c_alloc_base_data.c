
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct base_data {int ref_last; int ofs_last; } ;


 struct base_data* xcalloc (int,int) ;

__attribute__((used)) static struct base_data *alloc_base_data(void)
{
 struct base_data *base = xcalloc(1, sizeof(struct base_data));
 base->ref_last = -1;
 base->ofs_last = -1;
 return base;
}
