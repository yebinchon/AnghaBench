
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tentry_info {int flags; } ;
struct table_config {scalar_t__ limit; scalar_t__ count; } ;


 int EFBIG ;
 int TEI_FLAGS_DONTADD ;
 int TEI_FLAGS_LIMIT ;
 int TEI_FLAGS_UPDATE ;

__attribute__((used)) static int
check_table_limit(struct table_config *tc, struct tentry_info *tei)
{

 if (tc->limit == 0 || tc->count < tc->limit)
  return (0);

 if ((tei->flags & TEI_FLAGS_UPDATE) == 0) {

  tei->flags |= TEI_FLAGS_LIMIT;
  return (EFBIG);
 }







 tei->flags |= TEI_FLAGS_DONTADD;

 return (0);
}
