; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_recovery_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_recovery_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64, i32*, i32 }

@PUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mpt_recovery_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_recovery_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mpt_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mpt_softc*
  store %struct.mpt_softc* %5, %struct.mpt_softc** %3, align 8
  %6 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %7 = call i32 @MPT_LOCK(%struct.mpt_softc* %6)
  br label %8

8:                                                ; preds = %30, %1
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %9, i32 0, i32 2
  %11 = call i64 @TAILQ_EMPTY(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %20 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %21 = load i32, i32* @PUSER, align 4
  %22 = call i32 @mpt_sleep(%struct.mpt_softc* %19, %struct.mpt_softc* %20, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %23

23:                                               ; preds = %18, %13
  br label %24

24:                                               ; preds = %23, %8
  %25 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %33

30:                                               ; preds = %24
  %31 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %32 = call i32 @mpt_recover_commands(%struct.mpt_softc* %31)
  br label %8

33:                                               ; preds = %29
  %34 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %36, i32 0, i32 1
  %38 = call i32 @wakeup(i32** %37)
  %39 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %40 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %39)
  %41 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mpt_sleep(%struct.mpt_softc*, %struct.mpt_softc*, i32, i8*, i32) #1

declare dso_local i32 @mpt_recover_commands(%struct.mpt_softc*) #1

declare dso_local i32 @wakeup(i32**) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
