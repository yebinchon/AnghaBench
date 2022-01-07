; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8073_resolve_fc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8073_resolve_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i64, i64 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i64 }

@ELINK_SPEED_10 = common dso_local global i64 0, align 8
@ELINK_SPEED_100 = common dso_local global i64 0, align 8
@ELINK_FLOW_CTRL_NONE = common dso_local global i64 0, align 8
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_CL37_FC_LD = common dso_local global i32 0, align 4
@MDIO_AN_REG_CL37_FC_LP = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Ext PHY CL37 pause result 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_8073_resolve_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_8073_resolve_fc(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %6, align 8
  %11 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %12 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %11, i32 0, i32 0
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  store %struct.bxe_softc* %13, %struct.bxe_softc** %7, align 8
  %14 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %15 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ELINK_SPEED_10, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %21 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ELINK_SPEED_100, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19, %3
  %26 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %27 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %30 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %72

31:                                               ; preds = %19
  %32 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %33 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %34 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %35 = call i64 @elink_ext_phy_resolve_fc(%struct.elink_phy* %32, %struct.elink_params* %33, %struct.elink_vars* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %31
  %38 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %39 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ELINK_FLOW_CTRL_NONE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %37
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %45 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %46 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %47 = load i32, i32* @MDIO_AN_REG_CL37_FC_LD, align 4
  %48 = call i32 @elink_cl45_read(%struct.bxe_softc* %44, %struct.elink_phy* %45, i32 %46, i32 %47, i32* %9)
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %50 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %51 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %52 = load i32, i32* @MDIO_AN_REG_CL37_FC_LP, align 4
  %53 = call i32 @elink_cl45_read(%struct.bxe_softc* %49, %struct.elink_phy* %50, i32 %51, i32 %52, i32* %10)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %56 = and i32 %54, %55
  %57 = ashr i32 %56, 5
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %60 = and i32 %58, %59
  %61 = ashr i32 %60, 7
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %65 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %66 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @elink_pause_resolve(%struct.elink_phy* %64, %struct.elink_params* %65, %struct.elink_vars* %66, i32 %67)
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %25, %43, %37, %31
  ret void
}

declare dso_local i64 @elink_ext_phy_resolve_fc(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @elink_pause_resolve(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
