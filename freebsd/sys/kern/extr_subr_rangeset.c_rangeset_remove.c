
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct rangeset {int dummy; } ;


 int rangeset_remove_pred (struct rangeset*,int ,int ,int ) ;
 int rangeset_true_pred ;

int
rangeset_remove(struct rangeset *rs, uint64_t start, uint64_t end)
{

 return (rangeset_remove_pred(rs, start, end, rangeset_true_pred));
}
