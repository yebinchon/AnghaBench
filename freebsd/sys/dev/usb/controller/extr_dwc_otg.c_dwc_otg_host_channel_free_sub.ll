; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_channel_free_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_channel_free_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dwc_otg_td = type { i64* }

@DWC_OTG_MAX_CHANNELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"CH=%d\0A\00", align 1
@HCCHAR_CHENA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Halting channel %d\0A\00", align 1
@HCCHAR_CHDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_otg_softc*, %struct.dwc_otg_td*, i64)* @dwc_otg_host_channel_free_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_host_channel_free_sub(%struct.dwc_otg_softc* %0, %struct.dwc_otg_td* %1, i64 %2) #0 {
  %4 = alloca %struct.dwc_otg_softc*, align 8
  %5 = alloca %struct.dwc_otg_td*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %4, align 8
  store %struct.dwc_otg_td* %1, %struct.dwc_otg_td** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %10 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DWC_OTG_MAX_CHANNELS, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %97

18:                                               ; preds = %3
  %19 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %20 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* @DWC_OTG_MAX_CHANNELS, align 8
  %26 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %27 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 %25, i64* %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %34 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %40 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %18
  %44 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %45 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @GRXSTSRD_CHNUM_GET(i64 %46)
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %52 = call i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc* %51)
  br label %53

53:                                               ; preds = %50, %43, %18
  %54 = load i64, i64* %8, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 1, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %59 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %63 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  br label %97

71:                                               ; preds = %53
  %72 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @DOTG_HCCHAR(i64 %73)
  %75 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %72, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @HCCHAR_CHENA, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  %83 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @DOTG_HCCHAR(i64 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @HCCHAR_CHDIS, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %83, i32 %85, i32 %88)
  br label %97

90:                                               ; preds = %71
  %91 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %92 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %17, %70, %90, %80
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i64 @GRXSTSRD_CHNUM_GET(i64) #1

declare dso_local i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc*) #1

declare dso_local i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @DOTG_HCCHAR(i64) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
