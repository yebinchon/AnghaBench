; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_init_rx_ring_std.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_init_rx_ring_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32 }
%struct.ti_cmd_desc = type { i32 }

@TI_STD_RX_RING_CNT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_softc*)* @ti_init_rx_ring_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_init_rx_ring_std(%struct.ti_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_cmd_desc, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @TI_STD_RX_RING_CNT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @ti_newbuf_std(%struct.ti_softc* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @ENOBUFS, align 4
  store i32 %16, i32* %2, align 4
  br label %30

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %6

21:                                               ; preds = %6
  %22 = load i32, i32* @TI_STD_RX_RING_CNT, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %27 = load i32, i32* @TI_STD_RX_RING_CNT, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @TI_UPDATE_STDPROD(%struct.ti_softc* %26, i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @ti_newbuf_std(%struct.ti_softc*, i32) #1

declare dso_local i32 @TI_UPDATE_STDPROD(%struct.ti_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
