; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32, %struct.twe_request** }
%struct.twe_request = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@TWE_STATUS_RESPONSE_QUEUE_EMPTY = common dso_local global i32 0, align 4
@TWE_CMD_BUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"completion event for nonbusy command\0A\00", align 1
@TWE_CMD_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"completed request id %d with status %d\00", align 1
@TWE_STATE_CTLR_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twe_softc*, i32)* @twe_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twe_done(%struct.twe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.twe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.twe_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  store %struct.twe_softc* %0, %struct.twe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32 @debug_called(i32 5)
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %71, %2
  %13 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %14 = call i32 @TWE_STATUS(%struct.twe_softc* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @twe_check_bits(%struct.twe_softc* %15, i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @TWE_STATUS_RESPONSE_QUEUE_EMPTY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %70, label %22

22:                                               ; preds = %12
  store i32 1, i32* %8, align 4
  %23 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %24 = call i64 @TWE_RESPONSE_QUEUE(%struct.twe_softc* %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = bitcast %struct.TYPE_9__* %5 to i8*
  %28 = bitcast %struct.TYPE_9__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %29 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %30 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %29, i32 0, i32 1
  %31 = load %struct.twe_request**, %struct.twe_request*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.twe_request*, %struct.twe_request** %31, i64 %34
  %36 = load %struct.twe_request*, %struct.twe_request** %35, align 8
  store %struct.twe_request* %36, %struct.twe_request** %7, align 8
  %37 = load %struct.twe_request*, %struct.twe_request** %7, align 8
  %38 = call %struct.TYPE_10__* @TWE_FIND_COMMAND(%struct.twe_request* %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %6, align 8
  %39 = load %struct.twe_request*, %struct.twe_request** %7, align 8
  %40 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TWE_CMD_BUSY, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %22
  %45 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %46 = call i32 @twe_printf(%struct.twe_softc* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %22
  %48 = load i64, i64* @TWE_CMD_COMPLETE, align 8
  %49 = load %struct.twe_request*, %struct.twe_request** %7, align 8
  %50 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @debug(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %58)
  %60 = load %struct.twe_request*, %struct.twe_request** %7, align 8
  %61 = call i32 @twe_remove_busy(%struct.twe_request* %60)
  %62 = load %struct.twe_request*, %struct.twe_request** %7, align 8
  %63 = call i32 @twe_enqueue_complete(%struct.twe_request* %62)
  %64 = load i32, i32* @TWE_STATE_CTLR_BUSY, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %67 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %71

70:                                               ; preds = %12
  br label %72

71:                                               ; preds = %47
  br label %12

72:                                               ; preds = %70
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %80 = call i32 @twe_startio(%struct.twe_softc* %79)
  br label %81

81:                                               ; preds = %78, %75, %72
  %82 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %83 = call i32 @twe_complete(%struct.twe_softc* %82)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_STATUS(%struct.twe_softc*) #1

declare dso_local i32 @twe_check_bits(%struct.twe_softc*, i32) #1

declare dso_local i64 @TWE_RESPONSE_QUEUE(%struct.twe_softc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_10__* @TWE_FIND_COMMAND(%struct.twe_request*) #1

declare dso_local i32 @twe_printf(%struct.twe_softc*, i8*) #1

declare dso_local i32 @debug(i32, i8*, i32, i32) #1

declare dso_local i32 @twe_remove_busy(%struct.twe_request*) #1

declare dso_local i32 @twe_enqueue_complete(%struct.twe_request*) #1

declare dso_local i32 @twe_startio(%struct.twe_softc*) #1

declare dso_local i32 @twe_complete(%struct.twe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
