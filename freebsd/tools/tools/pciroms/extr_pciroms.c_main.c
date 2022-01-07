
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef int action_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int O_RDWR ;
 uintptr_t PCI_ROM_RESERVED_MASK ;
 int PRINT ;
 int SAVE ;
 int _PATH_DEVPCI ;
 int banner () ;
 uintptr_t base_addr ;
 int basename (char*) ;
 int close (int) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int getopt (int,char**,char*) ;
 int open (int ,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int pci_enum_devs (int,int ) ;
 int perror (char*) ;
 int progname ;
 int stderr ;
 scalar_t__ strtoumax (char*,char**,int) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int pci_fd;
 int err;
 int ch;
 action_t action;
 char *base_addr_string;
 char *ep;

 err = -1;
 pci_fd = -1;
 action = PRINT;
 base_addr_string = ((void*)0);
 ep = ((void*)0);
 progname = basename(argv[0]);

 while ((ch = getopt(argc, argv, "sb:h")) != -1)
  switch (ch) {
  case 's':
   action = SAVE;
   break;
  case 'b':
   base_addr_string = optarg;
   break;
  case 'h':
  default:
       usage();
 }
 argc -= optind;
 argv += optind;

 if (base_addr_string != ((void*)0)) {
  uintmax_t base_addr_max;

  base_addr_max = strtoumax(base_addr_string, &ep, 16);
  if (*ep != '\0') {
   fprintf(stderr, "Invalid base address.\r\n");
   usage();
  }

  base_addr = (uintptr_t)base_addr_max;
  base_addr &= ~PCI_ROM_RESERVED_MASK;
 }

 if (argc > 0)
  usage();

 if ((pci_fd = open(_PATH_DEVPCI, O_RDWR)) == -1) {
  perror("open");
  goto cleanup;
 }

 banner();
 pci_enum_devs(pci_fd, action);

 err = 0;
cleanup:
 if (pci_fd != -1)
  close(pci_fd);

 exit ((err == 0) ? EXIT_SUCCESS : EXIT_FAILURE);
}
