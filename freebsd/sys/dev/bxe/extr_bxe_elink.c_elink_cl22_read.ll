; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_cl22_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_cl22_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32, i64 }

@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_MDIO_MODE = common dso_local global i64 0, align 8
@EMAC_MDIO_MODE_CLAUSE_45 = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_COMMAND_READ_22 = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_START_BUSY = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_MDIO_COMM = common dso_local global i64 0, align 8
@EMAC_MDIO_COMM_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"read phy register failed\0A\00", align 1
@ELINK_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.elink_phy*, i32, i32*)* @elink_cl22_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_cl22_read(%struct.bxe_softc* %0, %struct.elink_phy* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.elink_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %15 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %16 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EMAC_REG_EMAC_MDIO_MODE, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @REG_RD(%struct.bxe_softc* %14, i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %22 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %23 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EMAC_REG_EMAC_MDIO_MODE, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @EMAC_MDIO_MODE_CLAUSE_45, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @REG_WR(%struct.bxe_softc* %21, i64 %26, i32 %30)
  %32 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %33 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %34, 21
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %35, %37
  %39 = load i32, i32* @EMAC_MDIO_COMM_COMMAND_READ_22, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %44 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %45 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @REG_WR(%struct.bxe_softc* %43, i64 %48, i32 %49)
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %74, %4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 50
  br i1 %53, label %54, label %77

54:                                               ; preds = %51
  %55 = call i32 @DELAY(i32 10)
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %57 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %58 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @REG_RD(%struct.bxe_softc* %56, i64 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @EMAC_MDIO_COMM_DATA, align 4
  %70 = and i32 %68, %69
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  %72 = call i32 @DELAY(i32 5)
  br label %77

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %51

77:                                               ; preds = %67, %51
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %84 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %85 = load i32*, i32** %8, align 8
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* @ELINK_STATUS_TIMEOUT, align 4
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %89 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %90 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @EMAC_REG_EMAC_MDIO_MODE, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @REG_WR(%struct.bxe_softc* %88, i64 %93, i32 %94)
  %96 = load i32, i32* %12, align 4
  ret i32 %96
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
