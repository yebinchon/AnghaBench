
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct dir_struct {int dummy; } ;
struct cache_entry {int dummy; } ;


 int ce_to_dtype (struct cache_entry const*) ;
 int is_excluded (struct dir_struct*,struct index_state*,char const*,int*) ;

__attribute__((used)) static int ce_excluded(struct dir_struct *dir, struct index_state *istate,
         const char *fullname, const struct cache_entry *ce)
{
 int dtype = ce_to_dtype(ce);
 return is_excluded(dir, istate, fullname, &dtype);
}
