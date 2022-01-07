; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_init_pf_doorbell_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_init_pf_doorbell_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i64, i64, i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ecore_rdma_pf_params }
%struct.ecore_rdma_pf_params = type { i32, i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@BAR_ID_1 = common dso_local global i32 0, align 4
@PROTOCOLID_CORE = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@ECORE_PF_DEMS_SIZE = common dso_local global i32 0, align 4
@OSAL_PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Doorbell BAR size 0x%x is too small (normal region is 0x%0x )\0A\00", align 1
@ECORE_NORESOURCES = common dso_local global i32 0, align 4
@ECORE_MIN_PWM_REGION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [122 x i8] c"PWM region size 0x%0x is too small. Should be at least 0x%0x (Doorbell BAR size is 0x%x and normal region size is 0x%0x)\0A\00", align 1
@ECORE_ROCE_EDPM_MODE_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [112 x i8] c"roce edpm mode was configured to an illegal value of %u. Resetting it to 0-Enable EDPM if BAR size is adequate\0A\00", align 1
@ECORE_ROCE_EDPM_MODE_ENABLE = common dso_local global i32 0, align 4
@ECORE_ROCE_EDPM_MODE_FORCE_ON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [214 x i8] c"Failed to allocate enough DPIs. Allocated %d but the current minimum is set to %d. You can reduce this minimum down to %d via user configuration min_dpis or by disabling EDPM via user configuration roce_edpm_mode\0A\00", align 1
@ECORE_MIN_DPIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [113 x i8] c"doorbell bar: normal_region_size=%d, pwm_region_size=%d, dpi_size=%d, dpi_count=%d, roce_edpm=%s, page_size=%lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@DORQ_REG_PF_ICID_BIT_SHIFT_NORM = common dso_local global i32 0, align 4
@DORQ_REG_PF_MIN_ADDR_REG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_hw_init_pf_doorbell_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_hw_init_pf_doorbell_bar(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_rdma_pf_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32 1, i32* %12, align 4
  %17 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %17, i32* %15, align 4
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %19 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %20 = load i32, i32* @BAR_ID_1, align 4
  %21 = call i32 @ecore_hw_bar_size(%struct.ecore_hwfn* %18, %struct.ecore_ptt* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %23 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ECORE_IS_CMT(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %11, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %32 = load i32, i32* @PROTOCOLID_CORE, align 4
  %33 = call i32 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn* %31, i32 %32)
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %35 = load i32, i32* @PROTOCOLID_CORE, align 4
  %36 = load i32, i32* @OSAL_NULL, align 4
  %37 = call i32 @ecore_cxt_get_proto_cid_count(%struct.ecore_hwfn* %34, i32 %35, i32 %36)
  %38 = add nsw i32 %33, %37
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %40 = load i32, i32* @PROTOCOLID_ETH, align 4
  %41 = load i32, i32* @OSAL_NULL, align 4
  %42 = call i32 @ecore_cxt_get_proto_cid_count(%struct.ecore_hwfn* %39, i32 %40, i32 %41)
  %43 = add nsw i32 %38, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @ECORE_PF_DEMS_SIZE, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i64, i64* @OSAL_PAGE_SIZE, align 8
  %48 = call i32 @ROUNDUP(i32 %46, i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sdiv i32 %49, 4096
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %30
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %59 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to %struct.ecore_hwfn*
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (%struct.ecore_hwfn*, i8*, i32, ...) @DP_ERR(%struct.ecore_hwfn* %62, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* @ECORE_NORESOURCES, align 4
  store i32 %66, i32* %3, align 4
  br label %242

67:                                               ; preds = %30
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @ECORE_MIN_PWM_REGION, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %73 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to %struct.ecore_hwfn*
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @ECORE_MIN_PWM_REGION, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (%struct.ecore_hwfn*, i8*, i32, ...) @DP_ERR(%struct.ecore_hwfn* %76, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* @ECORE_NORESOURCES, align 4
  store i32 %82, i32* %3, align 4
  br label %242

83:                                               ; preds = %67
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %85 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %84, i32 0, i32 7
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store %struct.ecore_rdma_pf_params* %86, %struct.ecore_rdma_pf_params** %6, align 8
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %88 = call i64 @ECORE_IS_IWARP_PERSONALITY(%struct.ecore_hwfn* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @ECORE_ROCE_EDPM_MODE_DISABLE, align 4
  %92 = load %struct.ecore_rdma_pf_params*, %struct.ecore_rdma_pf_params** %6, align 8
  %93 = getelementptr inbounds %struct.ecore_rdma_pf_params, %struct.ecore_rdma_pf_params* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %83
  %95 = load %struct.ecore_rdma_pf_params*, %struct.ecore_rdma_pf_params** %6, align 8
  %96 = getelementptr inbounds %struct.ecore_rdma_pf_params, %struct.ecore_rdma_pf_params* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ECORE_ROCE_EDPM_MODE_DISABLE, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.ecore_rdma_pf_params*, %struct.ecore_rdma_pf_params** %6, align 8
  %102 = getelementptr inbounds %struct.ecore_rdma_pf_params, %struct.ecore_rdma_pf_params* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %13, align 4
  br label %114

104:                                              ; preds = %94
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %106 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to %struct.ecore_hwfn*
  %110 = load %struct.ecore_rdma_pf_params*, %struct.ecore_rdma_pf_params** %6, align 8
  %111 = getelementptr inbounds %struct.ecore_rdma_pf_params, %struct.ecore_rdma_pf_params* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.ecore_hwfn*, i8*, i32, ...) @DP_ERR(%struct.ecore_hwfn* %109, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %104, %100
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @ECORE_ROCE_EDPM_MODE_ENABLE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @ECORE_ROCE_EDPM_MODE_FORCE_ON, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %118, %114
  %123 = call i32 (...) @OSAL_NUM_CPUS()
  store i32 %123, i32* %12, align 4
  %124 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %125 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @ecore_hw_init_dpi_size(%struct.ecore_hwfn* %124, %struct.ecore_ptt* %125, i32 %126, i32 %127)
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %122, %118
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @ECORE_SUCCESS, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @ECORE_ROCE_EDPM_MODE_ENABLE, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %133, %129
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @ECORE_ROCE_EDPM_MODE_DISABLE, align 4
  %140 = icmp eq i32 %138, %139
  br label %141

141:                                              ; preds = %137, %133
  %142 = phi i1 [ true, %133 ], [ %140, %137 ]
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %148 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146, %141
  store i32 1, i32* %12, align 4
  %152 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %153 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @ecore_hw_init_dpi_size(%struct.ecore_hwfn* %152, %struct.ecore_ptt* %153, i32 %154, i32 %155)
  store i32 %156, i32* %15, align 4
  br label %157

157:                                              ; preds = %151, %146
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %161 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %160, i32 0, i32 5
  store i64 %159, i64* %161, align 8
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* @ECORE_SUCCESS, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %200

165:                                              ; preds = %157
  %166 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %167 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %168 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.ecore_rdma_pf_params*, %struct.ecore_rdma_pf_params** %6, align 8
  %171 = getelementptr inbounds %struct.ecore_rdma_pf_params, %struct.ecore_rdma_pf_params* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @ECORE_MIN_DPIS, align 4
  %174 = call i32 (%struct.ecore_hwfn*, i8*, i32, ...) @DP_ERR(%struct.ecore_hwfn* %166, i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.3, i64 0, i64 0), i32 %169, i32 %172, i32 %173)
  %175 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %179 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %182 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %185 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %165
  %189 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %190 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br label %193

193:                                              ; preds = %188, %165
  %194 = phi i1 [ true, %165 ], [ %192, %188 ]
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %197 = load i64, i64* @OSAL_PAGE_SIZE, align 8
  %198 = call i32 (%struct.ecore_hwfn*, i8*, i32, ...) @DP_ERR(%struct.ecore_hwfn* %175, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.4, i64 0, i64 0), i32 %176, i32 %177, i32 %180, i32 %183, i8* %196, i64 %197)
  %199 = load i32, i32* @ECORE_NORESOURCES, align 4
  store i32 %199, i32* %3, align 4
  br label %242

200:                                              ; preds = %157
  %201 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %205 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %208 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %211 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %200
  %215 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %216 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br label %219

219:                                              ; preds = %214, %200
  %220 = phi i1 [ true, %200 ], [ %218, %214 ]
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %223 = load i64, i64* @OSAL_PAGE_SIZE, align 8
  %224 = call i32 @DP_INFO(%struct.ecore_hwfn* %201, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.4, i64 0, i64 0), i32 %202, i32 %203, i32 %206, i32 %209, i8* %222, i64 %223)
  %225 = load i32, i32* %8, align 4
  %226 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %227 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* @ECORE_PF_DEMS_SIZE, align 4
  %229 = sdiv i32 %228, 4
  %230 = call i32 @OSAL_LOG2(i32 %229)
  store i32 %230, i32* %14, align 4
  %231 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %232 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %233 = load i32, i32* @DORQ_REG_PF_ICID_BIT_SHIFT_NORM, align 4
  %234 = load i32, i32* %14, align 4
  %235 = call i32 @ecore_wr(%struct.ecore_hwfn* %231, %struct.ecore_ptt* %232, i32 %233, i32 %234)
  %236 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %237 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %238 = load i32, i32* @DORQ_REG_PF_MIN_ADDR_REG1, align 4
  %239 = load i32, i32* %10, align 4
  %240 = call i32 @ecore_wr(%struct.ecore_hwfn* %236, %struct.ecore_ptt* %237, i32 %238, i32 %239)
  %241 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %241, i32* %3, align 4
  br label %242

242:                                              ; preds = %219, %193, %71, %57
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @ecore_hw_bar_size(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i64 @ECORE_IS_CMT(i32) #1

declare dso_local i32 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_cxt_get_proto_cid_count(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ROUNDUP(i32, i64) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32, ...) #1

declare dso_local i64 @ECORE_IS_IWARP_PERSONALITY(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_NUM_CPUS(...) #1

declare dso_local i32 @ecore_hw_init_dpi_size(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i32, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @OSAL_LOG2(i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
