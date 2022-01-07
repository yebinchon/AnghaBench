
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct dirlist {struct dirlist* dp_right; struct dirlist* dp_left; } ;


 scalar_t__ chk_host (struct dirlist*,struct sockaddr*,int*,int*,int *,int *) ;

__attribute__((used)) static int
scan_tree(struct dirlist *dp, struct sockaddr *saddr)
{
 int defset, hostset;

 if (dp) {
  if (scan_tree(dp->dp_left, saddr))
   return (1);
  if (chk_host(dp, saddr, &defset, &hostset, ((void*)0), ((void*)0)))
   return (1);
  if (scan_tree(dp->dp_right, saddr))
   return (1);
 }
 return (0);
}
