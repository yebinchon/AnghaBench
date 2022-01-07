; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_eth_rxq_start_ramrod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_eth_rxq_start_ramrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_queue_cid = type { i64, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.rx_queue_start_ramrod_data = type { i32, i32, i32, i32, i8*, i32, i8*, i64, i8*, i32, i32, i32, i8* }
%struct.ecore_spq_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rx_queue_start_ramrod_data }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"opaque_fid=0x%x, cid=0x%x, rx_qzone=0x%x, vport_id=0x%x, sb_id=0x%x\0A\00", align 1
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ETH_RAMROD_RX_QUEUE_START = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_QUEUE_CID_PF = common dso_local global i64 0, align 8
@ECORE_QCID_LEGACY_VF_RX_PROD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Queue%s is meant for VF rxq[%02x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" [legacy]\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_eth_rxq_start_ramrod(%struct.ecore_hwfn* %0, %struct.ecore_queue_cid* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_queue_cid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rx_queue_start_ramrod_data*, align 8
  %15 = alloca %struct.ecore_spq_entry*, align 8
  %16 = alloca %struct.ecore_sp_init_data, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %8, align 8
  store %struct.ecore_queue_cid* %1, %struct.ecore_queue_cid** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** @OSAL_NULL, align 8
  %20 = bitcast i8* %19 to %struct.rx_queue_start_ramrod_data*
  store %struct.rx_queue_start_ramrod_data* %20, %struct.rx_queue_start_ramrod_data** %14, align 8
  %21 = load i8*, i8** @OSAL_NULL, align 8
  %22 = bitcast i8* %21 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %22, %struct.ecore_spq_entry** %15, align 8
  %23 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %23, i32* %17, align 4
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %25 = load i32, i32* @ECORE_MSG_SP, align 4
  %26 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %27 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %32 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %35 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %39 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %43 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (%struct.ecore_hwfn*, i32, i8*, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %24, i32 %25, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %33, i32 %37, i32 %41, i32 %44)
  %46 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %16, i32 0, i32 12)
  %47 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %48 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %16, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %52 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %16, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %56 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %16, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %58 = load i32, i32* @ETH_RAMROD_RX_QUEUE_START, align 4
  %59 = load i32, i32* @PROTOCOLID_ETH, align 4
  %60 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %57, %struct.ecore_spq_entry** %15, i32 %58, i32 %59, %struct.ecore_sp_init_data* %16)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* @ECORE_SUCCESS, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %6
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %7, align 4
  br label %160

66:                                               ; preds = %6
  %67 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %15, align 8
  %68 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store %struct.rx_queue_start_ramrod_data* %69, %struct.rx_queue_start_ramrod_data** %14, align 8
  %70 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %71 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @OSAL_CPU_TO_LE16(i32 %72)
  %74 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %75 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %74, i32 0, i32 12
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %77 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %80 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %79, i32 0, i32 11
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %82 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %86 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %85, i32 0, i32 10
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %88 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %92 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %91, i32 0, i32 9
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %94 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @OSAL_CPU_TO_LE16(i32 %96)
  %98 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %99 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %98, i32 0, i32 8
  store i8* %97, i8** %99, align 8
  %100 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %101 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %100, i32 0, i32 7
  store i64 0, i64* %101, align 8
  %102 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %103 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i8* @OSAL_CPU_TO_LE16(i32 %104)
  %106 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %107 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %109 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @DMA_REGPAIR_LE(i32 %110, i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = call i8* @OSAL_CPU_TO_LE16(i32 %113)
  %115 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %116 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %118 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @DMA_REGPAIR_LE(i32 %119, i32 %120)
  %122 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %123 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @ECORE_QUEUE_CID_PF, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %155

127:                                              ; preds = %66
  %128 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %129 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ECORE_QCID_LEGACY_VF_RX_PROD, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %18, align 4
  %137 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %138 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %141 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %143 = load i32, i32* @ECORE_MSG_SP, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %148 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %149 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (%struct.ecore_hwfn*, i32, i8*, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %142, i32 %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %147, i32 %150)
  %152 = load i32, i32* %18, align 4
  %153 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %154 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %127, %66
  %156 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %157 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %15, align 8
  %158 = load i8*, i8** @OSAL_NULL, align 8
  %159 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %156, %struct.ecore_spq_entry* %157, i8* %158)
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %155, %64
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
