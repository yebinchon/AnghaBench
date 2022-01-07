; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_cl22_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_cl22_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32, i64 }

@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_MDIO_MODE = common dso_local global i64 0, align 8
@EMAC_MDIO_MODE_CLAUSE_45 = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_COMMAND_WRITE_22 = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_START_BUSY = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_MDIO_COMM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"write phy register failed\0A\00", align 1
@ELINK_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.elink_phy*, i32, i32)* @elink_cl22_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_cl22_write(%struct.bxe_softc* %0, %struct.elink_phy* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.elink_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
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
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @EMAC_MDIO_COMM_COMMAND_WRITE_22, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %46 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %47 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @REG_WR(%struct.bxe_softc* %45, i64 %50, i32 %51)
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %72, %4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 50
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = call i32 @DELAY(i32 10)
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %59 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %60 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @REG_RD(%struct.bxe_softc* %58, i64 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %56
  %70 = call i32 @DELAY(i32 5)
  br label %75

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %53

75:                                               ; preds = %69, %53
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %82 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @ELINK_STATUS_TIMEOUT, align 4
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %86 = load %struct.elink_phy*, %struct.elink_phy** %6, align 8
  %87 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @EMAC_REG_EMAC_MDIO_MODE, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @REG_WR(%struct.bxe_softc* %85, i64 %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  ret i32 %93
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
