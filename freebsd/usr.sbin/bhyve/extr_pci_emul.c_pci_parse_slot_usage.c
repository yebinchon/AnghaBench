
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
pci_parse_slot_usage(char *aopt)
{

 fprintf(stderr, "Invalid PCI slot info field \"%s\"\n", aopt);
}
