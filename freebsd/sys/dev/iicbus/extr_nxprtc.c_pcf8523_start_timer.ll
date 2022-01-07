; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_pcf8523_start_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_pcf8523_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxprtc_softc = type { i32 }

@PCF8523_R_TMR_A_FREQ = common dso_local global i32 0, align 4
@PCF8523_R_TMR_CLKOUT = common dso_local global i32 0, align 4
@PCF8523_B_TMR_A_64HZ = common dso_local global i32 0, align 4
@PCF8523_B_CLKOUT_TACD = common dso_local global i32 0, align 4
@PCF8523_B_CLKOUT_HIGHZ = common dso_local global i32 0, align 4
@PCF8523_M_TMR_A_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxprtc_softc*)* @pcf8523_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8523_start_timer(%struct.nxprtc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nxprtc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nxprtc_softc* %0, %struct.nxprtc_softc** %3, align 8
  %9 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %10 = load i32, i32* @PCF8523_R_TMR_A_FREQ, align 4
  %11 = call i32 @read_reg(%struct.nxprtc_softc* %9, i32 %10, i32* %8)
  store i32 %11, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %17 = load i32, i32* @PCF8523_R_TMR_CLKOUT, align 4
  %18 = call i32 @read_reg(%struct.nxprtc_softc* %16, i32 %17, i32* %5)
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %63

22:                                               ; preds = %15
  %23 = load i32, i32* @PCF8523_B_TMR_A_64HZ, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @PCF8523_B_CLKOUT_TACD, align 4
  %25 = load i32, i32* @PCF8523_B_CLKOUT_HIGHZ, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @PCF8523_M_TMR_A_FREQ, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %30, %22
  %37 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %38 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %39 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @write_reg(%struct.nxprtc_softc* %37, i32 %40, i32 0)
  store i32 %41, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %63

45:                                               ; preds = %36
  %46 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %47 = load i32, i32* @PCF8523_R_TMR_A_FREQ, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @write_reg(%struct.nxprtc_softc* %46, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %63

53:                                               ; preds = %45
  %54 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %55 = load i32, i32* @PCF8523_R_TMR_CLKOUT, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @write_reg(%struct.nxprtc_softc* %54, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %63

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %30
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %59, %51, %43, %20, %13
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @read_reg(%struct.nxprtc_softc*, i32, i32*) #1

declare dso_local i32 @write_reg(%struct.nxprtc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
