; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_event_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_event_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i64, i32*, i32, i32, i64, i64 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"called apm_event_disable()\0A\00", align 1
@PWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"apmdie\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @apm_event_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apm_event_disable() #0 {
  %1 = alloca %struct.apm_softc*, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %1, align 8
  %2 = call i32 @APM_DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %3 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %4 = icmp eq %struct.apm_softc* %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %7 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5, %0
  br label %39

11:                                               ; preds = %5
  %12 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %13 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %12, i32 0, i32 2
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %16 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %22, %11
  %18 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %19 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %24 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %23, i32 0, i32 3
  %25 = call i32 @cv_broadcast(i32* %24)
  %26 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %27 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %30 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %29, i32 0, i32 2
  %31 = load i32, i32* @PWAIT, align 4
  %32 = call i32 @msleep(i32* %28, i32* %30, i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %35 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %34, i32 0, i32 2
  %36 = call i32 @mtx_unlock(i32* %35)
  %37 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %38 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %33, %10
  ret void
}

declare dso_local i32 @APM_DPRINT(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
