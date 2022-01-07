
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int FILE ;


 int DEF_BUF ;
 size_t MIN (int ,scalar_t__) ;
 int SEEK_CUR ;
 int err (int,char*) ;
 size_t fread (char*,int,size_t,int *) ;
 int fseeko (int *,scalar_t__,int ) ;

__attribute__((used)) static void
consume(FILE *fp, off_t len, char *buf, int reg)
{
 size_t l;

 if (reg) {
  if (fseeko(fp, len, SEEK_CUR) == -1)
   err(1, ((void*)0));
 }
 else {
  while (len > 0) {
   l = MIN(DEF_BUF, len);
   if (fread(buf, sizeof(char), l, fp) != l)
    err(1, "cannot read buffer");
   len -= l;
  }
 }
}
