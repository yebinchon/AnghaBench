
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {int flags; } ;
struct cluster_layout {scalar_t__ region1; scalar_t__ region3; } ;


 scalar_t__ CL_METADATA_SIZE ;
 int FL_BUF_PACKING ;
 int MPASS (int) ;

__attribute__((used)) static inline int
cl_has_metadata(struct sge_fl *fl, struct cluster_layout *cll)
{
 int rc = fl->flags & FL_BUF_PACKING || cll->region1 > 0;

 if (rc)
  MPASS(cll->region3 >= CL_METADATA_SIZE);

 return (rc);
}
