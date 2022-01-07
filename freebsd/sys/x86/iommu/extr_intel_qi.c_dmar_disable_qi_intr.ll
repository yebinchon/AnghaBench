; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_disable_qi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_disable_qi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"dmar%d: QI is not supported\00", align 1
@DMAR_IECTL_REG = common dso_local global i32 0, align 4
@DMAR_IECTL_IM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_disable_qi_intr(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  %3 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %4 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %5 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %4)
  %6 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %7 = call i32 @DMAR_HAS_QI(%struct.dmar_unit* %6)
  %8 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %9 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @KASSERT(i32 %7, i8* %12)
  %14 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %15 = load i32, i32* @DMAR_IECTL_REG, align 4
  %16 = call i32 @dmar_read4(%struct.dmar_unit* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %18 = load i32, i32* @DMAR_IECTL_REG, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @DMAR_IECTL_IM, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @dmar_write4(%struct.dmar_unit* %17, i32 %18, i32 %21)
  ret void
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DMAR_HAS_QI(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_read4(%struct.dmar_unit*, i32) #1

declare dso_local i32 @dmar_write4(%struct.dmar_unit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
