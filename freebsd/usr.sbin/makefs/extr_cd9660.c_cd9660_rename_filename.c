
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ verbose_level; int isoLevel; } ;
typedef TYPE_2__ iso9660_disk ;
struct TYPE_11__ {char* o_name; TYPE_1__* isoDirRecord; } ;
typedef TYPE_3__ cd9660node ;
struct TYPE_9__ {char* name; } ;


 int ISO_FILENAME_MAXLENGTH_BEFORE_VERSION ;
 int ISO_FILENAME_MAXLENGTH_WITH_PADDING ;
 TYPE_3__* TAILQ_NEXT (TYPE_3__*,int ) ;
 int assert (int) ;
 int cn_next_child ;
 int dot ;
 char* emalloc (int ) ;
 int free (char*) ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,int) ;
 int printf (char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static cd9660node *
cd9660_rename_filename(iso9660_disk *diskStructure, cd9660node *iter, int num,
    int delete_chars)
{
 int i = 0;
 int numbts, digit, digits, temp, powers, count;
 char *naming;
 int maxlength;
        char *tmp;

 if (diskStructure->verbose_level > 0)
  printf("Rename_filename called\n");

 assert(1 <= diskStructure->isoLevel && diskStructure->isoLevel <= 2);

 if (diskStructure->isoLevel == 1)
  maxlength = 8;
 else if (diskStructure->isoLevel == 2)
  maxlength = 31;
 else
  maxlength = ISO_FILENAME_MAXLENGTH_BEFORE_VERSION;

 tmp = emalloc(ISO_FILENAME_MAXLENGTH_WITH_PADDING);

 while (i < num && iter) {
  powers = 1;
  count = 0;
  digits = 1;
  while (((int)(i / powers) ) >= 10) {
   digits++;
   powers = powers * 10;
  }

  naming = iter->o_name;
  while (count < maxlength) {
   if (*naming == ';')
    break;
   naming++;
   count++;
  }

  if ((count + digits) < maxlength)
   numbts = count;
  else
   numbts = maxlength - (digits);
  numbts -= delete_chars;
  memcpy(tmp, (iter->o_name), numbts);


  temp = i;
  while (digits > 0) {
   digit = (int)(temp / powers);
   temp = temp - digit * powers;
   sprintf(&tmp[numbts] , "%d", digit);
   digits--;
   numbts++;
   powers = powers / 10;
  }

  while ((*naming != ';') && (numbts < maxlength)) {
   tmp[numbts] = (*naming);
   naming++;
   numbts++;
  }

  tmp[numbts] = ';';
  tmp[numbts+1] = '1';
  tmp[numbts+2] = '\0';





  memcpy((iter->isoDirRecord->name), tmp, numbts + 3);

  iter = TAILQ_NEXT(iter, cn_next_child);
  i++;
 }

 free(tmp);
 return iter;
}
