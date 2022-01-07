
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_host_resources {size_t num_dma_tags; struct bhndb_host_resources* dma_tags; struct bhndb_host_resources* resource_specs; struct bhndb_host_resources* resources; int owner; } ;


 int M_BHND ;
 int bus_dma_tag_destroy (struct bhndb_host_resources) ;
 int bus_release_resources (int ,struct bhndb_host_resources*,struct bhndb_host_resources*) ;
 int free (struct bhndb_host_resources*,int ) ;

void
bhndb_release_host_resources(struct bhndb_host_resources *hr)
{
 bus_release_resources(hr->owner, hr->resource_specs, hr->resources);

 for (size_t i = 0; i < hr->num_dma_tags; i++)
  bus_dma_tag_destroy(hr->dma_tags[i]);

 free(hr->resources, M_BHND);
 free(hr->resource_specs, M_BHND);
 free(hr->dma_tags, M_BHND);
 free(hr, M_BHND);
}
