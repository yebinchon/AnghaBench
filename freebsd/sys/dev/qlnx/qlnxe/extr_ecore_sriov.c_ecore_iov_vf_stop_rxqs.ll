; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_stop_rxqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_stop_rxqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { i32, i32, %struct.ecore_vf_queue* }
%struct.ecore_vf_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ecore_queue_cid = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_IOV_VALIDATE_Q_NA = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"VF[%d] Tried Closing Rx 0x%04x.%02x which is inactive\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"VF[%d] - Tried Closing Rx 0x%04x.%02x, but Rx is at %04x.%02x\0A\00", align 1
@OSAL_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64, i64, i32)* @ecore_iov_vf_stop_rxqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iov_vf_stop_rxqs(%struct.ecore_hwfn* %0, %struct.ecore_vf_info* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_vf_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_vf_queue*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ecore_queue_cid*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_vf_info* %1, %struct.ecore_vf_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %17 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* @ECORE_IOV_VALIDATE_Q_NA, align 4
  %20 = call i32 @ecore_iov_validate_rxq(%struct.ecore_hwfn* %16, %struct.ecore_vf_info* %17, i64 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %5
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %24 = load i32, i32* @ECORE_MSG_IOV, align 4
  %25 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %26 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i64, i64, ...) @DP_VERBOSE(%struct.ecore_hwfn* %23, i32 %24, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %28, i64 %29)
  %31 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %31, i32* %6, align 4
  br label %100

32:                                               ; preds = %5
  %33 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %34 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %33, i32 0, i32 2
  %35 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %35, i64 %36
  store %struct.ecore_vf_queue* %37, %struct.ecore_vf_queue** %12, align 8
  %38 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %12, align 8
  %39 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %32
  %47 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %12, align 8
  %48 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %46, %32
  %56 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %12, align 8
  %57 = call %struct.ecore_queue_cid* @ecore_iov_get_vf_rx_queue_cid(%struct.ecore_vf_queue* %56)
  store %struct.ecore_queue_cid* %57, %struct.ecore_queue_cid** %14, align 8
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %59 = load i32, i32* @ECORE_MSG_IOV, align 4
  %60 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %61 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %67 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i64, i64, ...) @DP_VERBOSE(%struct.ecore_hwfn* %58, i32 %59, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %62, i64 %63, i64 %64, i64 %65, i32 %68)
  %70 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %70, i32* %6, align 4
  br label %100

71:                                               ; preds = %46
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %73 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %12, align 8
  %74 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @ecore_eth_rx_queue_stop(%struct.ecore_hwfn* %72, i64 %79, i32 0, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @ECORE_SUCCESS, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %6, align 4
  br label %100

87:                                               ; preds = %71
  %88 = load i64, i64* @OSAL_NULL, align 8
  %89 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %12, align 8
  %90 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i64 %88, i64* %94, align 8
  %95 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %96 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %87, %85, %55, %22
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @ecore_iov_validate_rxq(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i64, i64, ...) #1

declare dso_local %struct.ecore_queue_cid* @ecore_iov_get_vf_rx_queue_cid(%struct.ecore_vf_queue*) #1

declare dso_local i32 @ecore_eth_rx_queue_stop(%struct.ecore_hwfn*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
