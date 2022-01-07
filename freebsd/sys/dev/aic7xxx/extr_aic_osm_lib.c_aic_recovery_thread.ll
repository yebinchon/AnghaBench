; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic_osm_lib.c_aic_recovery_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic_osm_lib.c_aic_recovery_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@AIC_SHUTDOWN_RECOVERY = common dso_local global i32 0, align 4
@PUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aic_recovery_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic_recovery_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aic_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.aic_softc*
  store %struct.aic_softc* %5, %struct.aic_softc** %3, align 8
  %6 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %7 = call i32 @aic_lock(%struct.aic_softc* %6)
  br label %8

8:                                                ; preds = %36, %1
  %9 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %10 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %9, i32 0, i32 2
  %11 = call i64 @LIST_EMPTY(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %15 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @AIC_SHUTDOWN_RECOVERY, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %22 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %23 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* @PUSER, align 4
  %27 = call i32 @msleep(%struct.aic_softc* %21, i32* %25, i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %28

28:                                               ; preds = %20, %13, %8
  %29 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %30 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AIC_SHUTDOWN_RECOVERY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %39

36:                                               ; preds = %28
  %37 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %38 = call i32 @aic_recover_commands(%struct.aic_softc* %37)
  br label %8

39:                                               ; preds = %35
  %40 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %41 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %45 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call i32 @wakeup(%struct.TYPE_2__* %46)
  %48 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %49 = call i32 @aic_unlock(%struct.aic_softc* %48)
  %50 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @aic_lock(%struct.aic_softc*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @msleep(%struct.aic_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @aic_recover_commands(%struct.aic_softc*) #1

declare dso_local i32 @wakeup(%struct.TYPE_2__*) #1

declare dso_local i32 @aic_unlock(%struct.aic_softc*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
