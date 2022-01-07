; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c___ecore_get_vport_tstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c___ecore_get_vport_tstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_vf_iov*, i32 }
%struct.ecore_vf_iov = type { %struct.pfvf_acquire_resp_tlv }
%struct.pfvf_acquire_resp_tlv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_eth_stats = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.tstorm_per_port_stat = type { i32, i32 }

@BAR0_MAP_REG_TSDM_RAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_eth_stats*)* @__ecore_get_vport_tstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ecore_get_vport_tstats(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_eth_stats* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_eth_stats*, align 8
  %7 = alloca %struct.tstorm_per_port_stat, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_vf_iov*, align 8
  %11 = alloca %struct.pfvf_acquire_resp_tlv*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.ecore_eth_stats* %2, %struct.ecore_eth_stats** %6, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @IS_PF(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @BAR0_MAP_REG_TSDM_RAM, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %20 = call i32 @MFW_PORT(%struct.ecore_hwfn* %19)
  %21 = call i32 @TSTORM_PORT_STAT_OFFSET(i32 %20)
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %8, align 4
  store i32 8, i32* %9, align 4
  br label %41

23:                                               ; preds = %3
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 0
  %26 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %25, align 8
  store %struct.ecore_vf_iov* %26, %struct.ecore_vf_iov** %10, align 8
  %27 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %10, align 8
  %28 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %27, i32 0, i32 0
  store %struct.pfvf_acquire_resp_tlv* %28, %struct.pfvf_acquire_resp_tlv** %11, align 8
  %29 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %11, align 8
  %30 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %11, align 8
  %36 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %23, %17
  %42 = call i32 @OSAL_MEMSET(%struct.tstorm_per_port_stat* %7, i32 0, i32 8)
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %44 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ecore_memcpy_from(%struct.ecore_hwfn* %43, %struct.ecore_ptt* %44, %struct.tstorm_per_port_stat* %7, i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.tstorm_per_port_stat, %struct.tstorm_per_port_stat* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @HILO_64_REGPAIR(i32 %49)
  %51 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %6, align 8
  %52 = getelementptr inbounds %struct.ecore_eth_stats, %struct.ecore_eth_stats* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %50
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = getelementptr inbounds %struct.tstorm_per_port_stat, %struct.tstorm_per_port_stat* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @HILO_64_REGPAIR(i32 %59)
  %61 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %6, align 8
  %62 = getelementptr inbounds %struct.ecore_eth_stats, %struct.ecore_eth_stats* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %60
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  ret void
}

declare dso_local i64 @IS_PF(i32) #1

declare dso_local i32 @TSTORM_PORT_STAT_OFFSET(i32) #1

declare dso_local i32 @MFW_PORT(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.tstorm_per_port_stat*, i32, i32) #1

declare dso_local i32 @ecore_memcpy_from(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.tstorm_per_port_stat*, i32, i32) #1

declare dso_local i64 @HILO_64_REGPAIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
