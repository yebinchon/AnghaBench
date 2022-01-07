; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_quirks.c_dmar_quirks_pre_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_quirks.c_dmar_quirks_pre_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }

@DMAR_BARRIER_USEQ = common dso_local global i32 0, align 4
@pre_use_nb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_quirks_pre_use(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %3 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %4 = load i32, i32* @DMAR_BARRIER_USEQ, align 4
  %5 = call i32 @dmar_barrier_enter(%struct.dmar_unit* %3, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %19

8:                                                ; preds = %1
  %9 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %10 = call i32 @DMAR_LOCK(%struct.dmar_unit* %9)
  %11 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %12 = load i32, i32* @pre_use_nb, align 4
  %13 = load i32, i32* @pre_use_nb, align 4
  %14 = call i32 @nitems(i32 %13)
  %15 = call i32 @dmar_match_quirks(%struct.dmar_unit* %11, i32 %12, i32 %14, i32* null, i32 0)
  %16 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %17 = load i32, i32* @DMAR_BARRIER_USEQ, align 4
  %18 = call i32 @dmar_barrier_exit(%struct.dmar_unit* %16, i32 %17)
  br label %19

19:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @dmar_barrier_enter(%struct.dmar_unit*, i32) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_match_quirks(%struct.dmar_unit*, i32, i32, i32*, i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @dmar_barrier_exit(%struct.dmar_unit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
