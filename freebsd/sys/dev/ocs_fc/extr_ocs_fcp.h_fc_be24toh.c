
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ocs_be32toh (int) ;

__attribute__((used)) static inline uint32_t fc_be24toh(uint32_t x) { return (ocs_be32toh(x) >> 8); }
