; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_get_ioreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_get_ioreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct_softc = type { i32* }

@NCT_IO_IOR = common dso_local global i64 0, align 8
@NCT_LD7_GPIO0_IOR = common dso_local global i64 0, align 8
@NCT_LD7_GPIO1_IOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nct_softc*, i64, i32)* @nct_get_ioreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nct_get_ioreg(%struct.nct_softc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.nct_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nct_softc* %0, %struct.nct_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %9 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i64, i64* @NCT_IO_IOR, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add nsw i64 %13, %14
  store i64 %15, i64* %7, align 8
  br label %28

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i64, i64* @NCT_LD7_GPIO0_IOR, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %7, align 8
  br label %27

23:                                               ; preds = %16
  %24 = load i64, i64* @NCT_LD7_GPIO1_IOR, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %23, %19
  br label %28

28:                                               ; preds = %27, %12
  %29 = load i64, i64* %7, align 8
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
