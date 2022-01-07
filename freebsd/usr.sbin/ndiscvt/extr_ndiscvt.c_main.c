
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ IFNAMSIZ ;
 int SEEK_END ;
 int basename (char*) ;
 int bincvt (char*,char*,void*,int) ;
 void* calloc (int,int) ;
 int err (int,char*,char*,...) ;
 int errx (int,char*) ;
 int exit (int) ;
 int fclose (int *) ;
 int firmcvt (char*) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int fread (void*,int,int,int *) ;
 int free (void*) ;
 int fseek (int *,long,int ) ;
 int ftell (int *) ;
 int getopt (int,char**,char*) ;
 scalar_t__ inf_parse (int *,int *) ;
 scalar_t__ insert_padding (void**,int*) ;
 char* optarg ;
 int rewind (int *) ;
 int * stderr ;
 int * stdout ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (int ) ;
 scalar_t__ strlen (char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 FILE *fp, *outfp;
 int i, bin = 0;
 void *img;
 int n, fsize, cnt;
 unsigned char *ptr;
 char *inffile = ((void*)0), *sysfile = ((void*)0);
 char *outfile = ((void*)0), *firmfile = ((void*)0);
 char *dname = ((void*)0);
 int ch;

 while((ch = getopt(argc, argv, "i:s:o:n:f:O")) != -1) {
  switch(ch) {
  case 'f':
   firmfile = optarg;
   break;
  case 'i':
   inffile = optarg;
   break;
  case 's':
   sysfile = optarg;
   break;
  case 'o':
   outfile = optarg;
   break;
  case 'n':
   dname = optarg;
   break;
  case 'O':
   bin = 1;
   break;
  default:
   usage();
   break;
  }
 }

 if (firmfile != ((void*)0))
  firmcvt(firmfile);

 if (sysfile == ((void*)0))
  usage();


 fp = fopen(sysfile, "r");
 if (fp == ((void*)0))
  err(1, "opening .SYS file '%s' failed", sysfile);
 fseek (fp, 0L, SEEK_END);
 fsize = ftell (fp);
 rewind (fp);
 img = calloc(fsize, 1);
 n = fread (img, fsize, 1, fp);
 if (n == 0)
  err(1, "reading .SYS file '%s' failed", sysfile);

 fclose(fp);

 if (insert_padding(&img, &fsize)) {
  fprintf(stderr, "section relocation failed\n");
  exit(1);
 }

 if (outfile == ((void*)0) || strcmp(outfile, "-") == 0)
  outfp = stdout;
 else {
  outfp = fopen(outfile, "w");
  if (outfp == ((void*)0))
   err(1, "opening output file '%s' failed", outfile);
 }

 fprintf(outfp, "\n/*\n");
 fprintf(outfp, " * Generated from %s and %s (%d bytes)\n",
     inffile == ((void*)0) ? "<notused>" : inffile, sysfile, fsize);
 fprintf(outfp, " */\n\n");

 if (dname != ((void*)0)) {
  if (strlen(dname) > IFNAMSIZ)
   err(1, "selected device name '%s' is "
       "too long (max chars: %d)", dname, IFNAMSIZ);
  fprintf (outfp, "#define NDIS_DEVNAME \"%s\"\n", dname);
  fprintf (outfp, "#define NDIS_MODNAME %s\n\n", dname);
 }

 if (inffile == ((void*)0)) {
  fprintf (outfp, "#ifdef NDIS_REGVALS\n");
  fprintf (outfp, "ndis_cfg ndis_regvals[] = {\n");
         fprintf (outfp, "\t{ NULL, NULL, { 0 }, 0 }\n");
  fprintf (outfp, "#endif /* NDIS_REGVALS */\n");

  fprintf (outfp, "};\n\n");
 } else {
  fp = fopen(inffile, "r");
  if (fp == ((void*)0))
   err(1, "opening .INF file '%s' failed", inffile);


  if (inf_parse(fp, outfp) != 0)
   errx(1, "creating .INF file - no entries created, are you using the correct files?");
  fclose(fp);
 }

 fprintf(outfp, "\n#ifdef NDIS_IMAGE\n");

 if (bin) {
  sysfile = strdup(basename(sysfile));
  ptr = (unsigned char *)sysfile;
  while (*ptr) {
   if (*ptr == '.')
    *ptr = '_';
   ptr++;
  }
  fprintf(outfp,
      "\nextern unsigned char ndis_%s_drv_data_start[];\n",
      sysfile);
  fprintf(outfp, "static unsigned char *drv_data = "
      "ndis_%s_drv_data_start;\n\n", sysfile);
  bincvt(sysfile, outfile, img, fsize);
  goto done;
 }


 fprintf(outfp, "\nextern unsigned char drv_data[];\n\n");

 fprintf(outfp, "__asm__(\".data\");\n");
 fprintf(outfp, "__asm__(\".globl  drv_data\");\n");
 fprintf(outfp, "__asm__(\".type   drv_data, @object\");\n");
 fprintf(outfp, "__asm__(\".size   drv_data, %d\");\n", fsize);
 fprintf(outfp, "__asm__(\"drv_data:\");\n");

 ptr = img;
 cnt = 0;
 while(cnt < fsize) {
  fprintf (outfp, "__asm__(\".byte ");
  for (i = 0; i < 10; i++) {
   cnt++;
   if (cnt == fsize) {
    fprintf(outfp, "0x%.2X\");\n", ptr[i]);
    goto done;
   } else {
    if (i == 9)
     fprintf(outfp, "0x%.2X\");\n", ptr[i]);
    else
     fprintf(outfp, "0x%.2X, ", ptr[i]);
   }
  }
  ptr += 10;
 }

done:

 fprintf(outfp, "#endif /* NDIS_IMAGE */\n");

 if (fp != ((void*)0))
  fclose(fp);
 fclose(outfp);
 free(img);
 exit(0);
}
