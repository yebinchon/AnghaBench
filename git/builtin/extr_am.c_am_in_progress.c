
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct am_state {int dir; } ;


 int S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 int am_path (struct am_state const*,char*) ;
 scalar_t__ lstat (int ,struct stat*) ;

__attribute__((used)) static int am_in_progress(const struct am_state *state)
{
 struct stat st;

 if (lstat(state->dir, &st) < 0 || !S_ISDIR(st.st_mode))
  return 0;
 if (lstat(am_path(state, "last"), &st) || !S_ISREG(st.st_mode))
  return 0;
 if (lstat(am_path(state, "next"), &st) || !S_ISREG(st.st_mode))
  return 0;
 return 1;
}
