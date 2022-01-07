; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c_ism_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c_ism_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.isc_softc* }
%struct.isc_softc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"terminating\00", align 1
@ISC_SM_RUN = common dso_local global i32 0, align 4
@ISC_SM_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"n=%d\00", align 1
@PRIBIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"final n=%d\00", align 1
@ISC_FFPHASE = common dso_local global i32 0, align 4
@sp_link = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"sysctl_ctx_free failed\00", align 1
@M_ISCSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ism_stop(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.isc_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 10
  %7 = load %struct.isc_softc*, %struct.isc_softc** %6, align 8
  store %struct.isc_softc* %7, %struct.isc_softc** %3, align 8
  %8 = call i32 @debug_called(i32 8)
  %9 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = call i32 @isc_stop_receiver(%struct.TYPE_10__* %10)
  store i32 5, i32* %4, align 4
  %12 = load i32, i32* @ISC_SM_RUN, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  br label %18

18:                                               ; preds = %31, %1
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %4, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ISC_SM_RUNNING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %22, %18
  %30 = phi i1 [ false, %18 ], [ %28, %22 ]
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = call i32 @wakeup(i32* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = load i32, i32* @PRIBIO, align 4
  %39 = load i32, i32* @hz, align 4
  %40 = mul nsw i32 5, %39
  %41 = call i32 @tsleep(%struct.TYPE_10__* %37, i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %18

42:                                               ; preds = %29
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ISC_FFPHASE, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = call i32 @iscsi_cleanup(%struct.TYPE_10__* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = call i32 @i_pdu_flush(%struct.TYPE_10__* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = call i32 @ic_destroy(%struct.TYPE_10__* %55)
  %57 = load %struct.isc_softc*, %struct.isc_softc** %3, align 8
  %58 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %57, i32 0, i32 3
  %59 = call i32 @sx_xlock(i32* %58)
  %60 = load %struct.isc_softc*, %struct.isc_softc** %3, align 8
  %61 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @free_unr(i32 %62, i32 %65)
  %67 = load %struct.isc_softc*, %struct.isc_softc** %3, align 8
  %68 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %67, i32 0, i32 3
  %69 = call i32 @sx_xunlock(i32* %68)
  %70 = load %struct.isc_softc*, %struct.isc_softc** %3, align 8
  %71 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %70, i32 0, i32 0
  %72 = call i32 @mtx_lock(i32* %71)
  %73 = load %struct.isc_softc*, %struct.isc_softc** %3, align 8
  %74 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = load i32, i32* @sp_link, align 4
  %77 = call i32 @TAILQ_REMOVE(i32* %74, %struct.TYPE_10__* %75, i32 %76)
  %78 = load %struct.isc_softc*, %struct.isc_softc** %3, align 8
  %79 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.isc_softc*, %struct.isc_softc** %3, align 8
  %83 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %82, i32 0, i32 0
  %84 = call i32 @mtx_unlock(i32* %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @destroy_dev(i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 7
  %91 = call i32 @mtx_destroy(i32* %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 6
  %94 = call i32 @mtx_destroy(i32* %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 5
  %97 = call i32 @mtx_destroy(i32* %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 4
  %100 = call i32 @mtx_destroy(i32* %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = call i32 @mtx_destroy(i32* %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = call i32 @i_freeopt(i32* %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = call i64 @sysctl_ctx_free(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %42
  %112 = call i32 @xdebug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %42
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %115 = load i32, i32* @M_ISCSI, align 4
  %116 = call i32 @free(%struct.TYPE_10__* %114, i32 %115)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @sdebug(i32, i8*, ...) #1

declare dso_local i32 @isc_stop_receiver(%struct.TYPE_10__*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @tsleep(%struct.TYPE_10__*, i32, i8*, i32) #1

declare dso_local i32 @iscsi_cleanup(%struct.TYPE_10__*) #1

declare dso_local i32 @i_pdu_flush(%struct.TYPE_10__*) #1

declare dso_local i32 @ic_destroy(%struct.TYPE_10__*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @i_freeopt(i32*) #1

declare dso_local i64 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @xdebug(i8*) #1

declare dso_local i32 @free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
