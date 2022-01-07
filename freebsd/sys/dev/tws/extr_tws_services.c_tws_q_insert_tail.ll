; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_q_insert_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_q_insert_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { %struct.tws_request**, i32 }
%struct.tws_request = type { %struct.tws_request*, %struct.tws_request* }

@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_q_insert_tail(%struct.tws_softc* %0, %struct.tws_request* %1, i64 %2) #0 {
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca %struct.tws_request*, align 8
  %6 = alloca i64, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store %struct.tws_request* %1, %struct.tws_request** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %8 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %7, i32 0, i32 1
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %12 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %11, i32 0, i32 0
  %13 = load %struct.tws_request**, %struct.tws_request*** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.tws_request*, %struct.tws_request** %13, i64 %14
  %16 = load %struct.tws_request*, %struct.tws_request** %15, align 8
  %17 = icmp eq %struct.tws_request* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %20 = load %struct.tws_request*, %struct.tws_request** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @tws_insert2_empty_q(%struct.tws_softc* %19, %struct.tws_request* %20, i64 %21)
  br label %48

23:                                               ; preds = %3
  %24 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %25 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %24, i32 0, i32 0
  %26 = load %struct.tws_request**, %struct.tws_request*** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.tws_request*, %struct.tws_request** %26, i64 %27
  %29 = load %struct.tws_request*, %struct.tws_request** %28, align 8
  %30 = load %struct.tws_request*, %struct.tws_request** %5, align 8
  %31 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %30, i32 0, i32 1
  store %struct.tws_request* %29, %struct.tws_request** %31, align 8
  %32 = load %struct.tws_request*, %struct.tws_request** %5, align 8
  %33 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %32, i32 0, i32 0
  store %struct.tws_request* null, %struct.tws_request** %33, align 8
  %34 = load %struct.tws_request*, %struct.tws_request** %5, align 8
  %35 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %36 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %35, i32 0, i32 0
  %37 = load %struct.tws_request**, %struct.tws_request*** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.tws_request*, %struct.tws_request** %37, i64 %38
  %40 = load %struct.tws_request*, %struct.tws_request** %39, align 8
  %41 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %40, i32 0, i32 0
  store %struct.tws_request* %34, %struct.tws_request** %41, align 8
  %42 = load %struct.tws_request*, %struct.tws_request** %5, align 8
  %43 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %44 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %43, i32 0, i32 0
  %45 = load %struct.tws_request**, %struct.tws_request*** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.tws_request*, %struct.tws_request** %45, i64 %46
  store %struct.tws_request* %42, %struct.tws_request** %47, align 8
  br label %48

48:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @tws_insert2_empty_q(%struct.tws_softc*, %struct.tws_request*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
