; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_send_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"received event \00", align 1
@TWS_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"invalid state transition %d => TWS_ONLINE\0A\00", align 1
@TWS_ONLINE = common dso_local global i32 0, align 4
@TWS_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"invalid state transition %d => %d (previous state)\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"invalid state transition %d => TWS_OFFLINE\0A\00", align 1
@TWS_OFFLINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"invalid state transition %d => TWS_UNINIT\0A\00", align 1
@TWS_UNINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_send_event(%struct.tws_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %6 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %5, i32 0, i32 3
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* %6, i32 %7)
  %9 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0, i32 %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %120 [
    i32 132, label %13
    i32 133, label %17
    i32 130, label %36
    i32 131, label %52
    i32 129, label %76
    i32 128, label %95
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @TWS_INIT, align 4
  %15 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %16 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %120

17:                                               ; preds = %2
  %18 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %19 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TWS_INIT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %25 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %28 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %35

31:                                               ; preds = %17
  %32 = load i32, i32* @TWS_ONLINE, align 4
  %33 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %34 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %23
  br label %120

36:                                               ; preds = %2
  %37 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %38 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TWS_RESET, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %44 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %47 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @TWS_RESET, align 4
  %49 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %50 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %42, %36
  br label %120

52:                                               ; preds = %2
  %53 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %54 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TWS_RESET, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %60 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %63 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %66 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %67)
  br label %75

69:                                               ; preds = %52
  %70 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %71 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %74 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %58
  br label %120

76:                                               ; preds = %2
  %77 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %78 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TWS_ONLINE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %84 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %87 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %94

90:                                               ; preds = %76
  %91 = load i32, i32* @TWS_OFFLINE, align 4
  %92 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %93 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %82
  br label %120

95:                                               ; preds = %2
  %96 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %97 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @TWS_ONLINE, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %95
  %102 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %103 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TWS_OFFLINE, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %109 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %112 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %119

115:                                              ; preds = %101, %95
  %116 = load i32, i32* @TWS_UNINIT, align 4
  %117 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %118 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %115, %107
  br label %120

120:                                              ; preds = %2, %119, %94, %75, %51, %35, %13
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
