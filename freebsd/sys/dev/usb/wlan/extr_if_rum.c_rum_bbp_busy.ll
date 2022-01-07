; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_bbp_busy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_bbp_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32 }

@RT2573_PHY_CSR3 = common dso_local global i32 0, align 4
@RT2573_BBP_BUSY = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rum_softc*)* @rum_bbp_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_bbp_busy(%struct.rum_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rum_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 100
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %10 = load i32, i32* @RT2573_PHY_CSR3, align 4
  %11 = call i32 @rum_read(%struct.rum_softc* %9, i32 %10)
  %12 = load i32, i32* @RT2573_BBP_BUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %27

16:                                               ; preds = %8
  %17 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %18 = load i32, i32* @hz, align 4
  %19 = sdiv i32 %18, 100
  %20 = call i64 @rum_pause(%struct.rum_softc* %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %27

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %22, %15, %5
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 100
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @rum_read(%struct.rum_softc*, i32) #1

declare dso_local i64 @rum_pause(%struct.rum_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
