
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_hw_t ;
typedef int ocs_hw_io_t ;


 int ocs_hw_init_free_io (int *) ;
 int ocs_hw_io_restore_sgl (int *,int *) ;

__attribute__((used)) static inline void
ocs_hw_io_free_common(ocs_hw_t *hw, ocs_hw_io_t *io)
{

 ocs_hw_init_free_io(io);


 ocs_hw_io_restore_sgl(hw, io);
}
