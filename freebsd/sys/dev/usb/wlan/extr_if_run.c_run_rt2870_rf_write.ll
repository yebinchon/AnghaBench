; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt2870_rf_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt2870_rf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32 }

@RT2860_RF_CSR_CFG0 = common dso_local global i32 0, align 4
@RT2860_RF_REG_CTRL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.run_softc*, i32)* @run_rt2870_rf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_rt2870_rf_write(%struct.run_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.run_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %26, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %14 = load i32, i32* @RT2860_RF_CSR_CFG0, align 4
  %15 = call i32 @run_read(%struct.run_softc* %13, i32 %14, i32* %6)
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @RT2860_RF_REG_CTRL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %29

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %9

29:                                               ; preds = %24, %9
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %29
  %35 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %36 = load i32, i32* @RT2860_RF_CSR_CFG0, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @run_write(%struct.run_softc* %35, i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %32, %17
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
