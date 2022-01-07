
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_entry {scalar_t__ ae_entry_type; int ae_flags; scalar_t__ ae_tag; int ae_perm; int ae_id; } ;
struct acl {int acl_cnt; struct acl_entry* acl_entry; } ;
typedef int mode_t ;


 int ACL_APPEND_DATA ;
 int ACL_ENTRY_DIRECTORY_INHERIT ;
 int ACL_ENTRY_FILE_INHERIT ;
 int ACL_ENTRY_INHERIT_ONLY ;
 int ACL_ENTRY_NO_PROPAGATE_INHERIT ;
 scalar_t__ ACL_ENTRY_TYPE_ALLOW ;
 scalar_t__ ACL_ENTRY_TYPE_DENY ;
 scalar_t__ ACL_EVERYONE ;
 int ACL_EXECUTE ;
 scalar_t__ ACL_GROUP ;
 scalar_t__ ACL_GROUP_OBJ ;
 int ACL_MAX_ENTRIES ;
 int ACL_READ_ACL ;
 int ACL_READ_ATTRIBUTES ;
 int ACL_READ_DATA ;
 int ACL_READ_NAMED_ATTRS ;
 int ACL_SYNCHRONIZE ;
 scalar_t__ ACL_USER ;
 scalar_t__ ACL_USER_OBJ ;
 int ACL_WRITE_ACL ;
 int ACL_WRITE_ATTRIBUTES ;
 int ACL_WRITE_DATA ;
 int ACL_WRITE_NAMED_ATTRS ;
 int ACL_WRITE_OWNER ;
 int KASSERT (int,char*) ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 struct acl_entry* _acl_append (struct acl*,scalar_t__,int,scalar_t__) ;
 struct acl_entry* _acl_duplicate_entry (struct acl*,int) ;
 int _acl_entry_matches (struct acl_entry*,scalar_t__,int,scalar_t__) ;

