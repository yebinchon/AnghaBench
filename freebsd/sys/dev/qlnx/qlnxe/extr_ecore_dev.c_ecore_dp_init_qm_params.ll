; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_dp_init_qm_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_dp_init_qm_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__*, %struct.ecore_qm_info }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_qm_info = type { i32, i32, i32, i32, %struct.init_qm_pq_params*, %struct.init_qm_vport_params*, %struct.init_qm_port_params*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.init_qm_pq_params = type { i32, i32, i32, i32 }
%struct.init_qm_vport_params = type { i32*, i32, i32 }
%struct.init_qm_port_params = type { i32, i32, i32, i32, i32 }

@ECORE_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"qm init top level params: start_pq %d, start_vport %d, pure_lb_pq %d, offload_pq %d, pure_ack_pq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"ooo_pq %d, first_vf_pq %d, num_pqs %d, num_vf_pqs %d, num_vports %d, max_phys_tcs_per_port %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [109 x i8] c"pf_rl_en %d, pf_wfq_en %d, vport_rl_en %d, vport_wfq_en %d, pf_wfq %d, pf_rl %d, num_pf_rls %d, pq_flags %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [98 x i8] c"port idx %d, active %d, active_phys_tcs %d, num_pbf_cmd_lines %d, num_btb_blocks %d, reserved %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"vport idx %d, vport_rl %d, wfq %d, first_tx_pq_id [ \00", align 1
@NUM_OF_TCS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"pq idx %d, vport_id %d, tc %d, wrr_grp %d, rl_valid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_dp_init_qm_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_dp_init_qm_params(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_qm_info*, align 8
  %4 = alloca %struct.init_qm_vport_params*, align 8
  %5 = alloca %struct.init_qm_port_params*, align 8
  %6 = alloca %struct.init_qm_pq_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 1
  store %struct.ecore_qm_info* %10, %struct.ecore_qm_info** %3, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %12 = load i32, i32* @ECORE_MSG_HW, align 4
  %13 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %14 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %17 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %20 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %19, i32 0, i32 20
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %23 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %22, i32 0, i32 19
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %26 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %25, i32 0, i32 18
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %11, i32 %12, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %30 = load i32, i32* @ECORE_MSG_HW, align 4
  %31 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %32 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %31, i32 0, i32 17
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %35 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %34, i32 0, i32 16
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %38 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %41 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %40, i32 0, i32 15
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %44 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %47 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %29, i32 %30, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %51 = load i32, i32* @ECORE_MSG_HW, align 4
  %52 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %53 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %56 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %59 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %62 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %65 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %68 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %71 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %74 = call i32 @ecore_get_pq_flags(%struct.ecore_hwfn* %73)
  %75 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %50, i32 %51, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %74)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %110, %1
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %79 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %77, %82
  br i1 %83, label %84, label %113

84:                                               ; preds = %76
  %85 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %86 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %85, i32 0, i32 6
  %87 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %87, i64 %89
  store %struct.init_qm_port_params* %90, %struct.init_qm_port_params** %5, align 8
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %92 = load i32, i32* @ECORE_MSG_HW, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %5, align 8
  %95 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %5, align 8
  %98 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %5, align 8
  %101 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %5, align 8
  %104 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %5, align 8
  %107 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %91, i32 %92, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %96, i32 %99, i32 %102, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %84
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %76

113:                                              ; preds = %76
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %163, %113
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %117 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %166

120:                                              ; preds = %114
  %121 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %122 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %121, i32 0, i32 5
  %123 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %123, i64 %125
  store %struct.init_qm_vport_params* %126, %struct.init_qm_vport_params** %4, align 8
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %128 = load i32, i32* @ECORE_MSG_HW, align 4
  %129 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %130 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %131, %132
  %134 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %4, align 8
  %135 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %4, align 8
  %138 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %127, i32 %128, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %133, i32 %136, i32 %139)
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %156, %120
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @NUM_OF_TCS, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %141
  %146 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %147 = load i32, i32* @ECORE_MSG_HW, align 4
  %148 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %4, align 8
  %149 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %146, i32 %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %145
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %141

159:                                              ; preds = %141
  %160 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %161 = load i32, i32* @ECORE_MSG_HW, align 4
  %162 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %160, i32 %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %114

166:                                              ; preds = %114
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %200, %166
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %170 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %203

173:                                              ; preds = %167
  %174 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %175 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %174, i32 0, i32 4
  %176 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %176, i64 %178
  store %struct.init_qm_pq_params* %179, %struct.init_qm_pq_params** %6, align 8
  %180 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %181 = load i32, i32* @ECORE_MSG_HW, align 4
  %182 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %183 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %184, %185
  %187 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %6, align 8
  %188 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %6, align 8
  %191 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %6, align 8
  %194 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %6, align 8
  %197 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %180, i32 %181, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %186, i32 %189, i32 %192, i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %173
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %167

203:                                              ; preds = %167
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_get_pq_flags(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
