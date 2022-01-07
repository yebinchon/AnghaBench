
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef size_t grant_ref_t ;
struct TYPE_2__ {int flags; } ;


 int GTF_reading ;
 int GTF_writing ;
 TYPE_1__* shared ;

int
gnttab_query_foreign_access(grant_ref_t ref)
{
 uint16_t nflags;

 nflags = shared[ref].flags;

 return (nflags & (GTF_reading|GTF_writing));
}
