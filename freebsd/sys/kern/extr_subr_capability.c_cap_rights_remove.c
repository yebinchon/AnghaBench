
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* cr_rights; } ;
typedef TYPE_1__ const cap_rights_t ;


 unsigned int CAPARSIZE (TYPE_1__ const*) ;
 unsigned int CAPARSIZE_MAX ;
 unsigned int CAPARSIZE_MIN ;
 scalar_t__ CAPVER (TYPE_1__ const*) ;
 scalar_t__ CAP_RIGHTS_VERSION_00 ;
 int assert (int) ;
 int cap_rights_is_valid (TYPE_1__ const*) ;

cap_rights_t *
cap_rights_remove(cap_rights_t *dst, const cap_rights_t *src)
{
 unsigned int i, n;

 assert(CAPVER(dst) == CAP_RIGHTS_VERSION_00);
 assert(CAPVER(src) == CAP_RIGHTS_VERSION_00);
 assert(CAPVER(dst) == CAPVER(src));
 assert(cap_rights_is_valid(src));
 assert(cap_rights_is_valid(dst));

 n = CAPARSIZE(dst);
 assert(n >= CAPARSIZE_MIN && n <= CAPARSIZE_MAX);

 for (i = 0; i < n; i++) {
  dst->cr_rights[i] &=
      ~(src->cr_rights[i] & 0x01FFFFFFFFFFFFFFULL);
 }

 assert(cap_rights_is_valid(src));
 assert(cap_rights_is_valid(dst));

 return (dst);
}
