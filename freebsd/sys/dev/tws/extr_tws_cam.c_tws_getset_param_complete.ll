; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_getset_param_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_getset_param_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_request = type { i32, i32, i32, i32, %struct.tws_softc* }
%struct.tws_softc = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"getset complete\00", align 1
@M_TWS = common dso_local global i32 0, align 4
@TWS_REQ_STATE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_getset_param_complete(%struct.tws_request* %0) #0 {
  %2 = alloca %struct.tws_request*, align 8
  %3 = alloca %struct.tws_softc*, align 8
  store %struct.tws_request* %0, %struct.tws_request** %2, align 8
  %4 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %5 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %4, i32 0, i32 4
  %6 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  store %struct.tws_softc* %6, %struct.tws_softc** %3, align 8
  %7 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %8 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %9 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %10 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.tws_request* %8, i32 %11)
  %13 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %14 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %13, i32 0, i32 2
  %15 = call i32 @callout_stop(i32* %14)
  %16 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %17 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %18 = call i32 @tws_unmap_request(%struct.tws_softc* %16, %struct.tws_request* %17)
  %19 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %20 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @M_TWS, align 4
  %23 = call i32 @free(i32 %21, i32 %22)
  %24 = load i32, i32* @TWS_REQ_STATE_FREE, align 4
  %25 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %26 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  ret void
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, %struct.tws_request*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @tws_unmap_request(%struct.tws_softc*, %struct.tws_request*) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
