
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;



__attribute__((used)) static int mark_good(const char *refname, const struct object_id *oid,
       int flag, void *cb_data)
{
 int *m_good = (int *)cb_data;
 *m_good = 0;
 return 1;
}
