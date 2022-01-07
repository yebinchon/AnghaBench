
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_2__ {int modal_header_5g; int modal_header_2g; } ;
typedef TYPE_1__ ar9300_eeprom_t ;


 int * calloc (int,int) ;
 int eeprom_9300_base_print (int *) ;
 int eeprom_9300_hdr_print (int *) ;
 int eeprom_9300_modal_print (int *) ;
 int exit (int ) ;
 int free (int *) ;
 int load_eeprom_dump (char*,int *) ;
 int printf (char*) ;
 int usage (char**) ;

int
main(int argc, char *argv[])
{
 uint16_t *eep = ((void*)0);
 const ar9300_eeprom_t *ee;

 eep = calloc(4096, sizeof(int16_t));

 if (argc < 2)
  usage(argv);

 load_eeprom_dump(argv[1], eep);
 ee = (ar9300_eeprom_t *) eep;

 eeprom_9300_hdr_print(eep);
 eeprom_9300_base_print(eep);

 printf("\n2GHz modal:\n");
 eeprom_9300_modal_print(&ee->modal_header_2g);

 printf("\n5GHz modal:\n");
 eeprom_9300_modal_print(&ee->modal_header_5g);

 free(eep);
 exit(0);
}
