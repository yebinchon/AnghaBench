
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct cache_entry {int ce_mode; int oid; } ;


 int read_blob_object (struct strbuf*,int *,int ) ;

__attribute__((used)) static int read_file_or_gitlink(const struct cache_entry *ce, struct strbuf *buf)
{
 if (!ce)
  return 0;
 return read_blob_object(buf, &ce->oid, ce->ce_mode);
}
