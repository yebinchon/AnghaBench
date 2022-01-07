; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_fw.c_r92c_fw_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_fw.c_r92c_fw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@RTWN_FW_RESET_CHECKSUM = common dso_local global i32 0, align 4
@R92C_HMETFR = common dso_local global i64 0, align 8
@R92C_SYS_FUNC_EN = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_CPUEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92c_fw_reset(%struct.rtwn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @RTWN_FW_RESET_CHECKSUM, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %37

10:                                               ; preds = %2
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %12 = load i64, i64* @R92C_HMETFR, align 8
  %13 = add nsw i64 %12, 3
  %14 = call i32 @rtwn_write_1(%struct.rtwn_softc* %11, i64 %13, i32 32)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %29, %10
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 100
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %20 = load i32, i32* @R92C_SYS_FUNC_EN, align 4
  %21 = call i32 @rtwn_read_2(%struct.rtwn_softc* %19, i32 %20)
  %22 = load i32, i32* @R92C_SYS_FUNC_EN_CPUEN, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %37

26:                                               ; preds = %18
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %28 = call i32 @rtwn_delay(%struct.rtwn_softc* %27, i32 50)
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %34 = load i32, i32* @R92C_SYS_FUNC_EN, align 4
  %35 = load i32, i32* @R92C_SYS_FUNC_EN_CPUEN, align 4
  %36 = call i32 @rtwn_setbits_1_shift(%struct.rtwn_softc* %33, i32 %34, i32 %35, i32 0, i32 1)
  br label %37

37:                                               ; preds = %32, %25, %9
  ret void
}

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i64, i32) #1

declare dso_local i32 @rtwn_read_2(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_delay(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_setbits_1_shift(%struct.rtwn_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
