; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_dwc_fdt.c_jz4780_dwc_otg_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_dwc_fdt.c_jz4780_dwc_otg_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_dwc_otg_softc = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_dwc_otg_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_dwc_otg_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_dwc_otg_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @dwc_otg_detach(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.jz4780_dwc_otg_softc* @device_get_softc(i32 %13)
  store %struct.jz4780_dwc_otg_softc* %14, %struct.jz4780_dwc_otg_softc** %4, align 8
  %15 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %16 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %21 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @clk_release(i64 %22)
  br label %24

24:                                               ; preds = %19, %12
  %25 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %26 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.jz4780_dwc_otg_softc*, %struct.jz4780_dwc_otg_softc** %4, align 8
  %31 = getelementptr inbounds %struct.jz4780_dwc_otg_softc, %struct.jz4780_dwc_otg_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @clk_release(i64 %32)
  br label %34

34:                                               ; preds = %29, %24
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @dwc_otg_detach(i32) #1

declare dso_local %struct.jz4780_dwc_otg_softc* @device_get_softc(i32) #1

declare dso_local i32 @clk_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
