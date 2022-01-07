
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rendezvous_entry {int dummy; } ;
typedef enum rendezvous_op { ____Placeholder_rendezvous_op } rendezvous_op ;



__attribute__((used)) static int
mdioproxy_rendezvous_callback(enum rendezvous_op op, struct rendezvous_entry *rendezvous)
{
 return (0);
}
