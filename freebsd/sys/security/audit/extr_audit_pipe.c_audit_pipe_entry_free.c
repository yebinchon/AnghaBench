
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_pipe_entry {struct audit_pipe_entry* ape_record; } ;


 int M_AUDIT_PIPE_ENTRY ;
 int free (struct audit_pipe_entry*,int ) ;

__attribute__((used)) static void
audit_pipe_entry_free(struct audit_pipe_entry *ape)
{

 free(ape->ape_record, M_AUDIT_PIPE_ENTRY);
 free(ape, M_AUDIT_PIPE_ENTRY);
}
