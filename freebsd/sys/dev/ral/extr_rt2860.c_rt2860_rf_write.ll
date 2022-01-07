; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_rf_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_rf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32 }

@RT2860_RF_CSR_CFG0 = common dso_local global i32 0, align 4
@RT2860_RF_REG_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not write to RF\0A\00", align 1
@RT2860_RF_REG_WIDTH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*, i32, i32)* @rt2860_rf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2860_rf_write(%struct.rt2860_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rt2860_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %22, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 100
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %14 = load i32, i32* @RT2860_RF_CSR_CFG0, align 4
  %15 = call i32 @RAL_READ(%struct.rt2860_softc* %13, i32 %14)
  %16 = load i32, i32* @RT2860_RF_REG_CTRL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %25

20:                                               ; preds = %12
  %21 = call i32 @DELAY(i32 1)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %9

25:                                               ; preds = %19, %9
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 100
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %30 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %49

33:                                               ; preds = %25
  %34 = load i32, i32* @RT2860_RF_REG_CTRL, align 4
  %35 = load i32, i32* @RT2860_RF_REG_WIDTH_SHIFT, align 4
  %36 = shl i32 24, %35
  %37 = or i32 %34, %36
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 4194303
  %40 = shl i32 %39, 2
  %41 = or i32 %37, %40
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 3
  %44 = or i32 %41, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %46 = load i32, i32* @RT2860_RF_CSR_CFG0, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @RAL_WRITE(%struct.rt2860_softc* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
