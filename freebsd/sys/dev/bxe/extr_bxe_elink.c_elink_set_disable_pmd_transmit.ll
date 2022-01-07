; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_disable_pmd_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_disable_pmd_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32 }

@ELINK_FEATURE_CONFIG_BC_SUPPORTS_SFP_TX_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Disabling PMD transmitter\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"NOT disabling PMD transmitter\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Enabling PMD transmitter\0A\00", align 1
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_TX_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*, %struct.elink_phy*, i64)* @elink_set_disable_pmd_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_set_disable_pmd_transmit(%struct.elink_params* %0, %struct.elink_phy* %1, i64 %2) #0 {
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_phy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %9 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %8, i32 0, i32 1
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  store %struct.bxe_softc* %10, %struct.bxe_softc** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %15 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ELINK_FEATURE_CONFIG_BC_SUPPORTS_SFP_TX_DISABLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %22 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %26

23:                                               ; preds = %13
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %25 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %37

26:                                               ; preds = %20
  br label %30

27:                                               ; preds = %3
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %29 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %26
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %32 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %33 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %34 = load i32, i32* @MDIO_PMA_REG_TX_DISABLE, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @elink_cl45_write(%struct.bxe_softc* %31, %struct.elink_phy* %32, i32 %33, i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %30, %23
  ret void
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
