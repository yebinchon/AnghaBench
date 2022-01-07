
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am_state {int msg_len; int msg; } ;


 char* am_path (struct am_state const*,char*) ;
 int write_file_buf (char const*,int ,int ) ;

__attribute__((used)) static void write_commit_msg(const struct am_state *state)
{
 const char *filename = am_path(state, "final-commit");
 write_file_buf(filename, state->msg, state->msg_len);
}
