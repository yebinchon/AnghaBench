; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_im.c_dtsec_im_fm_port_rx_get_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_im.c_dtsec_im_fm_port_rx_get_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32 }

@FM_PORT_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"couldn't allocate RX buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dtsec_softc*, %struct.dtsec_softc**)* @dtsec_im_fm_port_rx_get_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dtsec_im_fm_port_rx_get_buf(%struct.dtsec_softc* %0, %struct.dtsec_softc** %1) #0 {
  %3 = alloca %struct.dtsec_softc*, align 8
  %4 = alloca %struct.dtsec_softc**, align 8
  %5 = alloca %struct.dtsec_softc*, align 8
  %6 = alloca i32*, align 8
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %3, align 8
  store %struct.dtsec_softc** %1, %struct.dtsec_softc*** %4, align 8
  %7 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  store %struct.dtsec_softc* %7, %struct.dtsec_softc** %5, align 8
  %8 = load i32, i32* @FM_PORT_BUFFER_SIZE, align 4
  %9 = call i32* @XX_MallocSmart(i32 %8, i32 0, i32 8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.dtsec_softc*, %struct.dtsec_softc** %5, align 8
  %14 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i32*, i32** %6, align 8
  ret i32* %18
}

declare dso_local i32* @XX_MallocSmart(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
