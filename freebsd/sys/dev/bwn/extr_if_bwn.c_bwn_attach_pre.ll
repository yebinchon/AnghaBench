; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_attach_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_attach_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ifqmaxlen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"bwn_taskq\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s taskq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_softc*)* @bwn_attach_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_attach_pre(%struct.bwn_softc* %0) #0 {
  %2 = alloca %struct.bwn_softc*, align 8
  store %struct.bwn_softc* %0, %struct.bwn_softc** %2, align 8
  %3 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %4 = call i32 @BWN_LOCK_INIT(%struct.bwn_softc* %3)
  %5 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %5, i32 0, i32 7
  %7 = call i32 @TAILQ_INIT(i32* %6)
  %8 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %8, i32 0, i32 6
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %10, i32 0, i32 3
  %12 = call i32 @callout_init_mtx(i32* %9, i32* %11, i32 0)
  %13 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %14 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %13, i32 0, i32 5
  %15 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %15, i32 0, i32 3
  %17 = call i32 @callout_init_mtx(i32* %14, i32* %16, i32 0)
  %18 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %19 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %18, i32 0, i32 4
  %20 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %21 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %20, i32 0, i32 3
  %22 = call i32 @callout_init_mtx(i32* %19, i32* %21, i32 0)
  %23 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %23, i32 0, i32 2
  %25 = load i32, i32* @ifqmaxlen, align 4
  %26 = call i32 @mbufq_init(i32* %24, i32 %25)
  %27 = load i32, i32* @M_NOWAIT, align 4
  %28 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %29 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %29, i32 0, i32 1
  %31 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32* %30)
  %32 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %35 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %34, i32 0, i32 1
  %36 = load i32, i32* @PI_NET, align 4
  %37 = load %struct.bwn_softc*, %struct.bwn_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_get_nameunit(i32 %39)
  %41 = call i32 @taskqueue_start_threads(i32* %35, i32 1, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  ret void
}

declare dso_local i32 @BWN_LOCK_INIT(%struct.bwn_softc*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
