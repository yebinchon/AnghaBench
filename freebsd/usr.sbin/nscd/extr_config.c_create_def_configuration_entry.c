
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_sec; } ;
struct TYPE_3__ {int entry_type; } ;
struct timeval {int max_elemsize; int satisf_elemsize; TYPE_2__ max_lifetime; int max_sessions; TYPE_1__ cep; int tv_sec; int policy; int confidence_threshold; int cache_entries_size; } ;
struct mp_cache_entry_params {int max_elemsize; int satisf_elemsize; TYPE_2__ max_lifetime; int max_sessions; TYPE_1__ cep; int tv_sec; int policy; int confidence_threshold; int cache_entries_size; } ;
struct configuration_entry {int dummy; } ;
struct common_cache_entry_params {int max_elemsize; int satisf_elemsize; TYPE_2__ max_lifetime; int max_sessions; TYPE_1__ cep; int tv_sec; int policy; int confidence_threshold; int cache_entries_size; } ;


 int CET_COMMON ;
 int CET_MULTIPART ;
 int CPT_FIFO ;
 int CPT_LRU ;
 int DEFAULT_CACHE_HT_SIZE ;
 int DEFAULT_COMMON_ENTRY_TIMEOUT ;
 int DEFAULT_MP_ENTRY_TIMEOUT ;
 int DEFAULT_MULITPART_LIFETIME ;
 int DEFAULT_MULITPART_SESSIONS_SIZE ;
 int DEFAULT_MULTIPART_ELEMENTS_SIZE ;
 int DEFAULT_NEGATIVE_CONF_THRESH ;
 int DEFAULT_NEGATIVE_ELEMENTS_SIZE ;
 int DEFAULT_NEGATIVE_LIFETIME ;
 int DEFAULT_POSITIVE_CONF_THRESH ;
 int DEFAULT_POSITIVE_ELEMENTS_SIZE ;
 int DEFAULT_POSITIVE_LIFETIME ;
 int TRACE_IN (struct configuration_entry* (*) (char const*)) ;
 int TRACE_OUT (struct configuration_entry* (*) (char const*)) ;
 struct configuration_entry* create_configuration_entry (char const*,struct timeval*,struct timeval*,struct timeval*,struct timeval*,struct timeval*) ;
 int memcpy (struct timeval*,struct timeval*,int) ;
 int memset (struct timeval*,int ,int) ;

struct configuration_entry *
create_def_configuration_entry(const char *name)
{
 struct common_cache_entry_params positive_params, negative_params;
 struct mp_cache_entry_params mp_params;
 struct timeval default_common_timeout, default_mp_timeout;

 struct configuration_entry *res = ((void*)0);

 TRACE_IN(create_def_configuration_entry);
 memset(&positive_params, 0,
  sizeof(struct common_cache_entry_params));
 positive_params.cep.entry_type = CET_COMMON;
 positive_params.cache_entries_size = DEFAULT_CACHE_HT_SIZE;
 positive_params.max_elemsize = DEFAULT_POSITIVE_ELEMENTS_SIZE;
 positive_params.satisf_elemsize = DEFAULT_POSITIVE_ELEMENTS_SIZE / 2;
 positive_params.max_lifetime.tv_sec = DEFAULT_POSITIVE_LIFETIME;
 positive_params.confidence_threshold = DEFAULT_POSITIVE_CONF_THRESH;
 positive_params.policy = CPT_LRU;

 memcpy(&negative_params, &positive_params,
  sizeof(struct common_cache_entry_params));
 negative_params.max_elemsize = DEFAULT_NEGATIVE_ELEMENTS_SIZE;
 negative_params.satisf_elemsize = DEFAULT_NEGATIVE_ELEMENTS_SIZE / 2;
 negative_params.max_lifetime.tv_sec = DEFAULT_NEGATIVE_LIFETIME;
 negative_params.confidence_threshold = DEFAULT_NEGATIVE_CONF_THRESH;
 negative_params.policy = CPT_FIFO;

 memset(&default_common_timeout, 0, sizeof(struct timeval));
 default_common_timeout.tv_sec = DEFAULT_COMMON_ENTRY_TIMEOUT;

 memset(&default_mp_timeout, 0, sizeof(struct timeval));
 default_mp_timeout.tv_sec = DEFAULT_MP_ENTRY_TIMEOUT;

 memset(&mp_params, 0,
  sizeof(struct mp_cache_entry_params));
 mp_params.cep.entry_type = CET_MULTIPART;
 mp_params.max_elemsize = DEFAULT_MULTIPART_ELEMENTS_SIZE;
 mp_params.max_sessions = DEFAULT_MULITPART_SESSIONS_SIZE;
 mp_params.max_lifetime.tv_sec = DEFAULT_MULITPART_LIFETIME;

 res = create_configuration_entry(name, &default_common_timeout,
  &default_mp_timeout, &positive_params, &negative_params,
  &mp_params);

 TRACE_OUT(create_def_configuration_entry);
 return (res);
}
