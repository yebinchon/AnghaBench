; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_eq.c_get_eqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_eq.c_get_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_eqe = type { i32 }
%struct.mthca_eq = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mthca_eqe* }

@MTHCA_EQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mthca_eqe* (%struct.mthca_eq*, i32)* @get_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mthca_eqe* @get_eqe(%struct.mthca_eq* %0, i32 %1) #0 {
  %3 = alloca %struct.mthca_eq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mthca_eq* %0, %struct.mthca_eq** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.mthca_eq*, %struct.mthca_eq** %3, align 8
  %8 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %6, %10
  %12 = load i32, i32* @MTHCA_EQ_ENTRY_SIZE, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load %struct.mthca_eq*, %struct.mthca_eq** %3, align 8
  %16 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = udiv i64 %18, %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.mthca_eqe*, %struct.mthca_eqe** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = urem i64 %24, %25
  %27 = getelementptr inbounds %struct.mthca_eqe, %struct.mthca_eqe* %23, i64 %26
  ret %struct.mthca_eqe* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
