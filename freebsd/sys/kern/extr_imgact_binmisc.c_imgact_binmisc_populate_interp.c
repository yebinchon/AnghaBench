
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int t ;
struct TYPE_3__ {int ibe_interp_argcnt; int ibe_interp_length; int ibe_interpreter; } ;
typedef TYPE_1__ imgact_binmisc_entry_t ;


 int IBE_INTERP_LEN_MAX ;
 int M_BINMISC ;
 int M_WAITOK ;
 int M_ZERO ;
 int malloc (int,int ,int) ;
 int memcpy (int ,char*,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static void
imgact_binmisc_populate_interp(char *str, imgact_binmisc_entry_t *ibe)
{
 uint32_t len = 0, argc = 1;
 char t[IBE_INTERP_LEN_MAX];
 char *sp, *tp;

 memset(t, 0, sizeof(t));





 sp = str; tp = t;
 while (*sp != '\0') {
  if (*sp == ' ' || *sp == '\t') {
   if (++len >= IBE_INTERP_LEN_MAX)
    break;
   *tp++ = ' ';
   argc++;
   while (*sp == ' ' || *sp == '\t')
    sp++;
   continue;
  } else {
   *tp++ = *sp++;
   len++;
  }
 }
 *tp = '\0';
 len++;

 ibe->ibe_interpreter = malloc(len, M_BINMISC, M_WAITOK|M_ZERO);


 memcpy(ibe->ibe_interpreter, t, len);
 ibe->ibe_interp_argcnt = argc;
 ibe->ibe_interp_length = len;
}
