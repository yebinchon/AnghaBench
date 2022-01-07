; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_rss_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_rss_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32 }
%struct.bnxt_vnic_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hwrm_vnic_rss_cfg_input = type { i32, i8*, i8*, i32, i32 }

@HWRM_VNIC_RSS_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_rss_cfg(%struct.bnxt_softc* %0, %struct.bnxt_vnic_info* %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt_softc*, align 8
  %5 = alloca %struct.bnxt_vnic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hwrm_vnic_rss_cfg_input, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %4, align 8
  store %struct.bnxt_vnic_info* %1, %struct.bnxt_vnic_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = bitcast %struct.hwrm_vnic_rss_cfg_input* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %10 = load i32, i32* @HWRM_VNIC_RSS_CFG, align 4
  %11 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %9, %struct.hwrm_vnic_rss_cfg_input* %7, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @htole32(i32 %12)
  %14 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %7, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %5, align 8
  %16 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @htole64(i32 %18)
  %20 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %7, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %5, align 8
  %22 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @htole64(i32 %24)
  %26 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %7, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %5, align 8
  %28 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @htole16(i32 %29)
  %31 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %33 = call i32 @hwrm_send_message(%struct.bnxt_softc* %32, %struct.hwrm_vnic_rss_cfg_input* %7, i32 32)
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_vnic_rss_cfg_input*, i32) #2

declare dso_local i32 @htole32(i32) #2

declare dso_local i8* @htole64(i32) #2

declare dso_local i32 @htole16(i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_vnic_rss_cfg_input*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
