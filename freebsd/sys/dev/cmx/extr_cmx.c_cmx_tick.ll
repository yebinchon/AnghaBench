; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmx_softc = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"BSR=%b\0A\00", align 1
@BSRBITS = common dso_local global i32 0, align 4
@BSR_BULK_IN_FULL = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@POLL_TICKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmx_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmx_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cmx_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.cmx_softc*
  store %struct.cmx_softc* %6, %struct.cmx_softc** %3, align 8
  %7 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %8 = call i32 @CMX_LOCK(%struct.cmx_softc* %7)
  %9 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %10 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %1
  %14 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %15 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %13
  %19 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %20 = call i32 @cmx_read_BSR(%struct.cmx_softc* %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %22 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @BSRBITS, align 4
  %26 = call i32 @DEBUG_printf(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @BSR_BULK_IN_FULL, align 4
  %29 = call i64 @cmx_test(i32 %27, i32 %28, i32 1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %33 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %35 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %34, i32 0, i32 1
  %36 = load i32, i32* @PZERO, align 4
  %37 = call i32 @selwakeuppri(i32* %35, i32 %36)
  br label %44

38:                                               ; preds = %18
  %39 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %40 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %39, i32 0, i32 0
  %41 = load i32, i32* @POLL_TICKS, align 4
  %42 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %43 = call i32 @callout_reset(i32* %40, i32 %41, void (i8*)* @cmx_tick, %struct.cmx_softc* %42)
  br label %44

44:                                               ; preds = %38, %31
  br label %45

45:                                               ; preds = %44, %13, %1
  %46 = load %struct.cmx_softc*, %struct.cmx_softc** %3, align 8
  %47 = call i32 @CMX_UNLOCK(%struct.cmx_softc* %46)
  ret void
}

declare dso_local i32 @CMX_LOCK(%struct.cmx_softc*) #1

declare dso_local i32 @cmx_read_BSR(%struct.cmx_softc*) #1

declare dso_local i32 @DEBUG_printf(i32, i8*, i32, i32) #1

declare dso_local i64 @cmx_test(i32, i32, i32) #1

declare dso_local i32 @selwakeuppri(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.cmx_softc*) #1

declare dso_local i32 @CMX_UNLOCK(%struct.cmx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
