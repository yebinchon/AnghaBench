; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i32, i32*, i64 }

@URTW_RUNNING = common dso_local global i32 0, align 4
@URTW_RTL8187B = common dso_local global i32 0, align 4
@URTW_INIT_ONCE = common dso_local global i32 0, align 4
@URTW_8187B_BULK_TX_STATUS = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@urtw_watchdog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urtw_softc*)* @urtw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urtw_init(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %5 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %6 = call i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc* %5)
  %7 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %8 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @URTW_RUNNING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %15 = call i32 @urtw_stop(%struct.urtw_softc* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %18 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @URTW_RTL8187B, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %25 = call i64 @urtw_adapter_start_b(%struct.urtw_softc* %24)
  br label %29

26:                                               ; preds = %16
  %27 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %28 = call i64 @urtw_adapter_start(%struct.urtw_softc* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i64 [ %25, %23 ], [ %28, %26 ]
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %100

34:                                               ; preds = %29
  %35 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %36 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %38 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @URTW_INIT_ONCE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %34
  %44 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %45 = call i32 @urtw_alloc_rx_data_list(%struct.urtw_softc* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %100

49:                                               ; preds = %43
  %50 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %51 = call i32 @urtw_alloc_tx_data_list(%struct.urtw_softc* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %100

55:                                               ; preds = %49
  %56 = load i32, i32* @URTW_INIT_ONCE, align 4
  %57 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %58 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %34
  %62 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %63 = call i64 @urtw_rx_enable(%struct.urtw_softc* %62)
  store i64 %63, i64* %3, align 8
  %64 = load i64, i64* %3, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %100

67:                                               ; preds = %61
  %68 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %69 = call i64 @urtw_tx_enable(%struct.urtw_softc* %68)
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %3, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %100

73:                                               ; preds = %67
  %74 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %75 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @URTW_RTL8187B, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %82 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @URTW_8187B_BULK_TX_STATUS, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @usbd_transfer_start(i32 %86)
  br label %88

88:                                               ; preds = %80, %73
  %89 = load i32, i32* @URTW_RUNNING, align 4
  %90 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %91 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %95 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %94, i32 0, i32 1
  %96 = load i32, i32* @hz, align 4
  %97 = load i32, i32* @urtw_watchdog, align 4
  %98 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %99 = call i32 @callout_reset(i32* %95, i32 %96, i32 %97, %struct.urtw_softc* %98)
  br label %100

100:                                              ; preds = %88, %72, %66, %54, %48, %33
  ret void
}

declare dso_local i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_stop(%struct.urtw_softc*) #1

declare dso_local i64 @urtw_adapter_start_b(%struct.urtw_softc*) #1

declare dso_local i64 @urtw_adapter_start(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_alloc_rx_data_list(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_alloc_tx_data_list(%struct.urtw_softc*) #1

declare dso_local i64 @urtw_rx_enable(%struct.urtw_softc*) #1

declare dso_local i64 @urtw_tx_enable(%struct.urtw_softc*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.urtw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
