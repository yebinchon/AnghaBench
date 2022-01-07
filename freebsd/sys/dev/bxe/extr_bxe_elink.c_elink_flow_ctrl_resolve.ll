; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_flow_ctrl_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_flow_ctrl_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i64, i64 }
%struct.elink_params = type { i64, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i64, i32 }

@ELINK_FLOW_CTRL_NONE = common dso_local global i64 0, align 8
@ELINK_FLOW_CTRL_AUTO = common dso_local global i64 0, align 8
@ELINK_SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@ELINK_MDIO_AN_CL73_OR_37_COMPLETE = common dso_local global i32 0, align 4
@PHY_SGMII_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"flow_ctrl 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*, i32)* @elink_flow_ctrl_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_flow_ctrl_resolve(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2, i32 %3) #0 {
  %5 = alloca %struct.elink_phy*, align 8
  %6 = alloca %struct.elink_params*, align 8
  %7 = alloca %struct.elink_vars*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %5, align 8
  store %struct.elink_params* %1, %struct.elink_params** %6, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %11 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %10, i32 0, i32 1
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  store %struct.bxe_softc* %12, %struct.bxe_softc** %9, align 8
  %13 = load i64, i64* @ELINK_FLOW_CTRL_NONE, align 8
  %14 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %15 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %17 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ELINK_FLOW_CTRL_AUTO, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %4
  %22 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %23 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ELINK_SPEED_AUTO_NEG, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %29 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %30 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @elink_update_adv_fc(%struct.elink_phy* %28, %struct.elink_params* %29, %struct.elink_vars* %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %35 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %38 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %82

39:                                               ; preds = %4
  %40 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %41 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ELINK_SPEED_AUTO_NEG, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %47 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %50 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %81

51:                                               ; preds = %39
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @ELINK_MDIO_AN_CL73_OR_37_COMPLETE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %58 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PHY_SGMII_FLAG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %80, label %63

63:                                               ; preds = %56
  %64 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %65 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %66 = call i64 @elink_direct_parallel_detect_used(%struct.elink_phy* %64, %struct.elink_params* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %70 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %73 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %88

74:                                               ; preds = %63
  %75 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %76 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %77 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @elink_update_adv_fc(%struct.elink_phy* %75, %struct.elink_params* %76, %struct.elink_vars* %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %56, %51
  br label %81

81:                                               ; preds = %80, %45
  br label %82

82:                                               ; preds = %81, %33
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %84 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %85 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %86)
  br label %88

88:                                               ; preds = %82, %68
  ret void
}

declare dso_local i32 @elink_update_adv_fc(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i64 @elink_direct_parallel_detect_used(%struct.elink_phy*, %struct.elink_params*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
