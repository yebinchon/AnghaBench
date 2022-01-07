
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int EIO ;

__attribute__((used)) static int status_to_err(u8 status)
{
 return status ? -EIO : 0;
}
