
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pred1_state {size_t hash; int * dict; } ;


 int HASH (struct pred1_state*,int ) ;

__attribute__((used)) static void
SyncTable(struct pred1_state *state, u_char *source, u_char *dest, int len)
{
  while (len--) {
    *dest++ = state->dict[state->hash] = *source;
    HASH(state, *source++);
  }
}
