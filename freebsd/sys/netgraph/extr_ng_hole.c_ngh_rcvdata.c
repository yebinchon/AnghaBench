
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int item_p ;
typedef int hook_p ;
typedef TYPE_3__* hinfo_p ;
struct TYPE_7__ {scalar_t__ len; } ;
struct TYPE_9__ {TYPE_2__ m_pkthdr; } ;
struct TYPE_6__ {int octets; int frames; } ;
struct TYPE_8__ {TYPE_1__ stats; } ;


 TYPE_5__* NGI_M (int ) ;
 int NG_FREE_ITEM (int ) ;
 TYPE_3__* NG_HOOK_PRIVATE (int ) ;

__attribute__((used)) static int
ngh_rcvdata(hook_p hook, item_p item)
{
 const hinfo_p hip = NG_HOOK_PRIVATE(hook);

 hip->stats.frames++;
 hip->stats.octets += NGI_M(item)->m_pkthdr.len;
 NG_FREE_ITEM(item);
 return 0;
}
