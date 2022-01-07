; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i64, i64 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@hook = common dso_local global i32* null, align 8
@APM_HOOK_RESUME = common dso_local global i64 0, align 8
@Giant = common dso_local global i32 0, align 4
@root_bus = common dso_local global i32 0, align 4
@power_resume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @apm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apm_resume() #0 {
  %1 = alloca %struct.apm_softc*, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %1, align 8
  %2 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %3 = icmp eq %struct.apm_softc* %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %0
  %5 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %6 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %11 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %4, %0
  br label %29

15:                                               ; preds = %9
  %16 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %17 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32*, i32** @hook, align 8
  %19 = load i64, i64* @APM_HOOK_RESUME, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @apm_execute_hook(i32 %21)
  %23 = call i32 @mtx_lock(i32* @Giant)
  %24 = load i32, i32* @root_bus, align 4
  %25 = call i32 @DEVICE_RESUME(i32 %24)
  %26 = call i32 @mtx_unlock(i32* @Giant)
  %27 = load i32, i32* @power_resume, align 4
  %28 = call i32 @EVENTHANDLER_INVOKE(i32 %27)
  br label %29

29:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @apm_execute_hook(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @DEVICE_RESUME(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
