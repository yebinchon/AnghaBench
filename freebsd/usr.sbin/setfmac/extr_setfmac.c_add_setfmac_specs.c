
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct label_specs {int head; } ;
struct label_spec {int nentries; TYPE_1__* entries; } ;
struct TYPE_2__ {char* mactext; int flags; } ;


 int F_ALWAYSMATCH ;
 int STAILQ_INSERT_TAIL (int *,struct label_spec*,int ) ;
 TYPE_1__* calloc (int,int) ;
 int err (int,char*) ;
 int link ;
 struct label_spec* malloc (int) ;

void
add_setfmac_specs(struct label_specs *specs, char *label)
{
 struct label_spec *spec;

 spec = malloc(sizeof(*spec));
 if (spec == ((void*)0))
  err(1, "malloc");
 spec->nentries = 1;
 spec->entries = calloc(spec->nentries, sizeof(*spec->entries));
 if (spec->entries == ((void*)0))
  err(1, "malloc");

 spec->entries->mactext = label;
 spec->entries->flags |= F_ALWAYSMATCH;
 STAILQ_INSERT_TAIL(&specs->head, spec, link);
}
