; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_stop_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_stop_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_4__*, %struct.bxe_fastpath* }
%struct.TYPE_4__ = type { i32 }
%struct.bxe_fastpath = type { i64 }
%struct.ecore_queue_state_params = type { %struct.TYPE_5__, i32, i32, i32*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"stopping queue %d cid %d\0A\00", align 1
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@ECORE_Q_CMD_HALT = common dso_local global i32 0, align 4
@ECORE_Q_CMD_TERMINATE = common dso_local global i32 0, align 4
@FIRST_TX_COS_INDEX = common dso_local global i8* null, align 8
@ECORE_Q_CMD_CFC_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32)* @bxe_stop_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_stop_queue(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_fastpath*, align 8
  %7 = alloca %struct.ecore_queue_state_params, align 8
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %10 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %9, i32 0, i32 1
  %11 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %11, i64 %13
  store %struct.bxe_fastpath* %14, %struct.bxe_fastpath** %6, align 8
  %15 = bitcast %struct.ecore_queue_state_params* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 40, i1 false)
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %17 = load i32, i32* @DBG_LOAD, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %20 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @BLOGD(%struct.bxe_softc* %16, i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %21)
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %24 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %27 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %7, i32 0, i32 3
  store i32* %30, i32** %31, align 8
  %32 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %33 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %7, i32 0, i32 2
  %34 = call i32 @bxe_set_bit(i32 %32, i32* %33)
  %35 = load i32, i32* @ECORE_Q_CMD_HALT, align 4
  %36 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %7, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %38 = call i32 @ecore_queue_state_change(%struct.bxe_softc* %37, %struct.ecore_queue_state_params* %7)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %71

43:                                               ; preds = %2
  %44 = load i32, i32* @ECORE_Q_CMD_TERMINATE, align 4
  %45 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %7, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %7, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = call i32 @memset(%struct.TYPE_6__* %47, i32 0, i32 8)
  %49 = load i8*, i8** @FIRST_TX_COS_INDEX, align 8
  %50 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %7, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %54 = call i32 @ecore_queue_state_change(%struct.bxe_softc* %53, %struct.ecore_queue_state_params* %7)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %71

59:                                               ; preds = %43
  %60 = load i32, i32* @ECORE_Q_CMD_CFC_DEL, align 4
  %61 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %7, i32 0, i32 1
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %7, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @memset(%struct.TYPE_6__* %63, i32 0, i32 8)
  %65 = load i8*, i8** @FIRST_TX_COS_INDEX, align 8
  %66 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %7, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %70 = call i32 @ecore_queue_state_change(%struct.bxe_softc* %69, %struct.ecore_queue_state_params* %7)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %59, %57, %41
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i64) #2

declare dso_local i32 @bxe_set_bit(i32, i32*) #2

declare dso_local i32 @ecore_queue_state_change(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
