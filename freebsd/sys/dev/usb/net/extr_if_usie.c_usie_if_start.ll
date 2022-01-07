; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.usie_softc* }
%struct.usie_softc = type { i32, i32* }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Not running\0A\00", align 1
@USIE_IF_TX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"interface started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @usie_if_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usie_if_start(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.usie_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 1
  %6 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  store %struct.usie_softc* %6, %struct.usie_softc** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %17 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %16, i32 0, i32 0
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %20 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @USIE_IF_TX, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usbd_transfer_start(i32 %24)
  %26 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %27 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %26, i32 0, i32 0
  %28 = call i32 @mtx_unlock(i32* %27)
  %29 = call i32 @DPRINTFN(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %15, %13
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
