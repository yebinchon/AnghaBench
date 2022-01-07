
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,...) ;

void
usage(char *argv[])
{
 printf("Usage: %s <eeprom dump file>\n", argv[0]);
 printf("\n");
 printf("  The eeprom dump file is a text hexdump of an EEPROM.\n");
 printf("  The lines must be formatted as follows:\n");
 printf("  0xAAAA: 0xDD 0xDD 0xDD 0xDD 0xDD 0xDD 0xDD 0xDD\n");
 printf("  where each line must have exactly eight data bytes.\n");
 exit(127);
}
