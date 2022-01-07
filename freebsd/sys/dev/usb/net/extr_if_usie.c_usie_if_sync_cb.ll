; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_sync_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_sync_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usie_softc = type { i32, i32 }

@USIE_HIP_SYNC2M = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@usie_if_sync_to = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @usie_if_sync_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usie_if_sync_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usie_softc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.usie_softc*
  store %struct.usie_softc* %7, %struct.usie_softc** %5, align 8
  %8 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %9 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %12 = load i32, i32* @USIE_HIP_SYNC2M, align 4
  %13 = call i32 @usie_if_cmd(%struct.usie_softc* %11, i32 %12)
  %14 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %15 = load i32, i32* @USIE_HIP_SYNC2M, align 4
  %16 = call i32 @usie_if_cmd(%struct.usie_softc* %14, i32 %15)
  %17 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %18 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %17, i32 0, i32 1
  %19 = load i32, i32* @hz, align 4
  %20 = mul nsw i32 2, %19
  %21 = load i32, i32* @usie_if_sync_to, align 4
  %22 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %23 = call i32 @usb_callout_reset(i32* %18, i32 %20, i32 %21, %struct.usie_softc* %22)
  %24 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %25 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %24, i32 0, i32 0
  %26 = call i32 @mtx_unlock(i32* %25)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usie_if_cmd(%struct.usie_softc*, i32) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, i32, %struct.usie_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
