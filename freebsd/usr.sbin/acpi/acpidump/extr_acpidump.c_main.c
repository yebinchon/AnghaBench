
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_TABLE_FADT ;


 int ACPI_SIG_FADT ;
 int aml_disassemble (int *,int *) ;
 scalar_t__ dflag ;
 int * dsdt_from_fadt (int *) ;
 int * dsdt_load_file (char*) ;
 int dsdt_save_file (char*,int *,int *) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int * sdt_from_rsdt (int *,int ,int *) ;
 int * sdt_load_devmem () ;
 int sdt_print_all (int *) ;
 scalar_t__ tflag ;
 int usage (char*) ;
 int vflag ;
 int warnx (char*,...) ;

int
main(int argc, char *argv[])
{
 ACPI_TABLE_HEADER *rsdt, *sdt;
 int c;
 char *progname;
 char *dsdt_input_file, *dsdt_output_file;

 dsdt_input_file = dsdt_output_file = ((void*)0);
 progname = argv[0];

 if (argc < 2)
  usage(progname);

 while ((c = getopt(argc, argv, "dhtvf:o:")) != -1) {
  switch (c) {
  case 'd':
   dflag = 1;
   break;
  case 't':
   tflag = 1;
   break;
  case 'v':
   vflag = 1;
   break;
  case 'f':
   dsdt_input_file = optarg;
   break;
  case 'o':
   dsdt_output_file = optarg;
   break;
  case 'h':
  default:
   usage(progname);

  }
 }
 argc -= optind;
 argv += optind;


 if (dsdt_input_file != ((void*)0)) {
  if (dflag == 0 && tflag == 0) {
   warnx("Need to specify -d or -t with DSDT input file");
   usage(progname);
  } else if (tflag != 0) {
   warnx("Can't use -t with DSDT input file");
   usage(progname);
  }
  if (vflag)
   warnx("loading DSDT file: %s", dsdt_input_file);
  rsdt = dsdt_load_file(dsdt_input_file);
 } else {
  if (vflag)
   warnx("loading RSD PTR from /dev/mem");
  rsdt = sdt_load_devmem();
 }


 if (tflag) {
  if (vflag)
   warnx("printing various SDT tables");
  sdt_print_all(rsdt);
 }


 if (dsdt_input_file == ((void*)0)) {
  sdt = sdt_from_rsdt(rsdt, ACPI_SIG_FADT, ((void*)0));
  sdt = dsdt_from_fadt((ACPI_TABLE_FADT *)sdt);
 } else {
  sdt = rsdt;
  rsdt = ((void*)0);
 }


 if (dsdt_output_file != ((void*)0)) {
  if (vflag)
   warnx("saving DSDT file: %s", dsdt_output_file);
  dsdt_save_file(dsdt_output_file, rsdt, sdt);
 }


 if (dflag) {
  if (vflag)
   warnx("disassembling DSDT, iasl messages follow");
  aml_disassemble(rsdt, sdt);
  if (vflag)
   warnx("iasl processing complete");
 }

 exit(0);
}
