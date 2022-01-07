
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 void* kmemdup (void const*,int ,int ) ;

__attribute__((used)) static void * cm_copy_private_data(const void *private_data,
       u8 private_data_len)
{
 void *data;

 if (!private_data || !private_data_len)
  return ((void*)0);

 data = kmemdup(private_data, private_data_len, GFP_KERNEL);
 if (!data)
  return ERR_PTR(-ENOMEM);

 return data;
}
