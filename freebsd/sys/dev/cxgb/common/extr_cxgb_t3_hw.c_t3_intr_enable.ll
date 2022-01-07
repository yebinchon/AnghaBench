; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_intr_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_val_pair = type { i32, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@t3_intr_enable.intr_en_avp = internal global [9 x %struct.addr_val_pair] [%struct.addr_val_pair { i32 142, i64 134 }, %struct.addr_val_pair { i32 141, i64 134 }, %struct.addr_val_pair { i32 144, i64 134 }, %struct.addr_val_pair { i32 143, i64 136 }, %struct.addr_val_pair { i32 138, i64 128 }, %struct.addr_val_pair { i32 139, i64 129 }, %struct.addr_val_pair { i32 140, i64 130 }, %struct.addr_val_pair { i32 144, i64 137 }, %struct.addr_val_pair { i32 141, i64 131 }], align 16
@PL_INTR_MASK = common dso_local global i32 0, align 4
@A_TP_INT_ENABLE = common dso_local global i32 0, align 4
@T3_REV_C = common dso_local global i64 0, align 8
@A_SG_INT_ENABLE = common dso_local global i32 0, align 4
@SGE_INTR_MASK = common dso_local global i32 0, align 4
@A_CPL_INTR_ENABLE = common dso_local global i32 0, align 4
@CPLSW_INTR_MASK = common dso_local global i32 0, align 4
@F_CIM_OVFL_ERROR = common dso_local global i32 0, align 4
@A_ULPTX_INT_ENABLE = common dso_local global i32 0, align 4
@ULPTX_INTR_MASK = common dso_local global i32 0, align 4
@F_PBL_BOUND_ERR_CH0 = common dso_local global i32 0, align 4
@F_PBL_BOUND_ERR_CH1 = common dso_local global i32 0, align 4
@A_T3DBG_INT_ENABLE = common dso_local global i32 0, align 4
@A_PCIE_INT_ENABLE = common dso_local global i32 0, align 4
@PCIE_INTR_MASK = common dso_local global i32 0, align 4
@A_PCIX_INT_ENABLE = common dso_local global i32 0, align 4
@PCIX_INTR_MASK = common dso_local global i32 0, align 4
@A_PL_INT_ENABLE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_intr_enable(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load i32, i32* @PL_INTR_MASK, align 4
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  store i32 %3, i32* %5, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.addr_val_pair* getelementptr inbounds ([9 x %struct.addr_val_pair], [9 x %struct.addr_val_pair]* @t3_intr_enable.intr_en_avp, i64 0, i64 0))
  %8 = call i32 @t3_write_regs(%struct.TYPE_10__* %6, %struct.addr_val_pair* getelementptr inbounds ([9 x %struct.addr_val_pair], [9 x %struct.addr_val_pair]* @t3_intr_enable.intr_en_avp, i64 0, i64 0), i32 %7, i32 0)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = load i32, i32* @A_TP_INT_ENABLE, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @T3_REV_C, align 8
  %16 = icmp sge i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 46137343, i32 62914559
  %19 = call i32 @t3_write_reg(%struct.TYPE_10__* %9, i32 %10, i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = load i32, i32* @A_SG_INT_ENABLE, align 4
  %22 = load i32, i32* @SGE_INTR_MASK, align 4
  %23 = call i32 @t3_write_reg(%struct.TYPE_10__* %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = load i32, i32* @A_CPL_INTR_ENABLE, align 4
  %32 = load i32, i32* @CPLSW_INTR_MASK, align 4
  %33 = load i32, i32* @F_CIM_OVFL_ERROR, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @t3_write_reg(%struct.TYPE_10__* %30, i32 %31, i32 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = load i32, i32* @A_ULPTX_INT_ENABLE, align 4
  %38 = load i32, i32* @ULPTX_INTR_MASK, align 4
  %39 = load i32, i32* @F_PBL_BOUND_ERR_CH0, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @F_PBL_BOUND_ERR_CH1, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @t3_write_reg(%struct.TYPE_10__* %36, i32 %37, i32 %42)
  br label %53

44:                                               ; preds = %1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = load i32, i32* @A_CPL_INTR_ENABLE, align 4
  %47 = load i32, i32* @CPLSW_INTR_MASK, align 4
  %48 = call i32 @t3_write_reg(%struct.TYPE_10__* %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = load i32, i32* @A_ULPTX_INT_ENABLE, align 4
  %51 = load i32, i32* @ULPTX_INTR_MASK, align 4
  %52 = call i32 @t3_write_reg(%struct.TYPE_10__* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %29
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = load i32, i32* @A_T3DBG_INT_ENABLE, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = call i32 @calc_gpio_intr(%struct.TYPE_10__* %56)
  %58 = call i32 @t3_write_reg(%struct.TYPE_10__* %54, i32 %55, i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = call i64 @is_pcie(%struct.TYPE_10__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = load i32, i32* @A_PCIE_INT_ENABLE, align 4
  %65 = load i32, i32* @PCIE_INTR_MASK, align 4
  %66 = call i32 @t3_write_reg(%struct.TYPE_10__* %63, i32 %64, i32 %65)
  br label %72

67:                                               ; preds = %53
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = load i32, i32* @A_PCIX_INT_ENABLE, align 4
  %70 = load i32, i32* @PCIX_INTR_MASK, align 4
  %71 = call i32 @t3_write_reg(%struct.TYPE_10__* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = load i32, i32* @A_PL_INT_ENABLE0, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @t3_write_reg(%struct.TYPE_10__* %73, i32 %74, i32 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = load i32, i32* @A_PL_INT_ENABLE0, align 4
  %81 = call i32 @t3_read_reg(%struct.TYPE_10__* %79, i32 %80)
  ret void
}

declare dso_local i32 @t3_write_regs(%struct.TYPE_10__*, %struct.addr_val_pair*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.addr_val_pair*) #1

declare dso_local i32 @t3_write_reg(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @calc_gpio_intr(%struct.TYPE_10__*) #1

declare dso_local i64 @is_pcie(%struct.TYPE_10__*) #1

declare dso_local i32 @t3_read_reg(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
