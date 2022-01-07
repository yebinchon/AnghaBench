
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int die (char*,int ) ;
 int oid_to_hex (struct object_id const*) ;
 scalar_t__ stream_blob_to_fd (int,struct object_id const*,int *,int ) ;

__attribute__((used)) static int stream_blob(const struct object_id *oid)
{
 if (stream_blob_to_fd(1, oid, ((void*)0), 0))
  die("unable to stream %s to stdout", oid_to_hex(oid));
 return 0;
}
