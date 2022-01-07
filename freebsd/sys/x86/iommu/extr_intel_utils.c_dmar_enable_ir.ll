; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_enable_ir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_enable_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }

@DMAR_GCMD_IRE = common dso_local global i32 0, align 4
@DMAR_GCMD_CFI = common dso_local global i32 0, align 4
@DMAR_GCMD_REG = common dso_local global i32 0, align 4
@DMAR_GSTS_REG = common dso_local global i32 0, align 4
@DMAR_GSTS_IRES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_enable_ir(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  %3 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %4 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %5 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %4)
  %6 = load i32, i32* @DMAR_GCMD_IRE, align 4
  %7 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %8 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @DMAR_GCMD_CFI, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %14 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %18 = load i32, i32* @DMAR_GCMD_REG, align 4
  %19 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %20 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dmar_write4(%struct.dmar_unit* %17, i32 %18, i32 %21)
  %23 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %24 = load i32, i32* @DMAR_GSTS_REG, align 4
  %25 = call i32 @dmar_read4(%struct.dmar_unit* %23, i32 %24)
  %26 = load i32, i32* @DMAR_GSTS_IRES, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @DMAR_WAIT_UNTIL(i32 %29)
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_write4(%struct.dmar_unit*, i32, i32) #1

declare dso_local i32 @DMAR_WAIT_UNTIL(i32) #1

declare dso_local i32 @dmar_read4(%struct.dmar_unit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
