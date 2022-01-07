
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;


 int convert_to_git (struct index_state const*,char const*,int *,int ,int *,int ) ;

__attribute__((used)) static inline int would_convert_to_git(const struct index_state *istate,
           const char *path)
{
 return convert_to_git(istate, path, ((void*)0), 0, ((void*)0), 0);
}
