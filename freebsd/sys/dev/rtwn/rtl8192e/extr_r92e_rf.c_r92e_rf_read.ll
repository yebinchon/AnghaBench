; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_rf.c_r92e_rf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_rf.c_r92e_rf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_HSSI_PARAM2_READ_ADDR = common dso_local global i32 0, align 4
@R92C_HSSI_PARAM2_READ_EDGE = common dso_local global i32 0, align 4
@R92C_HSSI_PARAM1_PI = common dso_local global i32 0, align 4
@R92C_LSSI_READBACK_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r92e_rf_read(%struct.rtwn_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @R92C_HSSI_PARAM2(i32 %9)
  %11 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %8, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @R92C_HSSI_PARAM2(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @R92C_HSSI_PARAM2_READ_ADDR, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @RW(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @R92C_HSSI_PARAM2_READ_EDGE, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %12, i32 %14, i32 %21)
  %23 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %24 = call i32 @R92C_HSSI_PARAM2(i32 0)
  %25 = load i32, i32* @R92C_HSSI_PARAM2_READ_EDGE, align 4
  %26 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %23, i32 %24, i32 %25, i32 0)
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %28 = call i32 @R92C_HSSI_PARAM2(i32 0)
  %29 = load i32, i32* @R92C_HSSI_PARAM2_READ_EDGE, align 4
  %30 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %27, i32 %28, i32 0, i32 %29)
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %32 = call i32 @rtwn_delay(%struct.rtwn_softc* %31, i32 20)
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @R92C_HSSI_PARAM1(i32 %34)
  %36 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %33, i32 %35)
  %37 = load i32, i32* @R92C_HSSI_PARAM1_PI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %3
  %41 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @R92C_HSPI_READBACK(i32 %42)
  %44 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %41, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %50

45:                                               ; preds = %3
  %46 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @R92C_LSSI_READBACK(i32 %47)
  %49 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %46, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @R92C_LSSI_READBACK_DATA, align 4
  %53 = call i32 @MS(i32 %51, i32 %52)
  ret i32 %53
}

declare dso_local i32 @rtwn_bb_read(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @R92C_HSSI_PARAM2(i32) #1

declare dso_local i32 @rtwn_bb_write(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @RW(i32, i32, i32) #1

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_delay(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @R92C_HSSI_PARAM1(i32) #1

declare dso_local i32 @R92C_HSPI_READBACK(i32) #1

declare dso_local i32 @R92C_LSSI_READBACK(i32) #1

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
