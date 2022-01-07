
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 int access (int ,int ) ;
 int git_path_merge_head (int ) ;
 int the_repository ;

__attribute__((used)) static inline int is_merge(void)
{
 return !access(git_path_merge_head(the_repository), F_OK);
}
