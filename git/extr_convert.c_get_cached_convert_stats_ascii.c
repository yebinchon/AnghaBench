
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;


 int free (void*) ;
 char* gather_convert_stats_ascii (void*,unsigned long) ;
 void* read_blob_data_from_index (struct index_state const*,char const*,unsigned long*) ;

const char *get_cached_convert_stats_ascii(const struct index_state *istate,
        const char *path)
{
 const char *ret;
 unsigned long sz;
 void *data = read_blob_data_from_index(istate, path, &sz);
 ret = gather_convert_stats_ascii(data, sz);
 free(data);
 return ret;
}
