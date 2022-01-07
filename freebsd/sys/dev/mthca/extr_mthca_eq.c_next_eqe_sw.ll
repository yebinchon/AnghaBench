; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_eq.c_next_eqe_sw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_eq.c_next_eqe_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_eqe = type { i32 }
%struct.mthca_eq = type { i32 }

@MTHCA_EQ_ENTRY_OWNER_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mthca_eqe* (%struct.mthca_eq*)* @next_eqe_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mthca_eqe* @next_eqe_sw(%struct.mthca_eq* %0) #0 {
  %2 = alloca %struct.mthca_eq*, align 8
  %3 = alloca %struct.mthca_eqe*, align 8
  store %struct.mthca_eq* %0, %struct.mthca_eq** %2, align 8
  %4 = load %struct.mthca_eq*, %struct.mthca_eq** %2, align 8
  %5 = load %struct.mthca_eq*, %struct.mthca_eq** %2, align 8
  %6 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mthca_eqe* @get_eqe(%struct.mthca_eq* %4, i32 %7)
  store %struct.mthca_eqe* %8, %struct.mthca_eqe** %3, align 8
  %9 = load i32, i32* @MTHCA_EQ_ENTRY_OWNER_HW, align 4
  %10 = load %struct.mthca_eqe*, %struct.mthca_eqe** %3, align 8
  %11 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %18

16:                                               ; preds = %1
  %17 = load %struct.mthca_eqe*, %struct.mthca_eqe** %3, align 8
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi %struct.mthca_eqe* [ null, %15 ], [ %17, %16 ]
  ret %struct.mthca_eqe* %19
}

declare dso_local %struct.mthca_eqe* @get_eqe(%struct.mthca_eq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
