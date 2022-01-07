
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int new_mode; } ;
struct gitdiff_data {int linenr; } ;


 int parse_mode_line (char const*,int ,int *) ;

__attribute__((used)) static int gitdiff_newmode(struct gitdiff_data *state,
      const char *line,
      struct patch *patch)
{
 return parse_mode_line(line, state->linenr, &patch->new_mode);
}
