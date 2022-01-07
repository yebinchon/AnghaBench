
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am_state {int dir; } ;


 char const* mkpath (char*,int ,char const*) ;

__attribute__((used)) static inline const char *am_path(const struct am_state *state, const char *path)
{
 return mkpath("%s/%s", state->dir, path);
}
