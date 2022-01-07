; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_rf.c_r12a_c_cut_rf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_rf.c_r12a_c_cut_rf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R12A_HSSI_PARAM1_PI = common dso_local global i32 0, align 4
@R12A_HSSI_PARAM2 = common dso_local global i32 0, align 4
@R12A_HSSI_PARAM2_READ_ADDR_MASK = common dso_local global i32 0, align 4
@R92C_LSSI_READBACK_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r12a_c_cut_rf_read(%struct.rtwn_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @R12A_HSSI_PARAM1(i32 %10)
  %12 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %9, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @R12A_HSSI_PARAM1_PI, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %7, align 4
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %20 = load i32, i32* @R12A_HSSI_PARAM2, align 4
  %21 = load i32, i32* @R12A_HSSI_PARAM2_READ_ADDR_MASK, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %25 = call i32 @rtwn_delay(%struct.rtwn_softc* %24, i32 20)
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @R12A_HSPI_READBACK(i32 %30)
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @R12A_LSSI_READBACK(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i32 [ %31, %29 ], [ %34, %32 ]
  %37 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %26, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @R92C_LSSI_READBACK_DATA, align 4
  %40 = call i32 @MS(i32 %38, i32 %39)
  ret i32 %40
}

declare dso_local i32 @rtwn_bb_read(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @R12A_HSSI_PARAM1(i32) #1

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_delay(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @R12A_HSPI_READBACK(i32) #1

declare dso_local i32 @R12A_LSSI_READBACK(i32) #1

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
