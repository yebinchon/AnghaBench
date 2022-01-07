
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lconv {int negative_sign; int positive_sign; int thousands_sep; int decimal_point; } ;


 int LC_ALL ;
 int LC_COLLATE ;
 int byte_sort ;
 int conv_mbtowc (int *,int ,int ) ;
 scalar_t__ getenv (char*) ;
 int gnusort_numeric_compatibility ;
 struct lconv* localeconv () ;
 char* setlocale (int ,char*) ;
 int sort_free (char*) ;
 char* sort_strdup (char const*) ;
 int strcmp (char const*,char*) ;
 int symbol_decimal_point ;
 int symbol_negative_sign ;
 int symbol_positive_sign ;
 int symbol_thousands_sep ;

__attribute__((used)) static void
set_locale(void)
{
 struct lconv *lc;
 const char *locale;

 setlocale(LC_ALL, "");

 lc = localeconv();

 if (lc) {


  conv_mbtowc(&symbol_decimal_point, lc->decimal_point,
      symbol_decimal_point);
  conv_mbtowc(&symbol_thousands_sep, lc->thousands_sep,
      symbol_thousands_sep);
  conv_mbtowc(&symbol_positive_sign, lc->positive_sign,
      symbol_positive_sign);
  conv_mbtowc(&symbol_negative_sign, lc->negative_sign,
      symbol_negative_sign);
 }

 if (getenv("GNUSORT_NUMERIC_COMPATIBILITY"))
  gnusort_numeric_compatibility = 1;

 locale = setlocale(LC_COLLATE, ((void*)0));

 if (locale) {
  char *tmpl;
  const char *cclocale;

  tmpl = sort_strdup(locale);
  cclocale = setlocale(LC_COLLATE, "C");
  if (cclocale && !strcmp(cclocale, tmpl))
   byte_sort = 1;
  else {
   const char *pclocale;

   pclocale = setlocale(LC_COLLATE, "POSIX");
   if (pclocale && !strcmp(pclocale, tmpl))
    byte_sort = 1;
  }
  setlocale(LC_COLLATE, tmpl);
  sort_free(tmpl);
 }
}
