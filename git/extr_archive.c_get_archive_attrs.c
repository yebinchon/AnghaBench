
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
typedef struct attr_check const attr_check ;


 struct attr_check const* attr_check_initl (char*,char*,int *) ;
 int git_check_attr (struct index_state*,char const*,struct attr_check const*) ;

__attribute__((used)) static const struct attr_check *get_archive_attrs(struct index_state *istate,
        const char *path)
{
 static struct attr_check *check;
 if (!check)
  check = attr_check_initl("export-ignore", "export-subst", ((void*)0));
 git_check_attr(istate, path, check);
 return check;
}
