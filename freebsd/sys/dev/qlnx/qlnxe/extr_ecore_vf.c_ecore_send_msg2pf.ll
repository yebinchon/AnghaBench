; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_send_msg2pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_send_msg2pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32, %union.vfpf_tlvs* }
%union.vfpf_tlvs = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ustorm_trigger_vf_zone = type { i32 }
%struct.ustorm_vf_zone = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@PXP_VF_BAR0_START_USDM_ZONE_B = common dso_local global i64 0, align 8
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"VF -> PF [%02x] message: [%08x, %08x] --> %p, %08x --> %p\0A\00", align 1
@PXP_CONCRETE_FID_PFID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"VF <-- PF Timeout [Type %d]\0A\00", align 1
@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@PFVF_STATUS_NO_RESOURCE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"PF response: %d [Type %d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i64*, i32)* @ecore_send_msg2pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_send_msg2pf(%struct.ecore_hwfn* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.vfpf_tlvs*, align 8
  %8 = alloca %struct.ustorm_trigger_vf_zone, align 4
  %9 = alloca %struct.ustorm_vf_zone*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = load %union.vfpf_tlvs*, %union.vfpf_tlvs** %15, align 8
  store %union.vfpf_tlvs* %16, %union.vfpf_tlvs** %7, align 8
  %17 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %17, i32* %10, align 4
  store i32 100, i32* %11, align 4
  %18 = load i64, i64* @PXP_VF_BAR0_START_USDM_ZONE_B, align 8
  %19 = inttoptr i64 %18 to %struct.ustorm_vf_zone*
  store %struct.ustorm_vf_zone* %19, %struct.ustorm_vf_zone** %9, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %21 = load %union.vfpf_tlvs*, %union.vfpf_tlvs** %7, align 8
  %22 = call i32 @ecore_dp_tlv_list(%struct.ecore_hwfn* %20, %union.vfpf_tlvs* %21)
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = call i32 @OSAL_MEMSET(%struct.ustorm_trigger_vf_zone* %8, i32 0, i32 4)
  %28 = getelementptr inbounds %struct.ustorm_trigger_vf_zone, %struct.ustorm_trigger_vf_zone* %8, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %30 = load i32, i32* @ECORE_MSG_IOV, align 4
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PXP_CONCRETE_FID_PFID, align 4
  %36 = call i32 @GET_FIELD(i32 %34, i32 %35)
  %37 = sext i32 %36 to i64
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %39 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @U64_HI(i32 %42)
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %45 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @U64_LO(i32 %48)
  %50 = load %struct.ustorm_vf_zone*, %struct.ustorm_vf_zone** %9, align 8
  %51 = getelementptr inbounds %struct.ustorm_vf_zone, %struct.ustorm_vf_zone* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = bitcast %struct.ustorm_trigger_vf_zone* %8 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ustorm_vf_zone*, %struct.ustorm_vf_zone** %9, align 8
  %56 = getelementptr inbounds %struct.ustorm_vf_zone, %struct.ustorm_vf_zone* %55, i32 0, i32 0
  %57 = call i32 (%struct.ecore_hwfn*, i32, i8*, i64, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %29, i32 %30, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %43, i32 %49, %struct.TYPE_8__* %52, i32 %54, i32* %56)
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %59 = load %struct.ustorm_vf_zone*, %struct.ustorm_vf_zone** %9, align 8
  %60 = getelementptr inbounds %struct.ustorm_vf_zone, %struct.ustorm_vf_zone* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = ptrtoint i32* %62 to i32
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %65 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @U64_LO(i32 %68)
  %70 = call i32 @REG_WR(%struct.ecore_hwfn* %58, i32 %63, i32 %69)
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %72 = load %struct.ustorm_vf_zone*, %struct.ustorm_vf_zone** %9, align 8
  %73 = getelementptr inbounds %struct.ustorm_vf_zone, %struct.ustorm_vf_zone* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = ptrtoint i32* %75 to i32
  %77 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %78 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @U64_HI(i32 %81)
  %83 = call i32 @REG_WR(%struct.ecore_hwfn* %71, i32 %76, i32 %82)
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %85 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @OSAL_WMB(i32 %86)
  %88 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %89 = load %struct.ustorm_vf_zone*, %struct.ustorm_vf_zone** %9, align 8
  %90 = getelementptr inbounds %struct.ustorm_vf_zone, %struct.ustorm_vf_zone* %89, i32 0, i32 0
  %91 = ptrtoint i32* %90 to i32
  %92 = bitcast %struct.ustorm_trigger_vf_zone* %8 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @REG_WR(%struct.ecore_hwfn* %88, i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %104, %3
  %96 = load i64*, i64** %5, align 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %99, %95
  %103 = phi i1 [ false, %95 ], [ %101, %99 ]
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  %105 = call i32 @OSAL_MSLEEP(i32 25)
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %11, align 4
  br label %95

108:                                              ; preds = %102
  %109 = load i64*, i64** %5, align 8
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %108
  %113 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %114 = load %union.vfpf_tlvs*, %union.vfpf_tlvs** %7, align 8
  %115 = bitcast %union.vfpf_tlvs* %114 to %struct.TYPE_12__*
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = call i32 (%struct.ecore_hwfn*, i32, i8*, i64, ...) @DP_NOTICE(%struct.ecore_hwfn* %113, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %119)
  %121 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %121, i32* %10, align 4
  br label %154

122:                                              ; preds = %108
  %123 = load i64*, i64** %5, align 8
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %122
  %128 = load i64*, i64** %5, align 8
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @PFVF_STATUS_NO_RESOURCE, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %134 = load i64*, i64** %5, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load %union.vfpf_tlvs*, %union.vfpf_tlvs** %7, align 8
  %137 = bitcast %union.vfpf_tlvs* %136 to %struct.TYPE_12__*
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (%struct.ecore_hwfn*, i32, i8*, i64, ...) @DP_NOTICE(%struct.ecore_hwfn* %133, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %135, i32 %140)
  br label %153

142:                                              ; preds = %127, %122
  %143 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %144 = load i32, i32* @ECORE_MSG_IOV, align 4
  %145 = load i64*, i64** %5, align 8
  %146 = load i64, i64* %145, align 8
  %147 = load %union.vfpf_tlvs*, %union.vfpf_tlvs** %7, align 8
  %148 = bitcast %union.vfpf_tlvs* %147 to %struct.TYPE_12__*
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (%struct.ecore_hwfn*, i32, i8*, i64, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %143, i32 %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %146, i32 %151)
  br label %153

153:                                              ; preds = %142, %132
  br label %154

154:                                              ; preds = %153, %112
  %155 = load i32, i32* %10, align 4
  ret i32 %155
}

declare dso_local i32 @ecore_dp_tlv_list(%struct.ecore_hwfn*, %union.vfpf_tlvs*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ustorm_trigger_vf_zone*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64, i32, ...) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @REG_WR(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @OSAL_WMB(i32) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
