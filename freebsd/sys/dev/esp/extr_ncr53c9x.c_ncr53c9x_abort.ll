; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i64, %struct.ncr53c9x_ecb* }
%struct.ncr53c9x_ecb = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@NCR_ABORT_TIMEOUT = common dso_local global i32 0, align 4
@ECB_ABORT = common dso_local global i32 0, align 4
@NCR_CONNECTED = common dso_local global i64 0, align 8
@SEND_ABORT = common dso_local global i32 0, align 4
@ncr53c9x_callout = common dso_local global i32 0, align 4
@NCR_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncr53c9x_softc*, %struct.ncr53c9x_ecb*)* @ncr53c9x_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncr53c9x_abort(%struct.ncr53c9x_softc* %0, %struct.ncr53c9x_ecb* %1) #0 {
  %3 = alloca %struct.ncr53c9x_softc*, align 8
  %4 = alloca %struct.ncr53c9x_ecb*, align 8
  store %struct.ncr53c9x_softc* %0, %struct.ncr53c9x_softc** %3, align 8
  store %struct.ncr53c9x_ecb* %1, %struct.ncr53c9x_ecb** %4, align 8
  %5 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc* %5, i32 %6)
  %8 = load i32, i32* @NCR_ABORT_TIMEOUT, align 4
  %9 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %4, align 8
  %10 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @ECB_ABORT, align 4
  %12 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %4, align 8
  %13 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %4, align 8
  %17 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %17, i32 0, i32 1
  %19 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %18, align 8
  %20 = icmp eq %struct.ncr53c9x_ecb* %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NCR_CONNECTED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @SEND_ABORT, align 4
  %29 = call i32 @ncr53c9x_sched_msgout(i32 %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %4, align 8
  %32 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %31, i32 0, i32 1
  %33 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %4, align 8
  %34 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mstohz(i32 %35)
  %37 = load i32, i32* @ncr53c9x_callout, align 4
  %38 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %4, align 8
  %39 = call i32 @callout_reset(i32* %32, i32 %36, i32 %37, %struct.ncr53c9x_ecb* %38)
  br label %50

40:                                               ; preds = %2
  %41 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NCR_IDLE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %48 = call i32 @ncr53c9x_sched(%struct.ncr53c9x_softc* %47)
  br label %49

49:                                               ; preds = %46, %40
  br label %50

50:                                               ; preds = %49, %30
  ret void
}

declare dso_local i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i32 @ncr53c9x_sched_msgout(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ncr53c9x_ecb*) #1

declare dso_local i32 @mstohz(i32) #1

declare dso_local i32 @ncr53c9x_sched(%struct.ncr53c9x_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
