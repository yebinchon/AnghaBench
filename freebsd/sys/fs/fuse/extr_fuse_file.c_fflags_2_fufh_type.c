
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fufh_type_t ;


 int FEXEC ;
 int FREAD ;
 int FUFH_EXEC ;
 int FUFH_RDONLY ;
 int FUFH_RDWR ;
 int FUFH_WRONLY ;
 int FWRITE ;
 int panic (char*,int) ;

__attribute__((used)) static inline fufh_type_t
fflags_2_fufh_type(int fflags)
{
 if ((fflags & FREAD) && (fflags & FWRITE))
  return FUFH_RDWR;
 else if (fflags & (FWRITE))
  return FUFH_WRONLY;
 else if (fflags & (FREAD))
  return FUFH_RDONLY;
 else if (fflags & (FEXEC))
  return FUFH_EXEC;
 else
  panic("FUSE: What kind of a flag is this (%x)?", fflags);
}
