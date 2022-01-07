; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_transfer_stop_and_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_transfer_stop_and_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfumass_softc = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfumass_softc*, i64)* @cfumass_transfer_stop_and_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfumass_transfer_stop_and_drain(%struct.cfumass_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.cfumass_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.cfumass_softc* %0, %struct.cfumass_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %6 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @usbd_transfer_stop(i32 %10)
  %12 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %13 = call i32 @CFUMASS_UNLOCK(%struct.cfumass_softc* %12)
  %14 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %15 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @usbd_transfer_drain(i32 %19)
  %21 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %22 = call i32 @CFUMASS_LOCK(%struct.cfumass_softc* %21)
  ret void
}

declare dso_local i32 @usbd_transfer_stop(i32) #1

declare dso_local i32 @CFUMASS_UNLOCK(%struct.cfumass_softc*) #1

declare dso_local i32 @usbd_transfer_drain(i32) #1

declare dso_local i32 @CFUMASS_LOCK(%struct.cfumass_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
