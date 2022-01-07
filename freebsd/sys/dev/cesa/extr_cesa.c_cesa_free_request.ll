; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_free_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cesa_softc = type { i32, i32, i32 }
%struct.cesa_request = type { i64, i32, i32, i32 }

@tdesc = common dso_local global i32 0, align 4
@sdesc = common dso_local global i32 0, align 4
@requests = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cesa_softc*, %struct.cesa_request*)* @cesa_free_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cesa_free_request(%struct.cesa_softc* %0, %struct.cesa_request* %1) #0 {
  %3 = alloca %struct.cesa_softc*, align 8
  %4 = alloca %struct.cesa_request*, align 8
  store %struct.cesa_softc* %0, %struct.cesa_softc** %3, align 8
  store %struct.cesa_request* %1, %struct.cesa_request** %4, align 8
  %5 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %6 = load i32, i32* @tdesc, align 4
  %7 = call i32 @CESA_LOCK(%struct.cesa_softc* %5, i32 %6)
  %8 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %9 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %8, i32 0, i32 2
  %10 = load %struct.cesa_request*, %struct.cesa_request** %4, align 8
  %11 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %10, i32 0, i32 3
  %12 = call i32 @STAILQ_CONCAT(i32* %9, i32* %11)
  %13 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %14 = load i32, i32* @tdesc, align 4
  %15 = call i32 @CESA_UNLOCK(%struct.cesa_softc* %13, i32 %14)
  %16 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %17 = load i32, i32* @sdesc, align 4
  %18 = call i32 @CESA_LOCK(%struct.cesa_softc* %16, i32 %17)
  %19 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %20 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %19, i32 0, i32 1
  %21 = load %struct.cesa_request*, %struct.cesa_request** %4, align 8
  %22 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %21, i32 0, i32 2
  %23 = call i32 @STAILQ_CONCAT(i32* %20, i32* %22)
  %24 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %25 = load i32, i32* @sdesc, align 4
  %26 = call i32 @CESA_UNLOCK(%struct.cesa_softc* %24, i32 %25)
  %27 = load %struct.cesa_request*, %struct.cesa_request** %4, align 8
  %28 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %33 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cesa_request*, %struct.cesa_request** %4, align 8
  %36 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bus_dmamap_unload(i32 %34, i32 %37)
  %39 = load %struct.cesa_request*, %struct.cesa_request** %4, align 8
  %40 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %31, %2
  %42 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %43 = load %struct.cesa_request*, %struct.cesa_request** %4, align 8
  %44 = load i32, i32* @requests, align 4
  %45 = call i32 @CESA_GENERIC_FREE_LOCKED(%struct.cesa_softc* %42, %struct.cesa_request* %43, i32 %44)
  ret void
}

declare dso_local i32 @CESA_LOCK(%struct.cesa_softc*, i32) #1

declare dso_local i32 @STAILQ_CONCAT(i32*, i32*) #1

declare dso_local i32 @CESA_UNLOCK(%struct.cesa_softc*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @CESA_GENERIC_FREE_LOCKED(%struct.cesa_softc*, %struct.cesa_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
