
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int dummy; } ;


 int BSP ;
 int EX_OSERR ;
 int EX_USAGE ;
 int MB ;
 int VM_CAP_UNRESTRICTED_GUEST ;
 int VM_MEM_F_INCORE ;
 int VM_MEM_F_WIRED ;
 int VM_MMAP_ALL ;
 int VM_REG_GUEST_RIP ;
 int acpi ;
 int acpi_build (struct vmctx*,int) ;
 int assert (int) ;
 int atkbdc_init (struct vmctx*) ;
 int atoi (char*) ;
 int basename (char*) ;
 int caph_cache_catpages () ;
 int caph_enter () ;
 int caph_limit_stderr () ;
 int caph_limit_stdout () ;
 int cores ;
 struct vmctx* do_open (char*) ;
 int errno ;
 int errx (int ,char*,...) ;
 int exit (int) ;
 int fbsdrun_addcpu (struct vmctx*,int ,int ,int ) ;
 int fbsdrun_set_capabilities (struct vmctx*,int ) ;
 int fprintf (int ,char*,...) ;
 int fwctl_init () ;
 int getopt (int,char**,char*) ;
 int guest_ncpus ;
 char* guest_uuid_str ;
 int guest_vmexit_on_hlt ;
 int guest_vmexit_on_pause ;
 int init_bvmcons () ;
 int init_dbgport (int) ;
 int init_gdb (struct vmctx*,int,int) ;
 int init_inout () ;
 int init_mem () ;
 int init_msr () ;
 scalar_t__ init_pci (struct vmctx*) ;
 int ioapic_init (struct vmctx*) ;
 scalar_t__ lpc_bootrom () ;
 int lpc_device_parse (char*) ;
 int lpc_print_supported_devices () ;
 scalar_t__ maxcpus ;
 int mevent_dispatch () ;
 int mptable_build (struct vmctx*,int) ;
 int num_vcpus_allowed (struct vmctx*) ;
 char* optarg ;
 scalar_t__ optind ;
 int pci_irq_init (struct vmctx*) ;
 int pci_parse_slot (char*) ;
 int pci_print_supported_devices () ;
 int perror (char*) ;
 int pincpu_parse (char*) ;
 int progname ;
 int rtc_init (struct vmctx*,int) ;
 int sci_init (struct vmctx*) ;
 int setproctitle (char*,char*) ;
 int smbios_build (struct vmctx*) ;
 int sockets ;
 int stderr ;
 int strictio ;
 int strictmsr ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;
 int threads ;
 int topology_parse (char*) ;
 int usage (int) ;
 int vcpu_reset (struct vmctx*,int ) ;
 int virtio_msix ;
 int vm_get_register (struct vmctx*,int ,int ,int *) ;
 int vm_parse_memsize (char*,size_t*) ;
 scalar_t__ vm_set_capability (struct vmctx*,int ,int ,int) ;
 int vm_set_memflags (struct vmctx*,int) ;
 int vm_setup_memory (struct vmctx*,size_t,int ) ;
 char* vmname ;
 int x2apic_mode ;

