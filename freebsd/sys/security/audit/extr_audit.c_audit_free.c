
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaudit_record {int dummy; } ;


 int audit_record_zone ;
 int uma_zfree (int ,struct kaudit_record*) ;

void
audit_free(struct kaudit_record *ar)
{

 uma_zfree(audit_record_zone, ar);
}
