
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_metadata {scalar_t__ md_type; scalar_t__ md_cval; } ;
struct elf_file {int dummy; } ;
typedef int md ;
typedef int cval ;
typedef int Elf_Off ;


 int EFT_KERNEL ;
 int EFT_KLD ;
 int EF_CLOSE (struct elf_file*) ;
 int EF_GET_TYPE (struct elf_file*) ;
 int EF_LOOKUP_SET (struct elf_file*,int ,long*,long*,long*) ;
 int EF_SEG_READ_ENTRY_REL (struct elf_file*,long,int,void*) ;
 int EF_SEG_READ_REL (struct elf_file*,int ,int,struct mod_metadata*) ;
 int EF_SEG_READ_STRING (struct elf_file*,int ,int,char*) ;
 int MAXMODNAME ;
 scalar_t__ MDT_MODULE ;
 int MDT_SETNAME ;
 int check (int ) ;
 scalar_t__ dflag ;
 int ef_obj_open (char*,struct elf_file*,scalar_t__) ;
 int ef_open (char*,struct elf_file*,scalar_t__) ;
 int free (void**) ;
 int parse_entry (struct mod_metadata*,char*,struct elf_file*,char*) ;
 int printf (char*,char*) ;
 scalar_t__ verbose ;
 int warnc (int,char*,char*) ;

__attribute__((used)) static int
read_kld(char *filename, char *kldname)
{
 struct mod_metadata md;
 struct elf_file ef;
 void **p;
 int error, eftype;
 long start, finish, entries, i;
 char cval[MAXMODNAME + 1];

 if (verbose || dflag)
  printf("%s\n", filename);
 error = ef_open(filename, &ef, verbose);
 if (error != 0) {
  error = ef_obj_open(filename, &ef, verbose);
  if (error != 0) {
   if (verbose)
    warnc(error, "elf_open(%s)", filename);
   return (error);
  }
 }
 eftype = EF_GET_TYPE(&ef);
 if (eftype != EFT_KLD && eftype != EFT_KERNEL) {
  EF_CLOSE(&ef);
  return (0);
 }
 do {
  check(EF_LOOKUP_SET(&ef, MDT_SETNAME, &start, &finish,
      &entries));
  check(EF_SEG_READ_ENTRY_REL(&ef, start, sizeof(*p) * entries,
      (void *)&p));
  for (i = 0; i < entries; i++) {
   check(EF_SEG_READ_REL(&ef, (Elf_Off)p[i], sizeof(md),
       &md));
   check(EF_SEG_READ_STRING(&ef, (Elf_Off)md.md_cval,
       sizeof(cval), cval));
   if (md.md_type == MDT_MODULE) {
    parse_entry(&md, cval, &ef, kldname);
    break;
   }
  }
  if (error != 0) {
   warnc(error, "error while reading %s", filename);
   break;
  }




  for (i = 0; i < entries; i++) {
   check(EF_SEG_READ_REL(&ef, (Elf_Off)p[i], sizeof(md),
       &md));
   check(EF_SEG_READ_STRING(&ef, (Elf_Off)md.md_cval,
       sizeof(cval), cval));
   if (md.md_type != MDT_MODULE)
    parse_entry(&md, cval, &ef, kldname);
  }
  if (error != 0)
   warnc(error, "error while reading %s", filename);
  free(p);
 } while(0);
 EF_CLOSE(&ef);
 return (error);
}
