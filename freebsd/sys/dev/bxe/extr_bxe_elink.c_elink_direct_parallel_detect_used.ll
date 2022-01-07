; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_direct_parallel_detect_used.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_direct_parallel_detect_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i64 }
%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@ELINK_SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@MDIO_REG_BANK_SERDES_DIGITAL = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_STATUS2 = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_STATUS2_AN_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"1G parallel detect link on port %d\0A\00", align 1
@MDIO_REG_BANK_10G_PARALLEL_DETECT = common dso_local global i32 0, align 4
@MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_STATUS = common dso_local global i32 0, align 4
@MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_STATUS_PD_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"10G parallel detect link on port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_phy*, %struct.elink_params*)* @elink_direct_parallel_detect_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_direct_parallel_detect_used(%struct.elink_phy* %0, %struct.elink_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  %9 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %10 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %9, i32 0, i32 1
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  store %struct.bxe_softc* %11, %struct.bxe_softc** %6, align 8
  %12 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %13 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ELINK_SPEED_AUTO_NEG, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %21 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %22 = load i32, i32* @MDIO_REG_BANK_SERDES_DIGITAL, align 4
  %23 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_STATUS2, align 4
  %24 = call i32 @CL22_RD_OVER_CL45(%struct.bxe_softc* %20, %struct.elink_phy* %21, i32 %22, i32 %23, i32* %8)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %26 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %27 = load i32, i32* @MDIO_REG_BANK_SERDES_DIGITAL, align 4
  %28 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_STATUS2, align 4
  %29 = call i32 @CL22_RD_OVER_CL45(%struct.bxe_softc* %25, %struct.elink_phy* %26, i32 %27, i32 %28, i32* %8)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_STATUS2_AN_DISABLED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %19
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %36 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %37 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 1, i32* %3, align 4
  br label %58

40:                                               ; preds = %19
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %42 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %43 = load i32, i32* @MDIO_REG_BANK_10G_PARALLEL_DETECT, align 4
  %44 = load i32, i32* @MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_STATUS, align 4
  %45 = call i32 @CL22_RD_OVER_CL45(%struct.bxe_softc* %41, %struct.elink_phy* %42, i32 %43, i32 %44, i32* %7)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_STATUS_PD_LINK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %52 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %53 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store i32 1, i32* %3, align 4
  br label %58

56:                                               ; preds = %40
  %57 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %50, %34, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
