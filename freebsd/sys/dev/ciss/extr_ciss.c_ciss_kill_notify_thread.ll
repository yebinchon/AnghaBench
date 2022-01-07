; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_kill_notify_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_kill_notify_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, i32*, i32, i32 }

@CISS_FLAG_THREAD_SHUT = common dso_local global i32 0, align 4
@PUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"thtrm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_softc*)* @ciss_kill_notify_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_kill_notify_thread(%struct.ciss_softc* %0) #0 {
  %2 = alloca %struct.ciss_softc*, align 8
  store %struct.ciss_softc* %0, %struct.ciss_softc** %2, align 8
  %3 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %23

8:                                                ; preds = %1
  %9 = load i32, i32* @CISS_FLAG_THREAD_SHUT, align 4
  %10 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %14, i32 0, i32 2
  %16 = call i32 @wakeup(i32* %15)
  %17 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %17, i32 0, i32 1
  %19 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %19, i32 0, i32 0
  %21 = load i32, i32* @PUSER, align 4
  %22 = call i32 @msleep(i32** %18, i32* %20, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %23

23:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @msleep(i32**, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
