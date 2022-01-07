; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_rf.c_r12a_rf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_rf.c_r12a_rf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_RF_AC = common dso_local global i32 0, align 4
@R12A_CCA_ON_SEC = common dso_local global i32 0, align 4
@R12A_HSSI_PARAM1_PI = common dso_local global i32 0, align 4
@R12A_HSSI_PARAM2 = common dso_local global i32 0, align 4
@R12A_HSSI_PARAM2_READ_ADDR_MASK = common dso_local global i32 0, align 4
@R92C_LSSI_READBACK_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r12a_rf_read(%struct.rtwn_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @R92C_RF_AC, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %14 = load i32, i32* @R12A_CCA_ON_SEC, align 4
  %15 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %13, i32 %14, i32 0, i32 8)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @R12A_HSSI_PARAM1(i32 %18)
  %20 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %17, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @R12A_HSSI_PARAM1_PI, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  store i32 %26, i32* %7, align 4
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %28 = load i32, i32* @R12A_HSSI_PARAM2, align 4
  %29 = load i32, i32* @R12A_HSSI_PARAM2_READ_ADDR_MASK, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %16
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @R12A_HSPI_READBACK(i32 %36)
  br label %41

38:                                               ; preds = %16
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @R12A_LSSI_READBACK(i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %37, %35 ], [ %40, %38 ]
  %43 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %32, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @R92C_RF_AC, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %49 = load i32, i32* @R12A_CCA_ON_SEC, align 4
  %50 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %48, i32 %49, i32 8, i32 0)
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @R92C_LSSI_READBACK_DATA, align 4
  %54 = call i32 @MS(i32 %52, i32 %53)
  ret i32 %54
}

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_bb_read(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @R12A_HSSI_PARAM1(i32) #1

declare dso_local i32 @R12A_HSPI_READBACK(i32) #1

declare dso_local i32 @R12A_LSSI_READBACK(i32) #1

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
