; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_write_region_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_write_region_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@R92S_REQ_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsu_softc*, i32, i32*, i32)* @rsu_write_region_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsu_write_region_1(%struct.rsu_softc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.rsu_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 4
  store %struct.rsu_softc* %0, %struct.rsu_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @R92S_REQ_REGS, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @USETW(i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @USETW(i32 %19, i32 0)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @USETW(i32 %22, i32 %23)
  %25 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @rsu_do_request(%struct.rsu_softc* %25, %struct.TYPE_3__* %9, i32* %26)
  ret i32 %27
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @rsu_do_request(%struct.rsu_softc*, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
