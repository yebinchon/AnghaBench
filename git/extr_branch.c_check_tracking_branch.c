
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int dummy; } ;
struct refspec_item {char* dst; } ;


 int memset (struct refspec_item*,int ,int) ;
 int remote_find_tracking (struct remote*,struct refspec_item*) ;

__attribute__((used)) static int check_tracking_branch(struct remote *remote, void *cb_data)
{
 char *tracking_branch = cb_data;
 struct refspec_item query;
 memset(&query, 0, sizeof(struct refspec_item));
 query.dst = tracking_branch;
 return !remote_find_tracking(remote, &query);
}
