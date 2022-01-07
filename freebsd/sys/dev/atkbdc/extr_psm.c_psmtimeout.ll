; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmtimeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmtimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { i32, i64, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"psm%d: lost interrupt?\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @psmtimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psmtimeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.psm_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.psm_softc*
  store %struct.psm_softc* %6, %struct.psm_softc** %3, align 8
  %7 = call i32 (...) @spltty()
  store i32 %7, i32* %4, align 4
  %8 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %9 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %14 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* @TRUE, align 8
  %17 = call i64 @kbdc_lock(i32 %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load i32, i32* @LOG_DEBUG, align 4
  %21 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %22 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @VLOG(i32 6, i32 %23)
  %25 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %26 = call i32 @psmintr(%struct.psm_softc* %25)
  %27 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %28 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* @FALSE, align 8
  %31 = call i64 @kbdc_lock(i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %19, %12, %1
  %33 = load i64, i64* @TRUE, align 8
  %34 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %35 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @splx(i32 %36)
  %38 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %39 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %38, i32 0, i32 0
  %40 = load i32, i32* @hz, align 4
  %41 = load %struct.psm_softc*, %struct.psm_softc** %3, align 8
  %42 = call i32 @callout_reset(i32* %39, i32 %40, void (i8*)* @psmtimeout, %struct.psm_softc* %41)
  ret void
}

declare dso_local i32 @spltty(...) #1

declare dso_local i64 @kbdc_lock(i32, i64) #1

declare dso_local i32 @VLOG(i32, i32) #1

declare dso_local i32 @psmintr(%struct.psm_softc*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.psm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