__attribute__((used)) static void
acl_nfs4_sync_acl_from_mode_draft(struct acl *aclp, mode_t mode,
    int file_owner_id)
{
 int i, meets, must_append;
 struct acl_entry *entry, *copy, *previous,
     *a1, *a2, *a3, *a4, *a5, *a6;
 mode_t amode;
 const int READ = 04;
 const int WRITE = 02;
 const int EXEC = 01;

 KASSERT(aclp->acl_cnt <= ACL_MAX_ENTRIES,
     ("aclp->acl_cnt <= ACL_MAX_ENTRIES"));
 for (i = 0; i < aclp->acl_cnt; i++) {
  entry = &(aclp->acl_entry[i]);




  if (entry->ae_entry_type != ACL_ENTRY_TYPE_ALLOW &&
      entry->ae_entry_type != ACL_ENTRY_TYPE_DENY)
   continue;




  if (entry->ae_flags & ACL_ENTRY_INHERIT_ONLY)
   continue;





  if (entry->ae_flags &
      (ACL_ENTRY_FILE_INHERIT | ACL_ENTRY_DIRECTORY_INHERIT)) {





   copy = _acl_duplicate_entry(aclp, i);





   entry->ae_flags |= ACL_ENTRY_INHERIT_ONLY;
   copy->ae_flags &= ~(ACL_ENTRY_FILE_INHERIT |
       ACL_ENTRY_DIRECTORY_INHERIT |
       ACL_ENTRY_NO_PROPAGATE_INHERIT);




   i++;
   entry = copy;
  }






  if (entry->ae_tag == ACL_USER_OBJ ||
      entry->ae_tag == ACL_GROUP_OBJ ||
      entry->ae_tag == ACL_EVERYONE) {
   entry->ae_perm &= ~(ACL_READ_DATA | ACL_WRITE_DATA |
       ACL_APPEND_DATA | ACL_EXECUTE);
   continue;
  }
  if (entry->ae_entry_type != ACL_ENTRY_TYPE_ALLOW)
   continue;

  meets = 0;
  if (i > 0) {
   meets = 1;
   previous = &(aclp->acl_entry[i - 1]);




   if (previous->ae_entry_type != ACL_ENTRY_TYPE_DENY)
    meets = 0;
   if (previous->ae_id != entry->ae_id ||
       previous->ae_tag != entry->ae_tag)
    meets = 0;

   if (previous->ae_flags)
    meets = 0;







   if (previous->ae_perm & ~(entry->ae_perm))
    meets = 0;

   if (previous->ae_perm & ~(ACL_READ_DATA |
       ACL_WRITE_DATA | ACL_APPEND_DATA | ACL_EXECUTE))
    meets = 0;
  }

  if (!meets) {






   previous = entry;
   entry = _acl_duplicate_entry(aclp, i);


   i++;

   previous->ae_tag = entry->ae_tag;
   previous->ae_id = entry->ae_id;
   previous->ae_flags = entry->ae_flags;
   previous->ae_perm = 0;
   previous->ae_entry_type = ACL_ENTRY_TYPE_DENY;
  }
  amode = mode >> 3;







  if (entry->ae_tag == ACL_USER && entry->ae_id == file_owner_id)
   amode = amode >> 3;

  if (entry->ae_perm & ACL_READ_DATA) {
   if (amode & READ)
    previous->ae_perm &= ~ACL_READ_DATA;
   else
    previous->ae_perm |= ACL_READ_DATA;
  }

  if (entry->ae_perm & ACL_WRITE_DATA) {
   if (amode & WRITE)
    previous->ae_perm &= ~ACL_WRITE_DATA;
   else
    previous->ae_perm |= ACL_WRITE_DATA;
  }

  if (entry->ae_perm & ACL_APPEND_DATA) {
   if (amode & WRITE)
    previous->ae_perm &= ~ACL_APPEND_DATA;
   else
    previous->ae_perm |= ACL_APPEND_DATA;
  }

  if (entry->ae_perm & ACL_EXECUTE) {
   if (amode & EXEC)
    previous->ae_perm &= ~ACL_EXECUTE;
   else
    previous->ae_perm |= ACL_EXECUTE;
  }







  if (entry->ae_tag == ACL_GROUP &&
      entry->ae_entry_type == ACL_ENTRY_TYPE_ALLOW) {
   mode_t extramode, ownermode;
   extramode = (mode >> 3) & 07;
   ownermode = mode >> 6;
   extramode &= ~ownermode;

   if (extramode) {
    if (extramode & READ) {
     entry->ae_perm &= ~ACL_READ_DATA;
     previous->ae_perm &= ~ACL_READ_DATA;
    }

    if (extramode & WRITE) {
     entry->ae_perm &=
         ~(ACL_WRITE_DATA | ACL_APPEND_DATA);
     previous->ae_perm &=
         ~(ACL_WRITE_DATA | ACL_APPEND_DATA);
    }

    if (extramode & EXEC) {
     entry->ae_perm &= ~ACL_EXECUTE;
     previous->ae_perm &= ~ACL_EXECUTE;
    }
   }
  }
 }





 must_append = 0;
 if (aclp->acl_cnt < 6) {
  must_append = 1;
 } else {
  a6 = &(aclp->acl_entry[aclp->acl_cnt - 1]);
  a5 = &(aclp->acl_entry[aclp->acl_cnt - 2]);
  a4 = &(aclp->acl_entry[aclp->acl_cnt - 3]);
  a3 = &(aclp->acl_entry[aclp->acl_cnt - 4]);
  a2 = &(aclp->acl_entry[aclp->acl_cnt - 5]);
  a1 = &(aclp->acl_entry[aclp->acl_cnt - 6]);

  if (!_acl_entry_matches(a1, ACL_USER_OBJ, 0,
      ACL_ENTRY_TYPE_DENY))
   must_append = 1;
  if (!_acl_entry_matches(a2, ACL_USER_OBJ, ACL_WRITE_ACL |
      ACL_WRITE_OWNER | ACL_WRITE_ATTRIBUTES |
      ACL_WRITE_NAMED_ATTRS, ACL_ENTRY_TYPE_ALLOW))
   must_append = 1;
  if (!_acl_entry_matches(a3, ACL_GROUP_OBJ, 0,
      ACL_ENTRY_TYPE_DENY))
   must_append = 1;
  if (!_acl_entry_matches(a4, ACL_GROUP_OBJ, 0,
      ACL_ENTRY_TYPE_ALLOW))
   must_append = 1;
  if (!_acl_entry_matches(a5, ACL_EVERYONE, ACL_WRITE_ACL |
      ACL_WRITE_OWNER | ACL_WRITE_ATTRIBUTES |
      ACL_WRITE_NAMED_ATTRS, ACL_ENTRY_TYPE_DENY))
   must_append = 1;
  if (!_acl_entry_matches(a6, ACL_EVERYONE, ACL_READ_ACL |
      ACL_READ_ATTRIBUTES | ACL_READ_NAMED_ATTRS |
      ACL_SYNCHRONIZE, ACL_ENTRY_TYPE_ALLOW))
   must_append = 1;
 }

 if (must_append) {
  KASSERT(aclp->acl_cnt + 6 <= ACL_MAX_ENTRIES,
      ("aclp->acl_cnt <= ACL_MAX_ENTRIES"));

  a1 = _acl_append(aclp, ACL_USER_OBJ, 0, ACL_ENTRY_TYPE_DENY);
  a2 = _acl_append(aclp, ACL_USER_OBJ, ACL_WRITE_ACL |
      ACL_WRITE_OWNER | ACL_WRITE_ATTRIBUTES |
      ACL_WRITE_NAMED_ATTRS, ACL_ENTRY_TYPE_ALLOW);
  a3 = _acl_append(aclp, ACL_GROUP_OBJ, 0, ACL_ENTRY_TYPE_DENY);
  a4 = _acl_append(aclp, ACL_GROUP_OBJ, 0, ACL_ENTRY_TYPE_ALLOW);
  a5 = _acl_append(aclp, ACL_EVERYONE, ACL_WRITE_ACL |
      ACL_WRITE_OWNER | ACL_WRITE_ATTRIBUTES |
      ACL_WRITE_NAMED_ATTRS, ACL_ENTRY_TYPE_DENY);
  a6 = _acl_append(aclp, ACL_EVERYONE, ACL_READ_ACL |
      ACL_READ_ATTRIBUTES | ACL_READ_NAMED_ATTRS |
      ACL_SYNCHRONIZE, ACL_ENTRY_TYPE_ALLOW);

  KASSERT(a1 != ((void*)0) && a2 != ((void*)0) && a3 != ((void*)0) && a4 != ((void*)0) &&
      a5 != ((void*)0) && a6 != ((void*)0), ("couldn't append to ACL."));
 }




 if (mode & S_IRUSR)
  a2->ae_perm |= ACL_READ_DATA;
 else
  a1->ae_perm |= ACL_READ_DATA;
 if (mode & S_IWUSR)
  a2->ae_perm |= (ACL_WRITE_DATA | ACL_APPEND_DATA);
 else
  a1->ae_perm |= (ACL_WRITE_DATA | ACL_APPEND_DATA);
 if (mode & S_IXUSR)
  a2->ae_perm |= ACL_EXECUTE;
 else
  a1->ae_perm |= ACL_EXECUTE;

 if (mode & S_IRGRP)
  a4->ae_perm |= ACL_READ_DATA;
 else
  a3->ae_perm |= ACL_READ_DATA;
 if (mode & S_IWGRP)
  a4->ae_perm |= (ACL_WRITE_DATA | ACL_APPEND_DATA);
 else
  a3->ae_perm |= (ACL_WRITE_DATA | ACL_APPEND_DATA);
 if (mode & S_IXGRP)
  a4->ae_perm |= ACL_EXECUTE;
 else
  a3->ae_perm |= ACL_EXECUTE;

 if (mode & S_IROTH)
  a6->ae_perm |= ACL_READ_DATA;
 else
  a5->ae_perm |= ACL_READ_DATA;
 if (mode & S_IWOTH)
  a6->ae_perm |= (ACL_WRITE_DATA | ACL_APPEND_DATA);
 else
  a5->ae_perm |= (ACL_WRITE_DATA | ACL_APPEND_DATA);
 if (mode & S_IXOTH)
  a6->ae_perm |= ACL_EXECUTE;
 else
  a5->ae_perm |= ACL_EXECUTE;
}
