; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc_rockchip.c_rockchip_dwmmc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc_rockchip.c_rockchip_dwmmc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@HWTYPE_ROCKCHIP = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@dwmmc_rockchip_update_ios = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rockchip_dwmmc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_dwmmc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwmmc_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.dwmmc_softc* @device_get_softc(i32 %5)
  store %struct.dwmmc_softc* %6, %struct.dwmmc_softc** %3, align 8
  %7 = load i32, i32* @HWTYPE_ROCKCHIP, align 4
  %8 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @compat_data, align 4
  %12 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %19 [
    i32 128, label %16
  ]

16:                                               ; preds = %1
  %17 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %1, %16
  %20 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @dwmmc_attach(i32 %22)
  ret i32 %23
}

declare dso_local %struct.dwmmc_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @dwmmc_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
