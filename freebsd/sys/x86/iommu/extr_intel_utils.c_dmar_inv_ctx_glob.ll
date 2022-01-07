; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_inv_ctx_glob.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_inv_ctx_glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"QI enabled\00", align 1
@DMAR_CCMD_REG = common dso_local global i64 0, align 8
@DMAR_CCMD_ICC = common dso_local global i32 0, align 4
@DMAR_CCMD_CIRG_GLOB = common dso_local global i32 0, align 4
@DMAR_CCMD_ICC32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_inv_ctx_glob(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  %3 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %4 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %5 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %4)
  %6 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %7 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %14 = load i64, i64* @DMAR_CCMD_REG, align 8
  %15 = load i32, i32* @DMAR_CCMD_ICC, align 4
  %16 = load i32, i32* @DMAR_CCMD_CIRG_GLOB, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @dmar_write8(%struct.dmar_unit* %13, i64 %14, i32 %17)
  %19 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %20 = load i64, i64* @DMAR_CCMD_REG, align 8
  %21 = add nsw i64 %20, 4
  %22 = call i32 @dmar_read4(%struct.dmar_unit* %19, i64 %21)
  %23 = load i32, i32* @DMAR_CCMD_ICC32, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @DMAR_WAIT_UNTIL(i32 %26)
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dmar_write8(%struct.dmar_unit*, i64, i32) #1

declare dso_local i32 @DMAR_WAIT_UNTIL(i32) #1

declare dso_local i32 @dmar_read4(%struct.dmar_unit*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
