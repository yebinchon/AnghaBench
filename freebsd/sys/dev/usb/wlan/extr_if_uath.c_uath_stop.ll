; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i64, i32, i32, i32 }

@UATH_FLAG_INITDONE = common dso_local global i32 0, align 4
@WDCMSG_TARGET_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uath_softc*)* @uath_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uath_stop(%struct.uath_softc* %0) #0 {
  %2 = alloca %struct.uath_softc*, align 8
  store %struct.uath_softc* %0, %struct.uath_softc** %2, align 8
  %3 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %4 = call i32 @UATH_ASSERT_LOCKED(%struct.uath_softc* %3)
  %5 = load i32, i32* @UATH_FLAG_INITDONE, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 8
  %11 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %12 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %11, i32 0, i32 2
  %13 = call i32 @callout_stop(i32* %12)
  %14 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %15 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %14, i32 0, i32 1
  %16 = call i32 @callout_stop(i32* %15)
  %17 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %18 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %20 = call i32 @uath_abort_xfers(%struct.uath_softc* %19)
  %21 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %22 = call i32 @uath_flush(%struct.uath_softc* %21)
  %23 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %24 = call i32 @uath_set_ledstate(%struct.uath_softc* %23, i32 0)
  %25 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %26 = load i32, i32* @WDCMSG_TARGET_STOP, align 4
  %27 = call i32 @uath_cmd_write(%struct.uath_softc* %25, i32 %26, i32* null, i32 0, i32 0)
  ret void
}

declare dso_local i32 @UATH_ASSERT_LOCKED(%struct.uath_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @uath_abort_xfers(%struct.uath_softc*) #1

declare dso_local i32 @uath_flush(%struct.uath_softc*) #1

declare dso_local i32 @uath_set_ledstate(%struct.uath_softc*, i32) #1

declare dso_local i32 @uath_cmd_write(%struct.uath_softc*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
