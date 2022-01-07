
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumperinfo {int dummy; } ;


 int dump_append (struct dumperinfo*,int ,int ,scalar_t__) ;
 int dump_va ;
 scalar_t__ fragsz ;

__attribute__((used)) static int
blk_flush(struct dumperinfo *di)
{
 int error;

 if (fragsz == 0)
  return (0);

 error = dump_append(di, dump_va, 0, fragsz);
 fragsz = 0;
 return (error);
}
