
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iconv_cspair {char* cp_to; char* cp_from; void* cp_data; struct iconv_converter_class* cp_dcp; scalar_t__ cp_id; } ;
struct iconv_converter_class {int dummy; } ;


 int EEXIST ;
 int M_ICONV ;
 int M_WAITOK ;
 int TAILQ_INSERT_TAIL (int *,struct iconv_cspair*,int ) ;
 int bzero (struct iconv_cspair*,int) ;
 int cp_link ;
 int iconv_csid ;
 int iconv_cslist ;
 scalar_t__ iconv_lookupcs (char const*,char const*,int *) ;
 void* iconv_unicode_string ;
 struct iconv_cspair* malloc (int,int ,int ) ;
 scalar_t__ strcmp (char const*,void*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
iconv_register_cspair(const char *to, const char *from,
 struct iconv_converter_class *dcp, void *data,
 struct iconv_cspair **cspp)
{
 struct iconv_cspair *csp;
 char *cp;
 int csize, ucsto, ucsfrom;

 if (iconv_lookupcs(to, from, ((void*)0)) == 0)
  return EEXIST;
 csize = sizeof(*csp);
 ucsto = strcmp(to, iconv_unicode_string) == 0;
 if (!ucsto)
  csize += strlen(to) + 1;
 ucsfrom = strcmp(from, iconv_unicode_string) == 0;
 if (!ucsfrom)
  csize += strlen(from) + 1;
 csp = malloc(csize, M_ICONV, M_WAITOK);
 bzero(csp, csize);
 csp->cp_id = iconv_csid++;
 csp->cp_dcp = dcp;
 cp = (char*)(csp + 1);
 if (!ucsto) {
  strcpy(cp, to);
  csp->cp_to = cp;
  cp += strlen(cp) + 1;
 } else
  csp->cp_to = iconv_unicode_string;
 if (!ucsfrom) {
  strcpy(cp, from);
  csp->cp_from = cp;
 } else
  csp->cp_from = iconv_unicode_string;
 csp->cp_data = data;

 TAILQ_INSERT_TAIL(&iconv_cslist, csp, cp_link);
 *cspp = csp;
 return 0;
}
