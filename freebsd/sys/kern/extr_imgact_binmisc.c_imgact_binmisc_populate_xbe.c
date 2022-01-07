
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* xbe_interpreter; char* xbe_magic; char* xbe_mask; int xbe_msize; int xbe_moffset; int xbe_flags; int xbe_version; int xbe_name; } ;
typedef TYPE_1__ ximgact_binmisc_entry_t ;
typedef int uint32_t ;
struct TYPE_7__ {int ibe_interp_length; int ibe_msize; int ibe_moffset; int ibe_flags; int ibe_mask; int ibe_magic; int ibe_interpreter; int ibe_name; } ;
typedef TYPE_2__ imgact_binmisc_entry_t ;


 int IBE_NAME_MAX ;
 int IBE_VERSION ;
 int SA_LOCKED ;
 int interp_list_sx ;
 int memcpy (char*,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int strlcpy (int ,int ,int ) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
imgact_binmisc_populate_xbe(ximgact_binmisc_entry_t *xbe,
    imgact_binmisc_entry_t *ibe)
{
 uint32_t i;

 sx_assert(&interp_list_sx, SA_LOCKED);

 memset(xbe, 0, sizeof(*xbe));
 strlcpy(xbe->xbe_name, ibe->ibe_name, IBE_NAME_MAX);


 memcpy(xbe->xbe_interpreter, ibe->ibe_interpreter,
     ibe->ibe_interp_length);
 for(i = 0; i < (ibe->ibe_interp_length - 1); i++)
  if (xbe->xbe_interpreter[i] == '\0')
   xbe->xbe_interpreter[i] = ' ';

 memcpy(xbe->xbe_magic, ibe->ibe_magic, ibe->ibe_msize);
 memcpy(xbe->xbe_mask, ibe->ibe_mask, ibe->ibe_msize);
 xbe->xbe_version = IBE_VERSION;
 xbe->xbe_flags = ibe->ibe_flags;
 xbe->xbe_moffset = ibe->ibe_moffset;
 xbe->xbe_msize = ibe->ibe_msize;

 return (0);
}
