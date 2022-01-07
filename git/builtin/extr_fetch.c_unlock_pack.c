
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gsecondary ;
 scalar_t__ gtransport ;
 int transport_unlock_pack (scalar_t__) ;

__attribute__((used)) static void unlock_pack(void)
{
 if (gtransport)
  transport_unlock_pack(gtransport);
 if (gsecondary)
  transport_unlock_pack(gsecondary);
}
