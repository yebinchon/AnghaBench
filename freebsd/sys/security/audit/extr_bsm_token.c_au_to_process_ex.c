
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int token_t ;
typedef int pid_t ;
typedef int gid_t ;
typedef int au_tid_addr_t ;
typedef int au_id_t ;
typedef int au_asid_t ;


 int * au_to_process32_ex (int ,int ,int ,int ,int ,int ,int ,int *) ;

token_t *
au_to_process_ex(au_id_t auid, uid_t euid, gid_t egid, uid_t ruid,
    gid_t rgid, pid_t pid, au_asid_t sid, au_tid_addr_t *tid)
{

 return (au_to_process32_ex(auid, euid, egid, ruid, rgid, pid, sid,
     tid));
}
