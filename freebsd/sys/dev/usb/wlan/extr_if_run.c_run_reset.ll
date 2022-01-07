; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@RT2870_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.run_softc*)* @run_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_reset(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %4 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @RT2870_RESET, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @USETW(i32 %9, i32 1)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @USETW(i32 %12, i32 0)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @USETW(i32 %15, i32 0)
  %17 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %18 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %21 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %20, i32 0, i32 0
  %22 = call i32 @usbd_do_request(i32 %19, i32* %21, %struct.TYPE_3__* %3, i32* null)
  ret i32 %22
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(i32, i32*, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
