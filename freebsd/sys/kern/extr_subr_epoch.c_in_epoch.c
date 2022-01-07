
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int epoch_t ;


 int in_epoch_verbose (int ,int ) ;

int
in_epoch(epoch_t epoch)
{
 return (in_epoch_verbose(epoch, 0));
}
