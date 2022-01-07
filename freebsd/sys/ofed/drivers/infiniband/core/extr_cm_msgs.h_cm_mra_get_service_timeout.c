
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_mra_msg {int offset9; } ;



__attribute__((used)) static inline u8 cm_mra_get_service_timeout(struct cm_mra_msg *mra_msg)
{
 return (u8) (mra_msg->offset9 >> 3);
}
