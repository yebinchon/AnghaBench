
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovlist {scalar_t__ totalsize; scalar_t__ iovcnt; } ;



__attribute__((used)) static void
iovlist_init(struct iovlist *il)
{

 il->iovcnt = 0;
 il->totalsize = 0;
}
