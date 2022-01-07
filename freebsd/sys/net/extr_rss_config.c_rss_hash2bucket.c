
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int rss_getbucket (int) ;

int
rss_hash2bucket(uint32_t hash_val, uint32_t hash_type, uint32_t *bucket_id)
{

 switch (hash_type) {
 case 133:
 case 131:
 case 129:
 case 132:
 case 130:
 case 128:
  *bucket_id = rss_getbucket(hash_val);
  return (0);
 default:
  return (-1);
 }
}
