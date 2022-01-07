; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_eee_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_eee_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@MISC_REG_CPMU_LP_FW_ENABLE_P0 = common dso_local global i64 0, align 8
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_EEE_ADV = common dso_local global i32 0, align 4
@SHMEM_EEE_ADV_STATUS_MASK = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_eee_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_eee_disable(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %6, align 8
  %8 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %9 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %8, i32 0, i32 1
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  store %struct.bxe_softc* %10, %struct.bxe_softc** %7, align 8
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %12 = load i64, i64* @MISC_REG_CPMU_LP_FW_ENABLE_P0, align 8
  %13 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %14 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %12, %17
  %19 = call i32 @REG_WR(%struct.bxe_softc* %11, i64 %18, i32 0)
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %21 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %22 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %23 = load i32, i32* @MDIO_AN_REG_EEE_ADV, align 4
  %24 = call i32 @elink_cl45_write(%struct.bxe_softc* %20, %struct.elink_phy* %21, i32 %22, i32 %23, i32 0)
  %25 = load i32, i32* @SHMEM_EEE_ADV_STATUS_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %28 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @ELINK_STATUS_OK, align 4
  ret i32 %31
}

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
