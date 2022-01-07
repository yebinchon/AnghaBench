
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;


 int D_TAPE ;
 int FIODTYPE ;
 int SEEK_SET ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int address ;
 int err (int,char*,char const*) ;
 int fileno (int ) ;
 scalar_t__ fseeko (int ,scalar_t__,int ) ;
 scalar_t__ fstat (int ,struct stat*) ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int noseek () ;
 scalar_t__ skip ;
 int stdin ;

void
doskip(const char *fname, int statok)
{
 int type;
 struct stat sb;

 if (statok) {
  if (fstat(fileno(stdin), &sb))
   err(1, "%s", fname);
  if (S_ISREG(sb.st_mode) && skip > sb.st_size) {
   address += sb.st_size;
   skip -= sb.st_size;
   return;
  }
 }
 if (!statok || S_ISFIFO(sb.st_mode) || S_ISSOCK(sb.st_mode)) {
  noseek();
  return;
 }
 if (S_ISCHR(sb.st_mode) || S_ISBLK(sb.st_mode)) {
  if (ioctl(fileno(stdin), FIODTYPE, &type))
   err(1, "%s", fname);




  if (type & D_TAPE) {
   noseek();
   return;
  }
 }
 if (fseeko(stdin, skip, SEEK_SET)) {
  noseek();
  return;
 }
 address += skip;
 skip = 0;
}
