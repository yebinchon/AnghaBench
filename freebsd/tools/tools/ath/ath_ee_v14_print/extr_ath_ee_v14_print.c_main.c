
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int int16_t ;


 int * calloc (int,int) ;
 int eeprom_v14_base_print (int *) ;
 int eeprom_v14_calfreqpiers_print (int *) ;
 int eeprom_v14_ctl_print (int *) ;
 int eeprom_v14_custdata_print (int *) ;
 int eeprom_v14_modal_print (int *,int) ;
 int eeprom_v14_print_edges (int *) ;
 int eeprom_v14_print_targets (int *) ;
 int exit (int ) ;
 int free (int *) ;
 int load_eeprom_dump (char*,int *) ;
 int printf (char*) ;
 int usage (char**) ;

int
main(int argc, char *argv[])
{
 uint16_t *eep = ((void*)0);
 eep = calloc(4096, sizeof(int16_t));

 if (argc < 2)
  usage(argv);

 load_eeprom_dump(argv[1], eep);

 eeprom_v14_base_print(eep);
 eeprom_v14_custdata_print(eep);


 printf("\n2.4ghz:\n");
 eeprom_v14_modal_print(eep, 1);

 printf("\n5ghz:\n");
 eeprom_v14_modal_print(eep, 0);
 printf("\n");

 eeprom_v14_calfreqpiers_print(eep);
 printf("\n");

 eeprom_v14_print_targets(eep);
 printf("\n");

 eeprom_v14_ctl_print(eep);
 printf("\n");

 eeprom_v14_print_edges(eep);
 printf("\n");

 free(eep);
 exit(0);
}
