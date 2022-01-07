
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
__attribute__((used)) static int cmd_status_to_err_helper(u8 status)
{
 switch (status) {
 case 129: return 0;
 case 133: return -EIO;
 case 142: return -EINVAL;
 case 140: return -EINVAL;
 case 134: return -EIO;
 case 137: return -EINVAL;
 case 128: return -EBUSY;
 case 131: return -ENOMEM;
 case 136: return -EINVAL;
 case 132: return -EINVAL;
 case 130: return -EAGAIN;
 case 143: return -EIO;
 case 141: return -EIO;
 case 138: return -EINVAL;
 case 139: return -EINVAL;
 case 135: return -EINVAL;
 default: return -EIO;
 }
}
