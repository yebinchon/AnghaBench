
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clonedevs {int head; } ;


 int LIST_INIT (int *) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 struct clonedevs* malloc (int,int ,int) ;

void
clone_setup(struct clonedevs **cdp)
{

 *cdp = malloc(sizeof **cdp, M_DEVBUF, M_WAITOK | M_ZERO);
 LIST_INIT(&(*cdp)->head);
}
