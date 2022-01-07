
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int NTB_DB_VECTOR_COUNT (int ) ;
 int device_get_parent (int ) ;

int
ntb_db_vector_count(device_t ntb)
{

 return (NTB_DB_VECTOR_COUNT(device_get_parent(ntb)));
}
