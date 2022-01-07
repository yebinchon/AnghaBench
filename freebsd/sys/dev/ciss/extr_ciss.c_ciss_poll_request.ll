; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_poll_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_poll_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_request = type { i32, %struct.ciss_softc* }
%struct.ciss_softc = type { i64 }

@CISS_REQ_POLL = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_request*, i32)* @ciss_poll_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_poll_request(%struct.ciss_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ciss_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ciss_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.ciss_request* %0, %struct.ciss_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @debug_called(i32 2)
  %10 = call i32 @STAILQ_INIT(i32* %6)
  %11 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %12 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %11, i32 0, i32 1
  %13 = load %struct.ciss_softc*, %struct.ciss_softc** %12, align 8
  store %struct.ciss_softc* %13, %struct.ciss_softc** %7, align 8
  %14 = load i32, i32* @CISS_REQ_POLL, align 4
  %15 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %16 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %20 = call i32 @ciss_start(%struct.ciss_request* %19)
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %54

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %48, %24
  %26 = load %struct.ciss_softc*, %struct.ciss_softc** %7, align 8
  %27 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.ciss_softc*, %struct.ciss_softc** %7, align 8
  %32 = call i32 @ciss_perf_done(%struct.ciss_softc* %31, i32* %6)
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.ciss_softc*, %struct.ciss_softc** %7, align 8
  %35 = call i32 @ciss_done(%struct.ciss_softc* %34, i32* %6)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.ciss_softc*, %struct.ciss_softc** %7, align 8
  %38 = call i32 @ciss_complete(%struct.ciss_softc* %37, i32* %6)
  %39 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %40 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CISS_REQ_POLL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %54

46:                                               ; preds = %36
  %47 = call i32 @DELAY(i32 1000)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %5, align 4
  %51 = icmp sge i32 %49, 0
  br i1 %51, label %25, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %45, %22
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @ciss_start(%struct.ciss_request*) #1

declare dso_local i32 @ciss_perf_done(%struct.ciss_softc*, i32*) #1

declare dso_local i32 @ciss_done(%struct.ciss_softc*, i32*) #1

declare dso_local i32 @ciss_complete(%struct.ciss_softc*, i32*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
