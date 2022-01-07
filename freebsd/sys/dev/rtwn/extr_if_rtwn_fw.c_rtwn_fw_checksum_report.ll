; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_fw.c_rtwn_fw_checksum_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_fw.c_rtwn_fw_checksum_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_MCUFWDL = common dso_local global i32 0, align 4
@R92C_MCUFWDL_CHKSUM_RPT = common dso_local global i32 0, align 4
@RTWN_DEBUG_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"timeout waiting for checksum report\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*)* @rtwn_fw_checksum_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_fw_checksum_report(%struct.rtwn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 25
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %10 = load i32, i32* @R92C_MCUFWDL, align 4
  %11 = call i32 @rtwn_read_4(%struct.rtwn_softc* %9, i32 %10)
  %12 = load i32, i32* @R92C_MCUFWDL_CHKSUM_RPT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %22

16:                                               ; preds = %8
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %18 = call i32 @rtwn_delay(%struct.rtwn_softc* %17, i32 10000)
  br label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %5

22:                                               ; preds = %15, %5
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 25
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %27 = load i32, i32* @RTWN_DEBUG_FIRMWARE, align 4
  %28 = call i32 @RTWN_DPRINTF(%struct.rtwn_softc* %26, i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @rtwn_read_4(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_delay(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @RTWN_DPRINTF(%struct.rtwn_softc*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
