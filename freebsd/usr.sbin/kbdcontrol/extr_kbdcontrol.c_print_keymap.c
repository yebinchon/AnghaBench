
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n_keys; int * acc; int * key; } ;
typedef TYPE_1__ keymap_t ;
typedef TYPE_1__ accentmap_t ;
typedef int accentmap ;


 int GIO_DEADKEYMAP ;
 int GIO_KEYMAP ;
 int NUM_DEADKEYS ;
 int err (int,char*) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int print_accent_definition_line (int ,int,int *) ;
 int print_key_definition_line (int ,int,int *) ;
 int printf (char*) ;
 int stdout ;

__attribute__((used)) static void
print_keymap(void)
{
 keymap_t keymap;
 accentmap_t accentmap;
 int i;

 if (ioctl(0, GIO_KEYMAP, &keymap) < 0)
  err(1, "getting keymap");
 if (ioctl(0, GIO_DEADKEYMAP, &accentmap) < 0)
  memset(&accentmap, 0, sizeof(accentmap));
     printf(
"#                                                         alt\n"
"# scan                       cntrl          alt    alt   cntrl lock\n"
"# code  base   shift  cntrl  shift  alt    shift  cntrl  shift state\n"
"# ------------------------------------------------------------------\n"
     );
 for (i=0; i<keymap.n_keys; i++)
  print_key_definition_line(stdout, i, &keymap.key[i]);

 printf("\n");
 for (i = 0; i < NUM_DEADKEYS; i++)
  print_accent_definition_line(stdout, i, &accentmap.acc[i]);

}
