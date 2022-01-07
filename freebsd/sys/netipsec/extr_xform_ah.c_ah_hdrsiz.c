
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int32_t ;
struct secasvar {TYPE_4__* sah; int * tdb_authalgxform; } ;
struct ah {int dummy; } ;
struct TYPE_5__ {scalar_t__ sa_family; } ;
struct TYPE_6__ {TYPE_1__ sa; } ;
struct TYPE_7__ {TYPE_2__ dst; } ;
struct TYPE_8__ {TYPE_3__ saidx; } ;


 scalar_t__ AF_INET6 ;
 int AUTHSIZE (struct secasvar*) ;
 int HDRSIZE (struct secasvar*) ;
 int IPSEC_ASSERT (int ,char*) ;
 size_t roundup (int,int) ;

size_t
ah_hdrsiz(struct secasvar *sav)
{
 size_t size;

 if (sav != ((void*)0)) {
  int authsize, rplen, align;

  IPSEC_ASSERT(sav->tdb_authalgxform != ((void*)0), ("null xform"));



  align = sizeof(uint32_t);





  rplen = HDRSIZE(sav);
  authsize = AUTHSIZE(sav);
  size = roundup(rplen + authsize, align);
 } else {

  size = sizeof (struct ah) + sizeof (u_int32_t) + 16;
 }
 return size;
}
