; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_intr_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@CHELSIO_T5 = common dso_local global i64 0, align 8
@F_ERR_DROPPED_DB = common dso_local global i32 0, align 4
@F_ERR_EGR_CTXT_PRIO = common dso_local global i32 0, align 4
@F_DBFIFO_HP_INT = common dso_local global i32 0, align 4
@F_ERR_PCIE_ERROR0 = common dso_local global i32 0, align 4
@F_ERR_PCIE_ERROR1 = common dso_local global i32 0, align 4
@F_FATAL_WRE_LEN = common dso_local global i32 0, align 4
@F_ERR_CPL_EXCEED_IQE_SIZE = common dso_local global i32 0, align 4
@F_ERR_INVALID_CIDX_INC = common dso_local global i32 0, align 4
@F_ERR_CPL_OPCODE_0 = common dso_local global i32 0, align 4
@F_ERR_DATA_CPL_ON_HIGH_QID1 = common dso_local global i32 0, align 4
@F_INGRESS_SIZE_ERR = common dso_local global i32 0, align 4
@F_ERR_DATA_CPL_ON_HIGH_QID0 = common dso_local global i32 0, align 4
@F_ERR_BAD_DB_PIDX3 = common dso_local global i32 0, align 4
@F_ERR_BAD_DB_PIDX2 = common dso_local global i32 0, align 4
@F_ERR_BAD_DB_PIDX1 = common dso_local global i32 0, align 4
@F_ERR_BAD_DB_PIDX0 = common dso_local global i32 0, align 4
@F_ERR_ING_CTXT_PRIO = common dso_local global i32 0, align 4
@F_DBFIFO_LP_INT = common dso_local global i32 0, align 4
@F_EGRESS_SIZE_ERR = common dso_local global i32 0, align 4
@A_SGE_INT_ENABLE3 = common dso_local global i32 0, align 4
@A_PL_PF_INT_ENABLE = common dso_local global i32 0, align 4
@PF_INTR_MASK = common dso_local global i32 0, align 4
@A_PL_INT_ENABLE = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_I2CM = common dso_local global i32 0, align 4
@A_PL_INT_MAP0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_intr_enable(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = call i64 @chip_id(%struct.adapter* %4)
  %6 = load i64, i64* @CHELSIO_T5, align 8
  %7 = icmp sle i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @F_ERR_DROPPED_DB, align 4
  %10 = load i32, i32* @F_ERR_EGR_CTXT_PRIO, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @F_DBFIFO_HP_INT, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @F_ERR_PCIE_ERROR0, align 4
  %16 = load i32, i32* @F_ERR_PCIE_ERROR1, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @F_FATAL_WRE_LEN, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %8
  %21 = load i32, i32* @F_ERR_CPL_EXCEED_IQE_SIZE, align 4
  %22 = load i32, i32* @F_ERR_INVALID_CIDX_INC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @F_ERR_CPL_OPCODE_0, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @F_ERR_DATA_CPL_ON_HIGH_QID1, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @F_INGRESS_SIZE_ERR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @F_ERR_DATA_CPL_ON_HIGH_QID0, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @F_ERR_BAD_DB_PIDX3, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @F_ERR_BAD_DB_PIDX2, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @F_ERR_BAD_DB_PIDX1, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @F_ERR_BAD_DB_PIDX0, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @F_ERR_ING_CTXT_PRIO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @F_DBFIFO_LP_INT, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @F_EGRESS_SIZE_ERR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load %struct.adapter*, %struct.adapter** %2, align 8
  %49 = load i32, i32* @A_SGE_INT_ENABLE3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @t4_set_reg_field(%struct.adapter* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.adapter*, %struct.adapter** %2, align 8
  %54 = load i32, i32* @A_PL_PF_INT_ENABLE, align 4
  %55 = call i32 @MYPF_REG(i32 %54)
  %56 = load i32, i32* @PF_INTR_MASK, align 4
  %57 = call i32 @t4_write_reg(%struct.adapter* %53, i32 %55, i32 %56)
  %58 = load %struct.adapter*, %struct.adapter** %2, align 8
  %59 = load i32, i32* @A_PL_INT_ENABLE, align 4
  %60 = load i32, i32* @F_SF, align 4
  %61 = load i32, i32* @F_I2CM, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @t4_set_reg_field(%struct.adapter* %58, i32 %59, i32 %62, i32 0)
  %64 = load %struct.adapter*, %struct.adapter** %2, align 8
  %65 = load i32, i32* @A_PL_INT_MAP0, align 4
  %66 = load %struct.adapter*, %struct.adapter** %2, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 1, %68
  %70 = call i32 @t4_set_reg_field(%struct.adapter* %64, i32 %65, i32 0, i32 %69)
  ret void
}

declare dso_local i64 @chip_id(%struct.adapter*) #1

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
