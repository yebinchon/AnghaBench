; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_q_remove_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_q_remove_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { %struct.tws_request**, %struct.tws_request**, i32 }
%struct.tws_request = type { i64, %struct.TYPE_2__*, %struct.tws_request* }
%struct.TYPE_2__ = type { %struct.tws_request* }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"null req\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"invalid req\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"req not in q\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tws_request* @tws_q_remove_request(%struct.tws_softc* %0, %struct.tws_request* %1, i64 %2) #0 {
  %4 = alloca %struct.tws_request*, align 8
  %5 = alloca %struct.tws_softc*, align 8
  %6 = alloca %struct.tws_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tws_request*, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %5, align 8
  store %struct.tws_request* %1, %struct.tws_request** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %10 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %9, i32 0, i32 2
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %14 = icmp eq %struct.tws_request* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i64 %17)
  store %struct.tws_request* null, %struct.tws_request** %4, align 8
  br label %107

19:                                               ; preds = %3
  %20 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %21 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %22 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %21, i32 0, i32 0
  %23 = load %struct.tws_request**, %struct.tws_request*** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.tws_request*, %struct.tws_request** %23, i64 %24
  %26 = load %struct.tws_request*, %struct.tws_request** %25, align 8
  %27 = icmp eq %struct.tws_request* %20, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call %struct.tws_request* @tws_q_remove_head(%struct.tws_softc* %29, i64 %30)
  store %struct.tws_request* %31, %struct.tws_request** %4, align 8
  br label %107

32:                                               ; preds = %19
  %33 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %34 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %35 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %34, i32 0, i32 1
  %36 = load %struct.tws_request**, %struct.tws_request*** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.tws_request*, %struct.tws_request** %36, i64 %37
  %39 = load %struct.tws_request*, %struct.tws_request** %38, align 8
  %40 = icmp eq %struct.tws_request* %33, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call %struct.tws_request* @tws_q_remove_tail(%struct.tws_softc* %42, i64 %43)
  store %struct.tws_request* %44, %struct.tws_request** %4, align 8
  br label %107

45:                                               ; preds = %32
  %46 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %47 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %46, i32 0, i32 2
  %48 = load %struct.tws_request*, %struct.tws_request** %47, align 8
  %49 = icmp eq %struct.tws_request* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %52 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp eq %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50, %45
  %56 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0, i64 %57)
  store %struct.tws_request* null, %struct.tws_request** %4, align 8
  br label %107

59:                                               ; preds = %50
  %60 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %61 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %60, i32 0, i32 0
  %62 = load %struct.tws_request**, %struct.tws_request*** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.tws_request*, %struct.tws_request** %62, i64 %63
  %65 = load %struct.tws_request*, %struct.tws_request** %64, align 8
  store %struct.tws_request* %65, %struct.tws_request** %8, align 8
  br label %66

66:                                               ; preds = %74, %59
  %67 = load %struct.tws_request*, %struct.tws_request** %8, align 8
  %68 = icmp ne %struct.tws_request* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %71 = load %struct.tws_request*, %struct.tws_request** %8, align 8
  %72 = icmp eq %struct.tws_request* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %78

74:                                               ; preds = %69
  %75 = load %struct.tws_request*, %struct.tws_request** %8, align 8
  %76 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %75, i32 0, i32 2
  %77 = load %struct.tws_request*, %struct.tws_request** %76, align 8
  store %struct.tws_request* %77, %struct.tws_request** %8, align 8
  br label %66

78:                                               ; preds = %73, %66
  %79 = load %struct.tws_request*, %struct.tws_request** %8, align 8
  %80 = icmp ne %struct.tws_request* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %83 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %84 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 %85)
  store %struct.tws_request* null, %struct.tws_request** %4, align 8
  br label %107

87:                                               ; preds = %78
  %88 = load %struct.tws_request*, %struct.tws_request** %8, align 8
  %89 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %88, i32 0, i32 2
  %90 = load %struct.tws_request*, %struct.tws_request** %89, align 8
  %91 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %92 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store %struct.tws_request* %90, %struct.tws_request** %94, align 8
  %95 = load %struct.tws_request*, %struct.tws_request** %8, align 8
  %96 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %99 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %98, i32 0, i32 2
  %100 = load %struct.tws_request*, %struct.tws_request** %99, align 8
  %101 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %100, i32 0, i32 1
  store %struct.TYPE_2__* %97, %struct.TYPE_2__** %101, align 8
  %102 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %103 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %102, i32 0, i32 2
  store %struct.tws_request* null, %struct.tws_request** %103, align 8
  %104 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %105 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %104, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %105, align 8
  %106 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  store %struct.tws_request* %106, %struct.tws_request** %4, align 8
  br label %107

107:                                              ; preds = %87, %81, %55, %41, %28, %15
  %108 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  ret %struct.tws_request* %108
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i64) #1

declare dso_local %struct.tws_request* @tws_q_remove_head(%struct.tws_softc*, i64) #1

declare dso_local %struct.tws_request* @tws_q_remove_tail(%struct.tws_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
