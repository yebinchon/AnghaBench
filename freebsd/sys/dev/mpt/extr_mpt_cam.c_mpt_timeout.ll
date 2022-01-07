; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.mpt_softc* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.mpt_softc = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"request %p:%u timed out for ccb %p (req->ccb %p)\0A\00", align 1
@REQ_STATE_QUEUED = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@REQ_STATE_TIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mpt_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %union.ccb*
  store %union.ccb* %7, %union.ccb** %3, align 8
  %8 = load %union.ccb*, %union.ccb** %3, align 8
  %9 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.mpt_softc*, %struct.mpt_softc** %10, align 8
  store %struct.mpt_softc* %11, %struct.mpt_softc** %4, align 8
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %13 = call i32 @MPT_LOCK_ASSERT(%struct.mpt_softc* %12)
  %14 = load %union.ccb*, %union.ccb** %3, align 8
  %15 = bitcast %union.ccb* %14 to %struct.TYPE_6__*
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %5, align 8
  %18 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %union.ccb*, %union.ccb** %3, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mpt_prt(%struct.mpt_softc* %18, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %19, i32 %22, %union.ccb* %23, i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @REQ_STATE_QUEUED, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @REQ_STATE_QUEUED, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %1
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %37 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = load i32, i32* @links, align 4
  %40 = call i32 @TAILQ_REMOVE(i32* %37, %struct.TYPE_7__* %38, i32 %39)
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %42 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i32, i32* @links, align 4
  %45 = call i32 @TAILQ_INSERT_TAIL(i32* %42, %struct.TYPE_7__* %43, i32 %44)
  %46 = load i32, i32* @REQ_STATE_TIMEDOUT, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %52 = call i32 @mpt_wakeup_recovery_thread(%struct.mpt_softc* %51)
  br label %53

53:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @MPT_LOCK_ASSERT(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, %struct.TYPE_7__*, i32, %union.ccb*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mpt_wakeup_recovery_thread(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
