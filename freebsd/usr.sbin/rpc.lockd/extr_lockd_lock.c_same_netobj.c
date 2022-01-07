
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ n_len; int n_bytes; } ;
typedef TYPE_1__ netobj ;


 int bcmp (int ,int ,scalar_t__) ;
 int debuglog (char*,...) ;

int
same_netobj(const netobj *n0, const netobj *n1)
{
 int retval;

 retval = 0;

 debuglog("Entering netobj identity check\n");

 if (n0->n_len == n1->n_len) {
  debuglog("Preliminary length check passed\n");
  retval = !bcmp(n0->n_bytes, n1->n_bytes, n0->n_len);
  debuglog("netobj %smatch\n", retval ? "" : "mis");
 }

 return (retval);
}
