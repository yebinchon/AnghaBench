; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_cb_host_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_cb_host_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 (i64, i32, %struct.TYPE_16__*, i32)* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }

@OCS_HW_HOST_STAT_MAX = common dso_local global i32 0, align 4
@OCS_HW_HOST_STAT_TX_KBYTE_COUNT = common dso_local global i64 0, align 8
@OCS_HW_HOST_STAT_RX_KBYTE_COUNT = common dso_local global i64 0, align 8
@OCS_HW_HOST_STAT_TX_FRAME_COUNT = common dso_local global i64 0, align 8
@OCS_HW_HOST_STAT_RX_FRAME_COUNT = common dso_local global i64 0, align 8
@OCS_HW_HOST_STAT_TX_SEQ_COUNT = common dso_local global i64 0, align 8
@OCS_HW_HOST_STAT_RX_SEQ_COUNT = common dso_local global i64 0, align 8
@OCS_HW_HOST_STAT_TOTAL_EXCH_ORIG = common dso_local global i64 0, align 8
@OCS_HW_HOST_STAT_TOTAL_EXCH_RESP = common dso_local global i64 0, align 8
@OCS_HW_HOSY_STAT_RX_P_BSY_COUNT = common dso_local global i64 0, align 8
@OCS_HW_HOST_STAT_RX_F_BSY_COUNT = common dso_local global i64 0, align 8
@OCS_HW_HOST_STAT_DROP_FRM_DUE_TO_NO_RQ_BUF_COUNT = common dso_local global i64 0, align 8
@OCS_HW_HOST_STAT_EMPTY_RQ_TIMEOUT_COUNT = common dso_local global i64 0, align 8
@OCS_HW_HOST_STAT_DROP_FRM_DUE_TO_NO_XRI_COUNT = common dso_local global i64 0, align 8
@OCS_HW_HOST_STAT_EMPTY_XRI_POOL_COUNT = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, i64, %struct.TYPE_13__*, i8*)* @ocs_hw_cb_host_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_hw_cb_host_stat(%struct.TYPE_15__* %0, i64 %1, %struct.TYPE_13__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = bitcast %struct.TYPE_13__* %14 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %10, align 8
  %18 = load i32, i32* @OCS_HW_HOST_STAT_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca %struct.TYPE_16__, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @OCS_HW_HOST_STAT_MAX, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @OCS_HW_HOST_STAT_MAX, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @ocs_memset(%struct.TYPE_16__* %21, i32 0, i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @OCS_HW_HOST_STAT_TX_KBYTE_COUNT, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* @OCS_HW_HOST_STAT_RX_KBYTE_COUNT, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @OCS_HW_HOST_STAT_TX_FRAME_COUNT, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* @OCS_HW_HOST_STAT_RX_FRAME_COUNT, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* @OCS_HW_HOST_STAT_TX_SEQ_COUNT, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* @OCS_HW_HOST_STAT_RX_SEQ_COUNT, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @OCS_HW_HOST_STAT_TOTAL_EXCH_ORIG, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* @OCS_HW_HOST_STAT_TOTAL_EXCH_RESP, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* @OCS_HW_HOSY_STAT_RX_P_BSY_COUNT, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* @OCS_HW_HOST_STAT_RX_F_BSY_COUNT, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* @OCS_HW_HOST_STAT_DROP_FRM_DUE_TO_NO_RQ_BUF_COUNT, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* @OCS_HW_HOST_STAT_EMPTY_RQ_TIMEOUT_COUNT, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* @OCS_HW_HOST_STAT_DROP_FRM_DUE_TO_NO_XRI_COUNT, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* @OCS_HW_HOST_STAT_EMPTY_XRI_POOL_COUNT, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %113 = icmp ne %struct.TYPE_13__* %112, null
  br i1 %113, label %114, label %149

114:                                              ; preds = %4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i32 (i64, i32, %struct.TYPE_16__*, i32)*, i32 (i64, i32, %struct.TYPE_16__*, i32)** %116, align 8
  %118 = icmp ne i32 (i64, i32, %struct.TYPE_16__*, i32)* %117, null
  br i1 %118, label %119, label %143

119:                                              ; preds = %114
  %120 = load i64, i64* %6, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %6, align 8
  br label %133

133:                                              ; preds = %128, %122, %119
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32 (i64, i32, %struct.TYPE_16__*, i32)*, i32 (i64, i32, %struct.TYPE_16__*, i32)** %135, align 8
  %137 = load i64, i64* %6, align 8
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 %136(i64 %137, i32 %138, %struct.TYPE_16__* %21, i32 %141)
  br label %143

143:                                              ; preds = %133, %114
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %148 = call i32 @ocs_free(i32 %146, %struct.TYPE_13__* %147, i32 16)
  br label %149

149:                                              ; preds = %143, %4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %154 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %155 = call i32 @ocs_free(i32 %152, %struct.TYPE_13__* %153, i32 %154)
  %156 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %156)
  ret i64 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ocs_memset(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @ocs_free(i32, %struct.TYPE_13__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
