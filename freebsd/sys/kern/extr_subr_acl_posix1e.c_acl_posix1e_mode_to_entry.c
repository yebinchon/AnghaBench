
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uid_t ;
struct acl_entry {int ae_tag; void* ae_id; scalar_t__ ae_flags; scalar_t__ ae_entry_type; int ae_perm; } ;
typedef int mode_t ;
typedef void* gid_t ;
typedef int acl_tag_t ;




 void* ACL_UNDEFINED_ID ;

 int acl_posix1e_mode_to_perm (int,int ) ;
 int printf (char*,int) ;

struct acl_entry
acl_posix1e_mode_to_entry(acl_tag_t tag, uid_t uid, gid_t gid, mode_t mode)
{
 struct acl_entry acl_entry;

 acl_entry.ae_tag = tag;
 acl_entry.ae_perm = acl_posix1e_mode_to_perm(tag, mode);
 acl_entry.ae_entry_type = 0;
 acl_entry.ae_flags = 0;
 switch(tag) {
 case 128:
  acl_entry.ae_id = uid;
  break;

 case 130:
  acl_entry.ae_id = gid;
  break;

 case 129:
  acl_entry.ae_id = ACL_UNDEFINED_ID;
  break;

 default:
  acl_entry.ae_id = ACL_UNDEFINED_ID;
  printf("acl_posix1e_mode_to_entry: invalid tag (%d)\n", tag);
 }

 return (acl_entry);
}
