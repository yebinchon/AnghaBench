; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_vnic_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_vnic_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32 }
%struct.bnxt_vnic_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hwrm_vnic_cfg_input = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@HWRM_VNIC_CFG = common dso_local global i32 0, align 4
@BNXT_VNIC_FLAG_DEFAULT = common dso_local global i32 0, align 4
@HWRM_VNIC_CFG_INPUT_FLAGS_DEFAULT = common dso_local global i32 0, align 4
@BNXT_VNIC_FLAG_BD_STALL = common dso_local global i32 0, align 4
@HWRM_VNIC_CFG_INPUT_FLAGS_BD_STALL_MODE = common dso_local global i32 0, align 4
@BNXT_VNIC_FLAG_VLAN_STRIP = common dso_local global i32 0, align 4
@HWRM_VNIC_CFG_INPUT_FLAGS_VLAN_STRIP_MODE = common dso_local global i32 0, align 4
@HWRM_VNIC_CFG_INPUT_ENABLES_DFLT_RING_GRP = common dso_local global i32 0, align 4
@HWRM_VNIC_CFG_INPUT_ENABLES_RSS_RULE = common dso_local global i32 0, align 4
@HWRM_VNIC_CFG_INPUT_ENABLES_MRU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_vnic_cfg(%struct.bnxt_softc* %0, %struct.bnxt_vnic_info* %1) #0 {
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca %struct.bnxt_vnic_info*, align 8
  %5 = alloca %struct.hwrm_vnic_cfg_input, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  store %struct.bnxt_vnic_info* %1, %struct.bnxt_vnic_info** %4, align 8
  %6 = bitcast %struct.hwrm_vnic_cfg_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 64, i1 false)
  %7 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %8 = load i32, i32* @HWRM_VNIC_CFG, align 4
  %9 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %7, %struct.hwrm_vnic_cfg_input* %5, i32 %8)
  %10 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %11 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BNXT_VNIC_FLAG_DEFAULT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @HWRM_VNIC_CFG_INPUT_FLAGS_DEFAULT, align 4
  %18 = call i32 @htole32(i32 %17)
  %19 = getelementptr inbounds %struct.hwrm_vnic_cfg_input, %struct.hwrm_vnic_cfg_input* %5, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %24 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BNXT_VNIC_FLAG_BD_STALL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* @HWRM_VNIC_CFG_INPUT_FLAGS_BD_STALL_MODE, align 4
  %31 = call i32 @htole32(i32 %30)
  %32 = getelementptr inbounds %struct.hwrm_vnic_cfg_input, %struct.hwrm_vnic_cfg_input* %5, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %37 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BNXT_VNIC_FLAG_VLAN_STRIP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32, i32* @HWRM_VNIC_CFG_INPUT_FLAGS_VLAN_STRIP_MODE, align 4
  %44 = call i32 @htole32(i32 %43)
  %45 = getelementptr inbounds %struct.hwrm_vnic_cfg_input, %struct.hwrm_vnic_cfg_input* %5, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %35
  %49 = load i32, i32* @HWRM_VNIC_CFG_INPUT_ENABLES_DFLT_RING_GRP, align 4
  %50 = load i32, i32* @HWRM_VNIC_CFG_INPUT_ENABLES_RSS_RULE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @HWRM_VNIC_CFG_INPUT_ENABLES_MRU, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @htole32(i32 %53)
  %55 = getelementptr inbounds %struct.hwrm_vnic_cfg_input, %struct.hwrm_vnic_cfg_input* %5, i32 0, i32 6
  store i32 %54, i32* %55, align 8
  %56 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %57 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @htole16(i32 %58)
  %60 = getelementptr inbounds %struct.hwrm_vnic_cfg_input, %struct.hwrm_vnic_cfg_input* %5, i32 0, i32 5
  store i8* %59, i8** %60, align 8
  %61 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %62 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @htole16(i32 %63)
  %65 = getelementptr inbounds %struct.hwrm_vnic_cfg_input, %struct.hwrm_vnic_cfg_input* %5, i32 0, i32 4
  store i8* %64, i8** %65, align 8
  %66 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %67 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @htole16(i32 %68)
  %70 = getelementptr inbounds %struct.hwrm_vnic_cfg_input, %struct.hwrm_vnic_cfg_input* %5, i32 0, i32 3
  store i8* %69, i8** %70, align 8
  %71 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %72 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @htole16(i32 %73)
  %75 = getelementptr inbounds %struct.hwrm_vnic_cfg_input, %struct.hwrm_vnic_cfg_input* %5, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %77 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @htole16(i32 %78)
  %80 = getelementptr inbounds %struct.hwrm_vnic_cfg_input, %struct.hwrm_vnic_cfg_input* %5, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %82 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @htole16(i32 %83)
  %85 = getelementptr inbounds %struct.hwrm_vnic_cfg_input, %struct.hwrm_vnic_cfg_input* %5, i32 0, i32 0
  store i8* %84, i8** %85, align 8
  %86 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %87 = call i32 @hwrm_send_message(%struct.bnxt_softc* %86, %struct.hwrm_vnic_cfg_input* %5, i32 64)
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_vnic_cfg_input*, i32) #2

declare dso_local i32 @htole32(i32) #2

declare dso_local i8* @htole16(i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_vnic_cfg_input*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
