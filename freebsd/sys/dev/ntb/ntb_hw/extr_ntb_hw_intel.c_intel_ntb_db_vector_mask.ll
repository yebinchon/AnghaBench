; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_db_vector_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_db_vector_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @intel_ntb_db_vector_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_db_vector_mask(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ntb_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.ntb_softc* @device_get_softc(i32 %7)
  store %struct.ntb_softc* %8, %struct.ntb_softc** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.ntb_softc*, %struct.ntb_softc** %6, align 8
  %11 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.ntb_softc*, %struct.ntb_softc** %6, align 8
  %17 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ntb_softc*, %struct.ntb_softc** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @intel_ntb_vec_mask(%struct.ntb_softc* %19, i64 %20)
  %22 = and i32 %18, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %15, %14
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.ntb_softc* @device_get_softc(i32) #1

declare dso_local i32 @intel_ntb_vec_mask(%struct.ntb_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
