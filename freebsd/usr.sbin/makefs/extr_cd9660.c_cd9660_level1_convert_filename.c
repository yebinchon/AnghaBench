
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int omit_trailing_period; scalar_t__ archimedes_enabled; } ;
typedef TYPE_1__ iso9660_disk ;


 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ islower (unsigned char) ;
 scalar_t__ isupper (unsigned char) ;
 int sprintf (char*,char*,int) ;
 int strlen (char const*) ;
 int toupper (unsigned char) ;

__attribute__((used)) static int
cd9660_level1_convert_filename(iso9660_disk *diskStructure, const char *oldname,
    char *newname, int is_file)
{






 int namelen = 0;
 int extlen = 0;
 int found_ext = 0;

 while (*oldname != '\0' && extlen < 3) {

  if (*oldname == '.') {
   if (found_ext) {
    *newname++ = '_';
    extlen ++;
   }
   else {
    *newname++ = '.';
    found_ext = 1;
   }
  } else {

   if (diskStructure->archimedes_enabled &&
       *oldname == ',' && strlen(oldname) == 4)
    break;


   if (namelen == 8 && !found_ext)
    break;

   if (islower((unsigned char)*oldname))
    *newname++ = toupper((unsigned char)*oldname);
   else if (isupper((unsigned char)*oldname)
       || isdigit((unsigned char)*oldname))
    *newname++ = *oldname;
   else
    *newname++ = '_';

   if (found_ext)
    extlen++;
   else
    namelen++;
  }
  oldname++;
 }
 if (is_file) {
  if (!found_ext && !diskStructure->omit_trailing_period)
   *newname++ = '.';

  sprintf(newname, ";%i", 1);
 }
 return namelen + extlen + found_ext;
}
