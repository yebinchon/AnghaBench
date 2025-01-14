
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tentry_info {int flags; } ;




 int OP_ADD ;
 int OP_DEL ;
 int TEI_FLAGS_ADDED ;
 int TEI_FLAGS_DELETED ;
 int TEI_FLAGS_ERROR ;
 int TEI_FLAGS_EXISTS ;
 int TEI_FLAGS_NOTFOUND ;

__attribute__((used)) static void
store_tei_result(struct tentry_info *tei, int op, int error, uint32_t num)
{
 int flag;

 flag = 0;

 switch (error) {
 case 0:
  if (op == OP_ADD && num != 0)
   flag = TEI_FLAGS_ADDED;
  if (op == OP_DEL)
   flag = TEI_FLAGS_DELETED;
  break;
 case 128:
  flag = TEI_FLAGS_NOTFOUND;
  break;
 case 129:
  flag = TEI_FLAGS_EXISTS;
  break;
 default:
  flag = TEI_FLAGS_ERROR;
 }

 tei->flags |= flag;
}
