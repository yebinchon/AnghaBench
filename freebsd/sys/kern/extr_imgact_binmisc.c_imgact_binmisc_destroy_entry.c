
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ibe_name; struct TYPE_4__* ibe_interpreter; struct TYPE_4__* ibe_mask; struct TYPE_4__* ibe_magic; } ;
typedef TYPE_1__ imgact_binmisc_entry_t ;


 int M_BINMISC ;
 int free (TYPE_1__*,int ) ;

__attribute__((used)) static void
imgact_binmisc_destroy_entry(imgact_binmisc_entry_t *ibe)
{
 if (!ibe)
  return;
 if (ibe->ibe_magic)
  free(ibe->ibe_magic, M_BINMISC);
 if (ibe->ibe_mask)
  free(ibe->ibe_mask, M_BINMISC);
 if (ibe->ibe_interpreter)
  free(ibe->ibe_interpreter, M_BINMISC);
 if (ibe->ibe_name)
  free(ibe->ibe_name, M_BINMISC);
 if (ibe)
  free(ibe, M_BINMISC);
}
