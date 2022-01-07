
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {int num_hwfns; struct ecore_hwfn* hwfns; } ;



__attribute__((used)) static int
qlnx_find_hwfn_index(struct ecore_hwfn *p_hwfn)
{
 int i;
 struct ecore_dev *cdev;

 cdev = p_hwfn->p_dev;

 for (i = 0; i < cdev->num_hwfns; i++) {
  if (&cdev->hwfns[i] == p_hwfn)
   break;
 }

 if (i >= cdev->num_hwfns)
  return (-1);

 return (i);
}
