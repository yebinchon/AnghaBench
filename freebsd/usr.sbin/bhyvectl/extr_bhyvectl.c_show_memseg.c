
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
typedef int numbuf ;
typedef int name ;


 scalar_t__ EINVAL ;
 int HN_AUTOSCALE ;
 int HN_NOSPACE ;
 int SPECNAMELEN ;
 scalar_t__ errno ;
 int humanize_number (char*,int,size_t,char*,int ,int ) ;
 int printf (char*,...) ;
 int vm_get_memseg (struct vmctx*,int,size_t*,char*,int) ;

__attribute__((used)) static int
show_memseg(struct vmctx *ctx)
{
 char name[SPECNAMELEN + 1], numbuf[8];
 size_t seglen;
 int error, segid;

 printf("ID  Length      Name\n");

 segid = 0;
 while (1) {
  error = vm_get_memseg(ctx, segid, &seglen, name, sizeof(name));
  if (error)
   return (errno == EINVAL ? 0 : error);

  if (seglen) {
   printf("%-4d", segid);
   humanize_number(numbuf, sizeof(numbuf), seglen, "B",
       HN_AUTOSCALE, HN_NOSPACE);
   printf("%-12s", numbuf);
   printf("%s", name[0] ? name : "sysmem");
   printf("\n");
  }
  segid++;
 }
}
