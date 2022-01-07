
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am_state {int dummy; } ;


 int am_path (struct am_state const*,char const*) ;
 int write_file (int ,char*,char const*) ;

__attribute__((used)) static void write_state_text(const struct am_state *state,
        const char *name, const char *string)
{
 write_file(am_path(state, name), "%s", string);
}
