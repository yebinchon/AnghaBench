
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yearinfo {int year; int* monthdays; int ieaster; int ipaskha; scalar_t__* ffullmoon; scalar_t__* fnewmoon; scalar_t__* ffullmooncny; scalar_t__* fnewmooncny; int* equinoxdays; int* solsticedays; int firstcnyday; int ichinesemonths; struct yearinfo* next; } ;


 int F_ALLDAY ;
 int F_ALLMONTH ;
 int F_CNY ;
 int F_DAYOFMONTH ;
 int F_DAYOFWEEK ;
 int F_DECSOLSTICE ;
 int F_EASTER ;
 int F_FULLMOON ;
 int F_JUNSOLSTICE ;
 int F_MAREQUINOX ;
 int F_MODIFIERINDEX ;
 int F_MODIFIEROFFSET ;
 int F_MONTH ;
 int F_NEWMOON ;
 int F_PASKHA ;
 int F_SEPEQUINOX ;
 int F_SPECIALDAY ;
 int F_VARIABLE ;
 int F_YEAR ;
 int UTCOFFSET_CNY ;
 int UTCOffset ;
 int calculatesunlongitude30 (int,int ,int ) ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ debug ;
 int debug_determinestyle (int,char*,int,char*,int,char*,int,char*,int,char*,char*,char*,char*,int) ;
 scalar_t__ determinestyle (char*,int*,char*,int*,char*,int*,char*,int*,char*,char*,char*,char*,int*) ;
 int easter (int) ;
 int errx (int,char*) ;
 int fequinoxsolstice (int,int ,int*,int*) ;
 int first_dayofweek_of_month (int,int) ;
 int first_dayofweek_of_year (int) ;
 char* floattotime (int) ;
 int floor (scalar_t__) ;
 int fpom (int,int ,scalar_t__*,scalar_t__*) ;
 int indextooffset (char*) ;
 size_t isleap (int) ;
 int** monthdaytab ;
 int parseoffset (char*) ;
 int paskha (int) ;
 int printf (char*) ;
 int remember (int*,int*,int*,int*,char**,int,int,int,char*) ;
 scalar_t__ remember_yd (int,int,int*,int*) ;
 scalar_t__ remember_ymd (int,int,int) ;
 int wdayom (int,int,int,int) ;
 int year1 ;
 int year2 ;
 struct yearinfo* yearinfo ;
 struct yearinfo* years ;

