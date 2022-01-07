
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deflate_state {int cx; } ;


 int free (struct deflate_state*) ;
 int inflateEnd (int *) ;

__attribute__((used)) static void
DeflateTermInput(void *v)
{
  struct deflate_state *state = (struct deflate_state *)v;

  inflateEnd(&state->cx);
  free(state);
}
