
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_rights_t ;


 int CAP_CREATE ;
 int CAP_FEXECVE ;
 int CAP_FLOCK ;
 int CAP_FSYNC ;
 int CAP_FTRUNCATE ;
 int CAP_READ ;
 int CAP_SEEK ;
 int CAP_WRITE ;
 int O_ACCMODE ;
 int O_APPEND ;
 int O_CREAT ;
 int O_EXEC ;
 int O_EXLOCK ;
 int O_FSYNC ;


 int O_SHLOCK ;
 int O_SYNC ;
 int O_TRUNC ;

 int cap_rights_set (int *,int ) ;

__attribute__((used)) static __inline void
flags_to_rights(int flags, cap_rights_t *rightsp)
{

 if (flags & O_EXEC) {
  cap_rights_set(rightsp, CAP_FEXECVE);
 } else {
  switch ((flags & O_ACCMODE)) {
  case 130:
   cap_rights_set(rightsp, CAP_READ);
   break;
  case 129:
   cap_rights_set(rightsp, CAP_READ);

  case 128:
   cap_rights_set(rightsp, CAP_WRITE);
   if (!(flags & (O_APPEND | O_TRUNC)))
    cap_rights_set(rightsp, CAP_SEEK);
   break;
  }
 }

 if (flags & O_CREAT)
  cap_rights_set(rightsp, CAP_CREATE);

 if (flags & O_TRUNC)
  cap_rights_set(rightsp, CAP_FTRUNCATE);

 if (flags & (O_SYNC | O_FSYNC))
  cap_rights_set(rightsp, CAP_FSYNC);

 if (flags & (O_EXLOCK | O_SHLOCK))
  cap_rights_set(rightsp, CAP_FLOCK);
}
