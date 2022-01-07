
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysbuf ;


 char* basename (char*) ;
 int exit (int ) ;
 int free (char*) ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*,...) ;
 char* strdup (char*) ;
 int system (char*) ;
 char tolower (char) ;

__attribute__((used)) static void
firmcvt(char *firmfile)
{
 char *basefile, *outfile, *ptr;
 char sysbuf[1024];

 outfile = strdup(basename(firmfile));
 basefile = strdup(outfile);

 snprintf(sysbuf, sizeof(sysbuf),




     "objcopy -I binary -O elf64-x86-64-freebsd -B i386 %s %s.o\n",

     firmfile, outfile);
 printf("%s", sysbuf);
 system(sysbuf);

 ptr = firmfile;
 while (*ptr) {
  if (*ptr == '/' || *ptr == '.')
   *ptr = '_';
  ptr++;
 }
 ptr = basefile;
 while (*ptr) {
  if (*ptr == '/' || *ptr == '.')
   *ptr = '_';
  else
   *ptr = tolower(*ptr);
  ptr++;
 }

 snprintf(sysbuf, sizeof(sysbuf),
     "objcopy --redefine-sym _binary_%s_start=%s_start "
     "--strip-symbol _binary_%s_size "
     "--redefine-sym _binary_%s_end=%s_end %s.o %s.o\n",
     firmfile, basefile, firmfile, firmfile,
     basefile, outfile, outfile);
 ptr = sysbuf;
 printf("%s", sysbuf);
 system(sysbuf);

 snprintf(sysbuf, sizeof(sysbuf),
     "ld -Bshareable -d -warn-common -o %s.ko %s.o\n",
     outfile, outfile);
 printf("%s", sysbuf);
 system(sysbuf);

 free(basefile);

 exit(0);
}
