
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hash; } ;
struct treeent {TYPE_1__ oid; int name; int mode; scalar_t__ len; } ;
struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;
struct TYPE_4__ {int rawsz; } ;


 int QSORT (struct treeent**,int,int ) ;
 int ent_compare ;
 struct treeent** entries ;
 int strbuf_add (struct strbuf*,int ,int ) ;
 int strbuf_addf (struct strbuf*,char*,int ,int ,char) ;
 int strbuf_init (struct strbuf*,size_t) ;
 int strbuf_release (struct strbuf*) ;
 TYPE_2__* the_hash_algo ;
 int tree_type ;
 int used ;
 int write_object_file (int ,int ,int ,struct object_id*) ;

__attribute__((used)) static void write_tree(struct object_id *oid)
{
 struct strbuf buf;
 size_t size;
 int i;

 QSORT(entries, used, ent_compare);
 for (size = i = 0; i < used; i++)
  size += 32 + entries[i]->len;

 strbuf_init(&buf, size);
 for (i = 0; i < used; i++) {
  struct treeent *ent = entries[i];
  strbuf_addf(&buf, "%o %s%c", ent->mode, ent->name, '\0');
  strbuf_add(&buf, ent->oid.hash, the_hash_algo->rawsz);
 }

 write_object_file(buf.buf, buf.len, tree_type, oid);
 strbuf_release(&buf);
}
