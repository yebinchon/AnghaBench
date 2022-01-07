
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ timestamp_t ;
struct object_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ expire_total; int recno; } ;
struct expire_reflog_policy_cb {TYPE_1__ cmd; } ;



__attribute__((used)) static int count_reflog_ent(struct object_id *ooid, struct object_id *noid,
  const char *email, timestamp_t timestamp, int tz,
  const char *message, void *cb_data)
{
 struct expire_reflog_policy_cb *cb = cb_data;
 if (!cb->cmd.expire_total || timestamp < cb->cmd.expire_total)
  cb->cmd.recno++;
 return 0;
}
