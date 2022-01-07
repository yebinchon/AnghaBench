; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_q_remove_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_q_remove_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_request = type { %struct.tws_request*, i32* }
%struct.tws_softc = type { %struct.tws_request**, i32*, i32 }

@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tws_request* @tws_q_remove_tail(%struct.tws_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.tws_request*, align 8
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tws_request*, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %8 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %7, i32 0, i32 2
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %12 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %11, i32 0, i32 0
  %13 = load %struct.tws_request**, %struct.tws_request*** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.tws_request*, %struct.tws_request** %13, i64 %14
  %16 = load %struct.tws_request*, %struct.tws_request** %15, align 8
  store %struct.tws_request* %16, %struct.tws_request** %6, align 8
  %17 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %18 = icmp ne %struct.tws_request* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.tws_request* null, %struct.tws_request** %3, align 8
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %22 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %27 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %26, i32 0, i32 0
  %28 = load %struct.tws_request*, %struct.tws_request** %27, align 8
  %29 = icmp eq %struct.tws_request* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %32 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %31, i32 0, i32 0
  %33 = load %struct.tws_request**, %struct.tws_request*** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.tws_request*, %struct.tws_request** %33, i64 %34
  store %struct.tws_request* null, %struct.tws_request** %35, align 8
  %36 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %37 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 0, i32* %40, align 4
  br label %58

41:                                               ; preds = %25, %20
  %42 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %43 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %42, i32 0, i32 0
  %44 = load %struct.tws_request*, %struct.tws_request** %43, align 8
  %45 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %46 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %45, i32 0, i32 0
  %47 = load %struct.tws_request**, %struct.tws_request*** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.tws_request*, %struct.tws_request** %47, i64 %48
  store %struct.tws_request* %44, %struct.tws_request** %49, align 8
  %50 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %51 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %50, i32 0, i32 0
  %52 = load %struct.tws_request*, %struct.tws_request** %51, align 8
  %53 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %55 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %57 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %56, i32 0, i32 0
  store %struct.tws_request* null, %struct.tws_request** %57, align 8
  br label %58

58:                                               ; preds = %41, %30
  %59 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  store %struct.tws_request* %59, %struct.tws_request** %3, align 8
  br label %60

60:                                               ; preds = %58, %19
  %61 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  ret %struct.tws_request* %61
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