int
main(int argc, char *argv[])
{
 int c, error, dbg_port, gdb_port, err, bvmcons;
 int max_vcpus, mptgen, memflags;
 int rtc_localtime;
 bool gdb_stop;
 struct vmctx *ctx;
 uint64_t rip;
 size_t memsize;
 char *optstr;

 bvmcons = 0;
 progname = basename(argv[0]);
 dbg_port = 0;
 gdb_port = 0;
 gdb_stop = 0;
 guest_ncpus = 1;
 sockets = cores = threads = 1;
 maxcpus = 0;
 memsize = 256 * MB;
 mptgen = 1;
 rtc_localtime = 1;
 memflags = 0;

 optstr = "abehuwxACHIPSWYp:g:G:c:s:m:l:U:";
 while ((c = getopt(argc, argv, optstr)) != -1) {
  switch (c) {
  case 'a':
   x2apic_mode = 0;
   break;
  case 'A':
   acpi = 1;
   break;
  case 'b':
   bvmcons = 1;
   break;
  case 'p':
                        if (pincpu_parse(optarg) != 0) {
                            errx(EX_USAGE, "invalid vcpu pinning "
                                 "configuration '%s'", optarg);
                        }
   break;
                case 'c':
   if (topology_parse(optarg) != 0) {
       errx(EX_USAGE, "invalid cpu topology "
    "'%s'", optarg);
   }
   break;
  case 'C':
   memflags |= VM_MEM_F_INCORE;
   break;
  case 'g':
   dbg_port = atoi(optarg);
   break;
  case 'G':
   if (optarg[0] == 'w') {
    gdb_stop = 1;
    optarg++;
   }
   gdb_port = atoi(optarg);
   break;
  case 'l':
   if (strncmp(optarg, "help", strlen(optarg)) == 0) {
    lpc_print_supported_devices();
    exit(0);
   } else if (lpc_device_parse(optarg) != 0) {
    errx(EX_USAGE, "invalid lpc device "
        "configuration '%s'", optarg);
   }
   break;
  case 's':
   if (strncmp(optarg, "help", strlen(optarg)) == 0) {
    pci_print_supported_devices();
    exit(0);
   } else if (pci_parse_slot(optarg) != 0)
    exit(4);
   else
    break;
  case 'S':
   memflags |= VM_MEM_F_WIRED;
   break;
                case 'm':
   error = vm_parse_memsize(optarg, &memsize);
   if (error)
    errx(EX_USAGE, "invalid memsize '%s'", optarg);
   break;
  case 'H':
   guest_vmexit_on_hlt = 1;
   break;
  case 'I':







   break;
  case 'P':
   guest_vmexit_on_pause = 1;
   break;
  case 'e':
   strictio = 1;
   break;
  case 'u':
   rtc_localtime = 0;
   break;
  case 'U':
   guest_uuid_str = optarg;
   break;
  case 'w':
   strictmsr = 0;
   break;
  case 'W':
   virtio_msix = 0;
   break;
  case 'x':
   x2apic_mode = 1;
   break;
  case 'Y':
   mptgen = 0;
   break;
  case 'h':
   usage(0);
  default:
   usage(1);
  }
 }
 argc -= optind;
 argv += optind;

 if (argc != 1)
  usage(1);

 vmname = argv[0];
 ctx = do_open(vmname);

 max_vcpus = num_vcpus_allowed(ctx);
 if (guest_ncpus > max_vcpus) {
  fprintf(stderr, "%d vCPUs requested but only %d available\n",
   guest_ncpus, max_vcpus);
  exit(4);
 }

 fbsdrun_set_capabilities(ctx, BSP);

 vm_set_memflags(ctx, memflags);
 err = vm_setup_memory(ctx, memsize, VM_MMAP_ALL);
 if (err) {
  fprintf(stderr, "Unable to setup memory (%d)\n", errno);
  exit(4);
 }

 error = init_msr();
 if (error) {
  fprintf(stderr, "init_msr error %d", error);
  exit(4);
 }

 init_mem();
 init_inout();
 atkbdc_init(ctx);
 pci_irq_init(ctx);
 ioapic_init(ctx);

 rtc_init(ctx, rtc_localtime);
 sci_init(ctx);




 if (init_pci(ctx) != 0) {
  perror("device emulation initialization error");
  exit(4);
 }

 if (dbg_port != 0)
  init_dbgport(dbg_port);

 if (gdb_port != 0)
  init_gdb(ctx, gdb_port, gdb_stop);

 if (bvmcons)
  init_bvmcons();

 if (lpc_bootrom()) {
  if (vm_set_capability(ctx, BSP, VM_CAP_UNRESTRICTED_GUEST, 1)) {
   fprintf(stderr, "ROM boot failed: unrestricted guest "
       "capability not available\n");
   exit(4);
  }
  error = vcpu_reset(ctx, BSP);
  assert(error == 0);
 }

 error = vm_get_register(ctx, BSP, VM_REG_GUEST_RIP, &rip);
 assert(error == 0);




 if (mptgen) {
  error = mptable_build(ctx, guest_ncpus);
  if (error) {
   perror("error to build the guest tables");
   exit(4);
  }
 }

 error = smbios_build(ctx);
 assert(error == 0);

 if (acpi) {
  error = acpi_build(ctx, guest_ncpus);
  assert(error == 0);
 }

 if (lpc_bootrom())
  fwctl_init();




 setproctitle("%s", vmname);


 caph_cache_catpages();

 if (caph_limit_stdout() == -1 || caph_limit_stderr() == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");

 if (caph_enter() == -1)
  errx(EX_OSERR, "cap_enter() failed");





 fbsdrun_addcpu(ctx, BSP, BSP, rip);




 mevent_dispatch();

 exit(4);
}
