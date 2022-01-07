
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {char* name; } ;



__attribute__((used)) static int get_only_remote(struct remote *remote, void *cb_data)
{
 const char **remote_name = cb_data;

 if (*remote_name)
  return -1;

 *remote_name = remote->name;
 return 0;
}
