; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_qpoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_qpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_evq = type { i64, i64, i64, i32, i32, i32*, i32**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SFXGE_EVQ_STARTING = common dso_local global i64 0, align 8
@SFXGE_EVQ_STARTED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"evq->rx_done != 0\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"evq->tx_done != 0\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"evq->txq != NULL\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"evq->txqs != &evq->txq\00", align 1
@sfxge_ev_callbacks = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_ev_qpoll(%struct.sfxge_evq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_evq*, align 8
  %4 = alloca i32, align 4
  store %struct.sfxge_evq* %0, %struct.sfxge_evq** %3, align 8
  %5 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %6 = call i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq* %5)
  %7 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %8 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SFXGE_EVQ_STARTING, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %14 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SFXGE_EVQ_STARTED, align 8
  %17 = icmp ne i64 %15, %16
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i1 [ false, %1 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @__predict_false(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %88

25:                                               ; preds = %18
  %26 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %27 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %31 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %35 = call i32 @bus_dmamap_sync(i32 %29, i32 %33, i32 %34)
  %36 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %37 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @KASSERT(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %43 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %49 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @KASSERT(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %55 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %54, i32 0, i32 6
  %56 = load i32**, i32*** %55, align 8
  %57 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %58 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %57, i32 0, i32 5
  %59 = icmp eq i32** %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %63 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %66 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %65, i32 0, i32 3
  %67 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %68 = call i32 @efx_ev_qpoll(i32 %64, i32* %66, i32* @sfxge_ev_callbacks, %struct.sfxge_evq* %67)
  %69 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %70 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %72 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %74 = load i32, i32* @B_TRUE, align 4
  %75 = call i32 @sfxge_ev_qcomplete(%struct.sfxge_evq* %73, i32 %74)
  %76 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %77 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %80 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @efx_ev_qprime(i32 %78, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %25
  br label %88

85:                                               ; preds = %25
  %86 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %87 = call i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq* %86)
  store i32 0, i32* %2, align 4
  br label %92

88:                                               ; preds = %84, %23
  %89 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %90 = call i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq* %89)
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @efx_ev_qpoll(i32, i32*, i32*, %struct.sfxge_evq*) #1

declare dso_local i32 @sfxge_ev_qcomplete(%struct.sfxge_evq*, i32) #1

declare dso_local i32 @efx_ev_qprime(i32, i32) #1

declare dso_local i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
