; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ooo_submit_tx_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ooo_submit_tx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ll2_info = type { i32, i64 }
%struct.ecore_ll2_tx_pkt_info = type { i32, i32, %struct.ecore_ooo_buffer*, i32, i64, i64, i64, i32 }
%struct.ecore_ooo_buffer = type { i32, i32, i64, i64 }

@CORE_TX_BD_DATA_FORCE_VLAN_MODE = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_L4_PROTOCOL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ll2_info*)* @ecore_ooo_submit_tx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_ooo_submit_tx_buffers(%struct.ecore_hwfn* %0, %struct.ecore_ll2_info* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ll2_info*, align 8
  %5 = alloca %struct.ecore_ll2_tx_pkt_info, align 8
  %6 = alloca %struct.ecore_ooo_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ll2_info* %1, %struct.ecore_ll2_info** %4, align 8
  br label %11

11:                                               ; preds = %68, %2
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ecore_ooo_buffer* @ecore_ooo_get_ready_buffer(i32 %14)
  store %struct.ecore_ooo_buffer* %15, %struct.ecore_ooo_buffer** %6, align 8
  %16 = icmp ne %struct.ecore_ooo_buffer* %15, null
  br i1 %16, label %17, label %69

17:                                               ; preds = %11
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %18 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* @CORE_TX_BD_DATA_FORCE_VLAN_MODE, align 4
  %27 = call i32 @SET_FIELD(i64 %25, i32 %26, i32 1)
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* @CORE_TX_BD_DATA_L4_PROTOCOL, align 4
  %30 = call i32 @SET_FIELD(i64 %28, i32 %29, i32 1)
  %31 = call i32 @OSAL_MEM_ZERO(%struct.ecore_ll2_tx_pkt_info* %5, i32 56)
  %32 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %5, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %5, i32 0, i32 7
  store i32 %35, i32* %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %5, i32 0, i32 6
  store i64 %37, i64* %38, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %5, i32 0, i32 5
  store i64 %39, i64* %40, align 8
  %41 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %42 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %5, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %5, i32 0, i32 4
  store i64 %46, i64* %47, align 8
  %48 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %5, i32 0, i32 3
  store i32 %50, i32* %51, align 8
  %52 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %5, i32 0, i32 2
  store %struct.ecore_ooo_buffer* %52, %struct.ecore_ooo_buffer** %53, align 8
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %55 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %56 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ecore_ll2_prepare_tx_packet(%struct.ecore_hwfn* %54, i32 %57, %struct.ecore_ll2_tx_pkt_info* %5, i32 1)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @ECORE_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %17
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %64 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %6, align 8
  %67 = call i32 @ecore_ooo_put_ready_buffer(i32 %65, %struct.ecore_ooo_buffer* %66, i32 0)
  br label %69

68:                                               ; preds = %17
  br label %11

69:                                               ; preds = %62, %11
  ret void
}

declare dso_local %struct.ecore_ooo_buffer* @ecore_ooo_get_ready_buffer(i32) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_ll2_tx_pkt_info*, i32) #1

declare dso_local i32 @ecore_ll2_prepare_tx_packet(%struct.ecore_hwfn*, i32, %struct.ecore_ll2_tx_pkt_info*, i32) #1

declare dso_local i32 @ecore_ooo_put_ready_buffer(i32, %struct.ecore_ooo_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
