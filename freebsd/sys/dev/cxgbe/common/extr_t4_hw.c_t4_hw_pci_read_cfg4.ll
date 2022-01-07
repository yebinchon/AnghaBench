; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_hw_pci_read_cfg4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_hw_pci_read_cfg4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@CHELSIO_T5 = common dso_local global i64 0, align 8
@F_ENABLE = common dso_local global i32 0, align 4
@F_T6_ENABLE = common dso_local global i32 0, align 4
@F_LOCALCFG = common dso_local global i32 0, align 4
@A_PCIE_CFG_SPACE_REQ = common dso_local global i32 0, align 4
@A_PCIE_CFG_SPACE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_hw_pci_read_cfg4(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @V_FUNCTION(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @V_REGISTER(i32 %11)
  %13 = or i32 %10, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i64 @chip_id(%struct.TYPE_7__* %14)
  %16 = load i64, i64* @CHELSIO_T5, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @F_ENABLE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @F_T6_ENABLE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = call i64 @is_t4(%struct.TYPE_7__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @F_LOCALCFG, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = load i32, i32* @A_PCIE_CFG_SPACE_REQ, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @t4_write_reg(%struct.TYPE_7__* %35, i32 %36, i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = load i32, i32* @A_PCIE_CFG_SPACE_DATA, align 4
  %41 = call i32 @t4_read_reg(%struct.TYPE_7__* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = load i32, i32* @A_PCIE_CFG_SPACE_REQ, align 4
  %44 = call i32 @t4_write_reg(%struct.TYPE_7__* %42, i32 %43, i32 0)
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @V_FUNCTION(i32) #1

declare dso_local i32 @V_REGISTER(i32) #1

declare dso_local i64 @chip_id(%struct.TYPE_7__*) #1

declare dso_local i64 @is_t4(%struct.TYPE_7__*) #1

declare dso_local i32 @t4_write_reg(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
