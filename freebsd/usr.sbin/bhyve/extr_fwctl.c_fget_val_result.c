
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;


 int fget_result (struct iovec**,int) ;

__attribute__((used)) static int
fget_val_result(struct iovec **data)
{
 return (fget_result(data, 1));
}
