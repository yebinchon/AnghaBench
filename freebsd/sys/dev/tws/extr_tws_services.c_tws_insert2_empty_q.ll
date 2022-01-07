; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_insert2_empty_q.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_insert2_empty_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { %struct.tws_request**, %struct.tws_request**, i32 }
%struct.tws_request = type { i32*, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tws_softc*, %struct.tws_request*, i64)* @tws_insert2_empty_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_insert2_empty_q(%struct.tws_softc* %0, %struct.tws_request* %1, i64 %2) #0 {
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca %struct.tws_request*, align 8
  %6 = alloca i64, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store %struct.tws_request* %1, %struct.tws_request** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %8 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %7, i32 0, i32 2
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.tws_request*, %struct.tws_request** %5, align 8
  %12 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.tws_request*, %struct.tws_request** %5, align 8
  %14 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %13, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = load %struct.tws_request*, %struct.tws_request** %5, align 8
  %16 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %17 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %16, i32 0, i32 0
  %18 = load %struct.tws_request**, %struct.tws_request*** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.tws_request*, %struct.tws_request** %18, i64 %19
  store %struct.tws_request* %15, %struct.tws_request** %20, align 8
  %21 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %22 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %21, i32 0, i32 1
  %23 = load %struct.tws_request**, %struct.tws_request*** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.tws_request*, %struct.tws_request** %23, i64 %24
  store %struct.tws_request* %15, %struct.tws_request** %25, align 8
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
