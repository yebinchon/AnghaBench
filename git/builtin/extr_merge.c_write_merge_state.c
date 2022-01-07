
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct commit_list {int dummy; } ;
struct TYPE_3__ {int len; int buf; } ;


 int git_path_merge_msg (int ) ;
 TYPE_1__ merge_msg ;
 int strbuf_addch (TYPE_1__*,char) ;
 int the_repository ;
 int write_file_buf (int ,int ,int ) ;
 int write_merge_heads (struct commit_list*) ;

__attribute__((used)) static void write_merge_state(struct commit_list *remoteheads)
{
 write_merge_heads(remoteheads);
 strbuf_addch(&merge_msg, '\n');
 write_file_buf(git_path_merge_msg(the_repository), merge_msg.buf,
         merge_msg.len);
}
