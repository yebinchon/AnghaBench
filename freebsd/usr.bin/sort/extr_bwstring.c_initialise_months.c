
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int nl_item ;


 int const ABMON_1 ;
 int const ABMON_10 ;
 int const ABMON_11 ;
 int const ABMON_12 ;
 int const ABMON_2 ;
 int const ABMON_3 ;
 int const ABMON_4 ;
 int const ABMON_5 ;
 int const ABMON_6 ;
 int const ABMON_7 ;
 int const ABMON_8 ;
 int const ABMON_9 ;
 int MB_CUR_MAX ;
 int SIZEOF_WCHAR_STRING (size_t) ;
 unsigned char** cmonths ;
 scalar_t__ debug_sort ;
 size_t mbstowcs (int*,char*,size_t) ;
 scalar_t__ nl_langinfo (int const) ;
 int printf (char*,int,unsigned char*) ;
 int sort_free (int*) ;
 void* sort_malloc (int) ;
 unsigned char* sort_strdup (unsigned char*) ;
 size_t strlen (unsigned char*) ;
 unsigned char toupper (unsigned char) ;
 int towupper (int) ;
 int** wmonths ;

void
initialise_months(void)
{
 const nl_item item[12] = { ABMON_1, ABMON_2, ABMON_3, ABMON_4,
     ABMON_5, ABMON_6, ABMON_7, ABMON_8, ABMON_9, ABMON_10,
     ABMON_11, ABMON_12 };
 unsigned char *tmp;
 size_t len;

 if (MB_CUR_MAX == 1) {
  if (cmonths == ((void*)0)) {
   unsigned char *m;

   cmonths = sort_malloc(sizeof(unsigned char*) * 12);
   for (int i = 0; i < 12; i++) {
    cmonths[i] = ((void*)0);
    tmp = (unsigned char *) nl_langinfo(item[i]);
    if (debug_sort)
     printf("month[%d]=%s\n", i, tmp);
    if (*tmp == '\0')
     continue;
    m = sort_strdup(tmp);
    len = strlen(tmp);
    for (unsigned int j = 0; j < len; j++)
     m[j] = toupper(m[j]);
    cmonths[i] = m;
   }
  }

 } else {
  if (wmonths == ((void*)0)) {
   wchar_t *m;

   wmonths = sort_malloc(sizeof(wchar_t *) * 12);
   for (int i = 0; i < 12; i++) {
    wmonths[i] = ((void*)0);
    tmp = (unsigned char *) nl_langinfo(item[i]);
    if (debug_sort)
     printf("month[%d]=%s\n", i, tmp);
    if (*tmp == '\0')
     continue;
    len = strlen(tmp);
    m = sort_malloc(SIZEOF_WCHAR_STRING(len + 1));
    if (mbstowcs(m, (char*)tmp, len) ==
        ((size_t) - 1)) {
     sort_free(m);
     continue;
    }
    m[len] = L'\0';
    for (unsigned int j = 0; j < len; j++)
     m[j] = towupper(m[j]);
    wmonths[i] = m;
   }
  }
 }
}
