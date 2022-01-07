
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* frag_ptr; } ;
struct alias_link {TYPE_1__ data; } ;



void
SetFragmentPtr(struct alias_link *lnk, char *fptr)
{
 lnk->data.frag_ptr = fptr;
}
