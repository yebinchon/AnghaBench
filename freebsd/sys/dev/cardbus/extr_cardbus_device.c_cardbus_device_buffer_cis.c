
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuple_callbacks {char* member_1; int member_2; int member_0; } ;
struct cis_buffer {int dummy; } ;
typedef int device_t ;


 int CISTPL_GENERIC ;
 int cardbus_build_cis ;
 int cardbus_parse_cis (int ,int ,struct tuple_callbacks*,struct cis_buffer*) ;

__attribute__((used)) static int
cardbus_device_buffer_cis(device_t parent, device_t child,
    struct cis_buffer *cbp)
{
 struct tuple_callbacks cb[] = {
  {CISTPL_GENERIC, "GENERIC", cardbus_build_cis}
 };

 return (cardbus_parse_cis(parent, child, cb, cbp));
}
