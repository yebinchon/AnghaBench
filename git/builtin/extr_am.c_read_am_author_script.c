
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am_state {int author_date; int author_email; int author_name; } ;


 char* am_path (struct am_state*,char*) ;
 int assert (int) ;
 int read_author_script (char const*,int *,int *,int *,int) ;

__attribute__((used)) static int read_am_author_script(struct am_state *state)
{
 const char *filename = am_path(state, "author-script");

 assert(!state->author_name);
 assert(!state->author_email);
 assert(!state->author_date);

 return read_author_script(filename, &state->author_name,
      &state->author_email, &state->author_date, 1);
}
