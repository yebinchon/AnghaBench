
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * xbe_name; } ;
typedef TYPE_1__ ximgact_binmisc_entry_t ;


 scalar_t__ IBE_NAME_MAX ;
 int strlcpy (int *,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 int usage (char*,...) ;

int
name_cmd(int argc, char *argv[], ximgact_binmisc_entry_t *xbe)
{
 if (argc == 0)
  usage("Required argument missing\n");
 if (strlen(argv[0]) > IBE_NAME_MAX)
  usage("'%s' string length longer than IBE_NAME_MAX (%d)",
      IBE_NAME_MAX);
 strlcpy(&xbe->xbe_name[0], argv[0], IBE_NAME_MAX);

 return (0);
}
