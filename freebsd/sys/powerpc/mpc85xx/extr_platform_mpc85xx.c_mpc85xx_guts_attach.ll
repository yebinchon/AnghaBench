; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_platform_mpc85xx.c_mpc85xx_guts_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_platform_mpc85xx.c_mpc85xx_guts_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc85xx_rcpm_softc = type { i32 }

@mpc85xx_guts_freeze_timebase = common dso_local global i32 0, align 4
@freeze_timebase = common dso_local global i32 0, align 4
@rcpm_dev = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpc85xx_guts_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_guts_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpc85xx_rcpm_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.mpc85xx_rcpm_softc* @device_get_softc(i32 %5)
  store %struct.mpc85xx_rcpm_softc* %6, %struct.mpc85xx_rcpm_softc** %3, align 8
  %7 = load i32, i32* @mpc85xx_guts_freeze_timebase, align 4
  store i32 %7, i32* @freeze_timebase, align 4
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* @rcpm_dev, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @SYS_RES_MEMORY, align 4
  %11 = load i32, i32* @RF_ACTIVE, align 4
  %12 = load i32, i32* @RF_SHAREABLE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @bus_alloc_resource_any(i32 %9, i32 %10, i32* %4, i32 %13)
  %15 = load %struct.mpc85xx_rcpm_softc*, %struct.mpc85xx_rcpm_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mpc85xx_rcpm_softc, %struct.mpc85xx_rcpm_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret i32 0
}

declare dso_local %struct.mpc85xx_rcpm_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
