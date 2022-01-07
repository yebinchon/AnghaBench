
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filecaps {int dummy; } ;


 int bzero (struct filecaps*,int) ;

void
filecaps_move(struct filecaps *src, struct filecaps *dst)
{

 *dst = *src;
 bzero(src, sizeof(*src));
}
