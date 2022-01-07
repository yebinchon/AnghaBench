
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ar_valid_arg; int * ar_arg_text; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;


 int ARG_ALL ;
 int ARG_SET_VALID (struct kaudit_record*,int) ;
 int ARG_TEXT ;
 int KASSERT (int ,char*) ;
 int MAXPATHLEN ;
 int M_AUDITTEXT ;
 int M_WAITOK ;
 struct kaudit_record* currecord () ;
 int * malloc (int ,int ,int ) ;
 int strncpy (int *,char const*,int ) ;

void
audit_arg_text(const char *text)
{
 struct kaudit_record *ar;

 KASSERT(text != ((void*)0), ("audit_arg_text: text == NULL"));

 ar = currecord();
 if (ar == ((void*)0))
  return;


 ar->k_ar.ar_valid_arg &= (ARG_ALL ^ ARG_TEXT);

 if (ar->k_ar.ar_arg_text == ((void*)0))
  ar->k_ar.ar_arg_text = malloc(MAXPATHLEN, M_AUDITTEXT,
      M_WAITOK);

 strncpy(ar->k_ar.ar_arg_text, text, MAXPATHLEN);
 ARG_SET_VALID(ar, ARG_TEXT);
}
