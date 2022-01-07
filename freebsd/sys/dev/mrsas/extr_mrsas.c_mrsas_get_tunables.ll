; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_tunables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_tunables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32, i32, i32, i64, i64, i64, i32 }

@MRSAS_FAULT = common dso_local global i32 0, align 4
@MRSAS_OCR = common dso_local global i32 0, align 4
@MRSAS_INFO = common dso_local global i32 0, align 4
@MRSAS_TRACE = common dso_local global i32 0, align 4
@MRSAS_AEN = common dso_local global i32 0, align 4
@MRSAS_IO_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"hw.mrsas.debug_level\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"hw.mrsas.lb_pending_cmds\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"dev.mrsas.%d.debug_level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrsas_softc*)* @mrsas_get_tunables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrsas_get_tunables(%struct.mrsas_softc* %0) #0 {
  %2 = alloca %struct.mrsas_softc*, align 8
  %3 = alloca [80 x i8], align 16
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %2, align 8
  %4 = load i32, i32* @MRSAS_FAULT, align 4
  %5 = load i32, i32* @MRSAS_OCR, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @MRSAS_INFO, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MRSAS_TRACE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MRSAS_AEN, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %14 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @MRSAS_IO_TIMEOUT, align 4
  %16 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %17 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 8
  %18 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %19 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %21 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %27 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %26, i32 0, i32 2
  store i32 1, i32* %27, align 8
  %28 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %29 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %28, i32 0, i32 0
  %30 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %29)
  %31 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %32 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %31, i32 0, i32 3
  %33 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %35 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %36 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @device_get_unit(i32 %37)
  %39 = call i32 @snprintf(i8* %34, i32 80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %41 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %42 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %41, i32 0, i32 0
  %43 = call i32 @TUNABLE_INT_FETCH(i8* %40, i32* %42)
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
