
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct tool_ctx {int dev; } ;


 int device_printf (int ,char*,int ,unsigned long long,unsigned long long) ;
 scalar_t__ ntb_db_read (int ) ;
 scalar_t__ ntb_db_vector_mask (int ,int ) ;

__attribute__((used)) static void
tool_db_event(void *ctx, uint32_t vec)
{
 struct tool_ctx *tc = ctx;
 uint64_t db_bits, db_mask;

 db_mask = ntb_db_vector_mask(tc->dev, vec);
 db_bits = ntb_db_read(tc->dev);

 device_printf(tc->dev, "doorbell vec %d mask %#llx bits %#llx\n",
     vec, (unsigned long long)db_mask, (unsigned long long)db_bits);
}
