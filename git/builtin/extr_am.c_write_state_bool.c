
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am_state {int dummy; } ;


 int write_state_text (struct am_state const*,char const*,char*) ;

__attribute__((used)) static void write_state_bool(const struct am_state *state,
        const char *name, int value)
{
 write_state_text(state, name, value ? "t" : "f");
}