int
parsedaymonth(char *date, int *yearp, int *monthp, int *dayp, int *flags,
    char **edp)
{
 char month[100], dayofmonth[100], dayofweek[100], modifieroffset[100];
 char syear[100];
 char modifierindex[100], specialday[100];
 int idayofweek = -1, imonth = -1, idayofmonth = -1, iyear = -1;
 int year, remindex;
 int d, m, dow, rm, rd, offset;
 char *ed;
 int retvalsign = 1;
 *flags = 0;

 if (debug)
  debug_determinestyle(1, date, *flags, month, imonth,
      dayofmonth, idayofmonth, dayofweek, idayofweek,
      modifieroffset, modifierindex, specialday, syear, iyear);
 if (determinestyle(date, flags, month, &imonth, dayofmonth,
  &idayofmonth, dayofweek, &idayofweek, modifieroffset,
  modifierindex, specialday, syear, &iyear) == 0) {
  if (debug)
   printf("Failed!\n");
  return (0);
 }

 if (debug)
  debug_determinestyle(0, date, *flags, month, imonth,
      dayofmonth, idayofmonth, dayofweek, idayofweek,
      modifieroffset, modifierindex, specialday, syear, iyear);

 remindex = 0;
 for (year = year1; year <= year2; year++) {

  int lflags = *flags;

  if ((lflags & F_YEAR) != 0)
   if (iyear != year)
    continue;
  lflags &= ~F_YEAR;


  yearinfo = years;
  while (yearinfo != ((void*)0)) {
   if (yearinfo->year == year)
    break;
   yearinfo = yearinfo -> next;
  }
  if (yearinfo == ((void*)0)) {
   yearinfo = (struct yearinfo *)calloc(1,
       sizeof(struct yearinfo));
   if (yearinfo == ((void*)0))
    errx(1, "Unable to allocate more years");
   yearinfo->year = year;
   yearinfo->next = years;
   years = yearinfo;

   yearinfo->monthdays = monthdaytab[isleap(year)];
   yearinfo->ieaster = easter(year);
   yearinfo->ipaskha = paskha(year);
   fpom(year, UTCOffset, yearinfo->ffullmoon,
       yearinfo->fnewmoon);
   fpom(year, UTCOFFSET_CNY, yearinfo->ffullmooncny,
       yearinfo->fnewmooncny);
   fequinoxsolstice(year, UTCOffset,
       yearinfo->equinoxdays, yearinfo->solsticedays);





   yearinfo->firstcnyday = calculatesunlongitude30(year,
       UTCOFFSET_CNY, yearinfo->ichinesemonths);
   for (m = 0; yearinfo->fnewmooncny[m] >= 0; m++) {
    if (yearinfo->fnewmooncny[m] >
        yearinfo->firstcnyday) {
     yearinfo->firstcnyday =
         floor(yearinfo->fnewmooncny[m - 1]);
     break;
    }
   }
  }


  if (lflags == (F_MONTH | F_DAYOFMONTH)) {
   if (!remember_ymd(year, imonth, idayofmonth))
    continue;
   remember(&remindex, yearp, monthp, dayp, edp,
       year, imonth, idayofmonth, ((void*)0));
   continue;
  }


  if (lflags == (F_MONTH | F_DAYOFMONTH | F_VARIABLE)) {
   if (!remember_ymd(year, imonth, idayofmonth))
    continue;
   remember(&remindex, yearp, monthp, dayp, edp,
       year, imonth, idayofmonth, ((void*)0));
   continue;
  }


  if (lflags == (F_ALLMONTH | F_DAYOFMONTH)) {
   for (m = 1; m <= 12; m++) {
    if (!remember_ymd(year, m, idayofmonth))
     continue;
    remember(&remindex, yearp, monthp, dayp, edp,
        year, m, idayofmonth, ((void*)0));
   }
   continue;
  }


  if (lflags == (F_ALLDAY | F_MONTH)) {
   for (d = 1; d <= yearinfo->monthdays[imonth]; d++) {
    if (!remember_ymd(year, imonth, d))
     continue;
    remember(&remindex, yearp, monthp, dayp, edp,
        year, imonth, d, ((void*)0));
   }
   continue;
  }


  if (lflags == (F_ALLMONTH | F_DAYOFWEEK)) {
   for (m = 1; m <= 12; m++) {
    if (!remember_ymd(year, m, idayofmonth))
     continue;
    remember(&remindex, yearp, monthp, dayp, edp,
        year, m, idayofmonth, ((void*)0));
   }
   continue;
  }


  if (lflags == (F_DAYOFWEEK | F_VARIABLE)) {
   dow = first_dayofweek_of_year(year);
   d = (idayofweek - dow + 8) % 7;
   while (d <= 366) {
    if (remember_yd(year, d, &rm, &rd))
     remember(&remindex,
         yearp, monthp, dayp, edp,
         year, rm, rd, ((void*)0));
    d += 7;
   }
   continue;
  }





  if (lflags == (F_DAYOFWEEK | F_MODIFIERINDEX | F_VARIABLE)) {
   offset = indextooffset(modifierindex);

   for (m = 0; m <= 12; m++) {
                         d = wdayom (idayofweek, offset, m, year);
    if (remember_ymd(year, m, d)) {
     remember(&remindex,
         yearp, monthp, dayp, edp,
         year, m, d, ((void*)0));
     continue;
    }
   }
   continue;
  }





  if (lflags ==
      (F_MONTH | F_DAYOFWEEK | F_MODIFIERINDEX | F_VARIABLE)) {
   offset = indextooffset(modifierindex);
   dow = first_dayofweek_of_month(year, imonth);
   d = (idayofweek - dow + 8) % 7;

   if (offset > 0) {
    while (d <= yearinfo->monthdays[imonth]) {
     if (--offset == 0
         && remember_ymd(year, imonth, d)) {
      remember(&remindex,
          yearp, monthp, dayp, edp,
          year, imonth, d, ((void*)0));
      continue;
     }
     d += 7;
    }
    continue;
   }
   if (offset < 0) {
    while (d <= yearinfo->monthdays[imonth])
     d += 7;
    while (offset != 0) {
     offset++;
     d -= 7;
    }
    if (remember_ymd(year, imonth, d))
     remember(&remindex,
         yearp, monthp, dayp, edp,
         year, imonth, d, ((void*)0));
    continue;
   }
   continue;
  }


  if (lflags == (F_DAYOFWEEK | F_MONTH | F_VARIABLE)) {
   dow = first_dayofweek_of_month(year, imonth);
   d = (idayofweek - dow + 8) % 7;
   while (d <= yearinfo->monthdays[imonth]) {
    if (remember_ymd(year, imonth, d))
     remember(&remindex,
         yearp, monthp, dayp, edp,
         year, imonth, d, ((void*)0));
    d += 7;
   }
   continue;
  }


  if ((lflags & ~F_MODIFIEROFFSET) ==
      (F_SPECIALDAY | F_VARIABLE | F_EASTER)) {
   offset = 0;
   if ((lflags & F_MODIFIEROFFSET) != 0)
    offset = parseoffset(modifieroffset);
   if (remember_yd(year, yearinfo->ieaster + offset,
                         &rm, &rd))
    remember(&remindex, yearp, monthp, dayp, edp,
        year, rm, rd, ((void*)0));
   continue;
  }


  if ((lflags & ~F_MODIFIEROFFSET) ==
      (F_SPECIALDAY | F_VARIABLE | F_PASKHA)) {
   offset = 0;
   if ((lflags & F_MODIFIEROFFSET) != 0)
    offset = parseoffset(modifieroffset);
   if (remember_yd(year, yearinfo->ipaskha + offset,
                         &rm, &rd))
    remember(&remindex, yearp, monthp, dayp, edp,
        year, rm, rd, ((void*)0));
   continue;
  }


  if ((lflags & ~F_MODIFIEROFFSET) ==
      (F_SPECIALDAY | F_VARIABLE | F_CNY)) {
   offset = 0;
   if ((lflags & F_MODIFIEROFFSET) != 0)
    offset = parseoffset(modifieroffset);
   if (remember_yd(year, yearinfo->firstcnyday + offset,
                         &rm, &rd))
    remember(&remindex, yearp, monthp, dayp, edp,
        year, rm, rd, ((void*)0));
   continue;
  }


  if ((lflags & ~F_MODIFIEROFFSET) ==
      (F_SPECIALDAY | F_VARIABLE | F_FULLMOON)) {
   int i;

   offset = 0;
   if ((lflags & F_MODIFIEROFFSET) != 0)
    offset = parseoffset(modifieroffset);
   for (i = 0; yearinfo->ffullmoon[i] > 0; i++) {
    if (remember_yd(year,
                                 floor(yearinfo->ffullmoon[i]) + offset,
     &rm, &rd)) {
     ed = floattotime(
         yearinfo->ffullmoon[i]);
     remember(&remindex,
         yearp, monthp, dayp, edp,
         year, rm, rd, ed);
    }
   }
   continue;
  }


  if ((lflags & ~F_MODIFIEROFFSET) ==
      (F_SPECIALDAY | F_VARIABLE | F_NEWMOON)) {
   int i;

   offset = 0;
   if ((lflags & F_MODIFIEROFFSET) != 0)
    offset = parseoffset(modifieroffset);
   for (i = 0; yearinfo->ffullmoon[i] > 0; i++) {
    if (remember_yd(year,
     floor(yearinfo->fnewmoon[i]) + offset,
     &rm, &rd)) {
     ed = floattotime(yearinfo->fnewmoon[i]);
     remember(&remindex,
         yearp, monthp, dayp, edp,
         year, rm, rd, ed);
    }
   }
   continue;
  }


  if ((lflags & ~F_MODIFIEROFFSET) ==
      (F_SPECIALDAY | F_VARIABLE | F_MAREQUINOX)) {
   offset = 0;
   if ((lflags & F_MODIFIEROFFSET) != 0)
    offset = parseoffset(modifieroffset);
   if (remember_yd(year, yearinfo->equinoxdays[0] + offset,
    &rm, &rd)) {
    ed = floattotime(yearinfo->equinoxdays[0]);
    remember(&remindex, yearp, monthp, dayp, edp,
        year, rm, rd, ed);
   }
   continue;
  }
  if ((lflags & ~F_MODIFIEROFFSET) ==
      (F_SPECIALDAY | F_VARIABLE | F_SEPEQUINOX)) {
   offset = 0;
   if ((lflags & F_MODIFIEROFFSET) != 0)
    offset = parseoffset(modifieroffset);
   if (remember_yd(year, yearinfo->equinoxdays[1] + offset,
       &rm, &rd)) {
    ed = floattotime(yearinfo->equinoxdays[1]);
    remember(&remindex, yearp, monthp, dayp, edp,
        year, rm, rd, ed);
   }
   continue;
  }


  if ((lflags & ~F_MODIFIEROFFSET) ==
      (F_SPECIALDAY | F_VARIABLE | F_JUNSOLSTICE)) {
   offset = 0;
   if ((lflags & F_MODIFIEROFFSET) != 0)
    offset = parseoffset(modifieroffset);
   if (remember_yd(year,
    yearinfo->solsticedays[0] + offset, &rm, &rd)) {
    ed = floattotime(yearinfo->solsticedays[0]);
    remember(&remindex, yearp, monthp, dayp, edp,
        year, rm, rd, ed);
   }
   continue;
  }
  if ((lflags & ~F_MODIFIEROFFSET) ==
      (F_SPECIALDAY | F_VARIABLE | F_DECSOLSTICE)) {
   offset = 0;
   if ((lflags & F_MODIFIEROFFSET) != 0)
    offset = parseoffset(modifieroffset);
   if (remember_yd(year,
    yearinfo->solsticedays[1] + offset, &rm, &rd)) {
    ed = floattotime(yearinfo->solsticedays[1]);
    remember(&remindex, yearp, monthp, dayp, edp,
        year, rm, rd, ed);
   }
   continue;
  }

  if (debug) {
   printf("Unprocessed:\n");
   debug_determinestyle(2, date, lflags, month, imonth,
       dayofmonth, idayofmonth, dayofweek, idayofweek,
       modifieroffset, modifierindex, specialday, syear,
       iyear);
  }
  retvalsign = -1;
 }

 if (retvalsign == -1)
  return (-remindex - 1);
 else
  return (remindex);
}
