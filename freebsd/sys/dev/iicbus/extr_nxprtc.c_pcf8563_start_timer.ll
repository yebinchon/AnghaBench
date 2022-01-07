; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_pcf8563_start_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_pcf8563_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxprtc_softc = type { i32 }

@PCF8563_R_TMR_CTRL = common dso_local global i32 0, align 4
@PCF8563_B_TMR_ENABLE = common dso_local global i32 0, align 4
@PCF8563_B_TMR_64HZ = common dso_local global i32 0, align 4
@PCF8563_M_TMR_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxprtc_softc*)* @pcf8563_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8563_start_timer(%struct.nxprtc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nxprtc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nxprtc_softc* %0, %struct.nxprtc_softc** %3, align 8
  %7 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %8 = load i32, i32* @PCF8563_R_TMR_CTRL, align 4
  %9 = call i32 @read_reg(%struct.nxprtc_softc* %7, i32 %8, i32* %6)
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load i32, i32* @PCF8563_B_TMR_ENABLE, align 4
  %15 = load i32, i32* @PCF8563_B_TMR_64HZ, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PCF8563_M_TMR_CTRL, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %13
  %23 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %24 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @write_reg(%struct.nxprtc_softc* %23, i32 %26, i32 0)
  store i32 %27, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %41

31:                                               ; preds = %22
  %32 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %33 = load i32, i32* @PCF8563_R_TMR_CTRL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @write_reg(%struct.nxprtc_softc* %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %13
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %37, %29, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @read_reg(%struct.nxprtc_softc*, i32, i32*) #1

declare dso_local i32 @write_reg(%struct.nxprtc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
