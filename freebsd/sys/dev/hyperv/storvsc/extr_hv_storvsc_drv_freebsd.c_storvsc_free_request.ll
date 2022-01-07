; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_free_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storvsc_softc = type { i32 }
%struct.hv_storvsc_request = type { i32 }

@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.storvsc_softc*, %struct.hv_storvsc_request*)* @storvsc_free_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storvsc_free_request(%struct.storvsc_softc* %0, %struct.hv_storvsc_request* %1) #0 {
  %3 = alloca %struct.storvsc_softc*, align 8
  %4 = alloca %struct.hv_storvsc_request*, align 8
  store %struct.storvsc_softc* %0, %struct.storvsc_softc** %3, align 8
  store %struct.hv_storvsc_request* %1, %struct.hv_storvsc_request** %4, align 8
  %5 = load %struct.storvsc_softc*, %struct.storvsc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %5, i32 0, i32 0
  %7 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %4, align 8
  %8 = load i32, i32* @link, align 4
  %9 = call i32 @LIST_INSERT_HEAD(i32* %6, %struct.hv_storvsc_request* %7, i32 %8)
  ret void
}

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.hv_storvsc_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
