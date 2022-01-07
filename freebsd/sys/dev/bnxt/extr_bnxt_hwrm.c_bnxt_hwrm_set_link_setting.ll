; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_set_link_setting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_set_link_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.hwrm_port_phy_cfg_input = type { i32 }

@BNXT_FLAG_NPAR = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_set_link_setting(%struct.bnxt_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hwrm_port_phy_cfg_input, align 4
  %11 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = bitcast %struct.hwrm_port_phy_cfg_input* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BNXT_FLAG_NPAR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOTSUP, align 4
  store i32 %20, i32* %5, align 4
  br label %76

21:                                               ; preds = %4
  %22 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %23 = load i32, i32* @HWRM_PORT_PHY_CFG, align 4
  %24 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %22, %struct.hwrm_port_phy_cfg_input* %10, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %29 = call i32 @bnxt_hwrm_set_pause_common(%struct.bnxt_softc* %28, %struct.hwrm_port_phy_cfg_input* %10)
  %30 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %31 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %27
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %43 = call i32 @bnxt_hwrm_set_link_common(%struct.bnxt_softc* %42, %struct.hwrm_port_phy_cfg_input* %10)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %49 = call i32 @bnxt_hwrm_set_eee(%struct.bnxt_softc* %48, %struct.hwrm_port_phy_cfg_input* %10)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %52 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %51)
  %53 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %54 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %53, %struct.hwrm_port_phy_cfg_input* %10, i32 4)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %62 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %69 = call i32 @bnxt_report_link(%struct.bnxt_softc* %68)
  br label %70

70:                                               ; preds = %67, %60
  br label %71

71:                                               ; preds = %70, %57
  br label %72

72:                                               ; preds = %71, %50
  %73 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %74 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %19
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_port_phy_cfg_input*, i32) #2

declare dso_local i32 @bnxt_hwrm_set_pause_common(%struct.bnxt_softc*, %struct.hwrm_port_phy_cfg_input*) #2

declare dso_local i32 @bnxt_hwrm_set_link_common(%struct.bnxt_softc*, %struct.hwrm_port_phy_cfg_input*) #2

declare dso_local i32 @bnxt_hwrm_set_eee(%struct.bnxt_softc*, %struct.hwrm_port_phy_cfg_input*) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_port_phy_cfg_input*, i32) #2

declare dso_local i32 @bnxt_report_link(%struct.bnxt_softc*) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
