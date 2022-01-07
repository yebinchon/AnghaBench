; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_process_mpa_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_process_mpa_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_iwarp_ll2_mpa_buf = type { i32, i32, %struct.unaligned_opaque_data, %struct.ecore_iwarp_ll2_buff* }
%struct.unaligned_opaque_data = type { i32, i32 }
%struct.ecore_iwarp_ll2_buff = type { i64 }
%struct.ecore_iwarp_fpdu = type { i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Invalid cid, drop and post back to rx cid=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Post rx buffer failed\0A\00", align 1
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't send FPDU:reset rc=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"SUSPICIOUS fpdu_length = 0x%x: assuming bug...aborting this packet...\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Can't send FPDU:delay rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_iwarp_ll2_mpa_buf*)* @ecore_iwarp_process_mpa_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iwarp_process_mpa_pkt(%struct.ecore_hwfn* %0, %struct.ecore_iwarp_ll2_mpa_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_iwarp_ll2_mpa_buf*, align 8
  %6 = alloca %struct.ecore_iwarp_ll2_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.unaligned_opaque_data*, align 8
  %9 = alloca %struct.ecore_iwarp_fpdu*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_iwarp_ll2_mpa_buf* %1, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %12 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %12, i32 0, i32 3
  %14 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %13, align 8
  store %struct.ecore_iwarp_ll2_buff* %14, %struct.ecore_iwarp_ll2_buff** %6, align 8
  %15 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %16 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %15, i32 0, i32 2
  store %struct.unaligned_opaque_data* %16, %struct.unaligned_opaque_data** %8, align 8
  %17 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %19 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %24 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = call i32 @ecore_iwarp_mpa_print_tcp_seq(%struct.ecore_hwfn* %18, i32* %27)
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %30 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %31 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 65535
  %34 = call %struct.ecore_iwarp_fpdu* @ecore_iwarp_get_curr_fpdu(%struct.ecore_hwfn* %29, i32 %33)
  store %struct.ecore_iwarp_fpdu* %34, %struct.ecore_iwarp_fpdu** %9, align 8
  %35 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %36 = icmp ne %struct.ecore_iwarp_fpdu* %35, null
  br i1 %36, label %60, label %37

37:                                               ; preds = %2
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %39 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %40 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_ERR(%struct.ecore_hwfn* %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %44 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %6, align 8
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %46 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ecore_iwarp_ll2_post_rx(%struct.ecore_hwfn* %43, %struct.ecore_iwarp_ll2_buff* %44, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %37
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %56 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_ERR(%struct.ecore_hwfn* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %54, %37
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %3, align 4
  br label %258

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %254, %60
  %62 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %6, align 8
  %63 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %67 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  store i32* %70, i32** %10, align 8
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %72 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %73 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %74 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @ecore_iwarp_mpa_classify(%struct.ecore_hwfn* %71, %struct.ecore_iwarp_fpdu* %72, i32 %75, i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  switch i32 %78, label %244 [
    i32 129, label %79
    i32 130, label %112
    i32 128, label %169
  ]

79:                                               ; preds = %61
  %80 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %6, align 8
  %81 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %82 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %83 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %84 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %87 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ecore_iwarp_init_fpdu(%struct.ecore_iwarp_ll2_buff* %80, %struct.ecore_iwarp_fpdu* %81, %struct.unaligned_opaque_data* %82, i32 %85, i32 %88)
  %90 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %91 = call i32 @ECORE_IWARP_IS_RIGHT_EDGE(%struct.unaligned_opaque_data* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %79
  %94 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %95 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  br label %244

96:                                               ; preds = %79
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %98 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %99 = call i32 @ecore_iwarp_win_right_edge(%struct.ecore_hwfn* %97, %struct.ecore_iwarp_fpdu* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %104 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %103, i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %108 = call i32 @OSAL_MEM_ZERO(%struct.ecore_iwarp_fpdu* %107, i32 8)
  br label %244

109:                                              ; preds = %96
  %110 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %111 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  br label %244

112:                                              ; preds = %61
  %113 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %114 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 8
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %119 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %120 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_ERR(%struct.ecore_hwfn* %118, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %124 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  br label %244

125:                                              ; preds = %112
  %126 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %6, align 8
  %127 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %128 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %129 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %130 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %133 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ecore_iwarp_init_fpdu(%struct.ecore_iwarp_ll2_buff* %126, %struct.ecore_iwarp_fpdu* %127, %struct.unaligned_opaque_data* %128, i32 %131, i32 %134)
  %136 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %137 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %138 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %139 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %6, align 8
  %140 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %141 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @ecore_iwarp_send_fpdu(%struct.ecore_hwfn* %136, %struct.ecore_iwarp_fpdu* %137, %struct.unaligned_opaque_data* %138, %struct.ecore_iwarp_ll2_buff* %139, i32 %142, i32 %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %125
  %148 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %149 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %148, i32 %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %153 = call i32 @OSAL_MEM_ZERO(%struct.ecore_iwarp_fpdu* %152, i32 8)
  br label %244

154:                                              ; preds = %125
  %155 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %156 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %159 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %163 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %166 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %244

169:                                              ; preds = %61
  %170 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %171 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %172 = load i32*, i32** %10, align 8
  %173 = call i32 @ecore_iwarp_update_fpdu_length(%struct.ecore_hwfn* %170, %struct.ecore_iwarp_fpdu* %171, i32* %172)
  %174 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %175 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %178 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %210

181:                                              ; preds = %169
  %182 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %183 = call i32 @ECORE_IWARP_IS_RIGHT_EDGE(%struct.unaligned_opaque_data* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %181
  %186 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %187 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %188 = call i32 @ecore_iwarp_win_right_edge(%struct.ecore_hwfn* %186, %struct.ecore_iwarp_fpdu* %187)
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = load i32, i32* %11, align 4
  store i32 %192, i32* %3, align 4
  br label %258

193:                                              ; preds = %185
  br label %194

194:                                              ; preds = %193, %181
  %195 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %196 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %197 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %198 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %6, align 8
  %199 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %200 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @ecore_iwarp_copy_fpdu(%struct.ecore_hwfn* %195, %struct.ecore_iwarp_fpdu* %196, %struct.unaligned_opaque_data* %197, %struct.ecore_iwarp_ll2_buff* %198, i32 %201)
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %194
  %206 = load i32, i32* %11, align 4
  store i32 %206, i32* %3, align 4
  br label %258

207:                                              ; preds = %194
  %208 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %209 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %208, i32 0, i32 1
  store i32 0, i32* %209, align 4
  br label %244

210:                                              ; preds = %169
  %211 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %212 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %213 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %214 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %6, align 8
  %215 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %216 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @ecore_iwarp_send_fpdu(%struct.ecore_hwfn* %211, %struct.ecore_iwarp_fpdu* %212, %struct.unaligned_opaque_data* %213, %struct.ecore_iwarp_ll2_buff* %214, i32 %217, i32 %218)
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %210
  %223 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %224 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %225 = load i32, i32* %11, align 4
  %226 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %223, i32 %224, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %225)
  br label %244

227:                                              ; preds = %210
  %228 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %229 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %232 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %233, %230
  store i32 %234, i32* %232, align 4
  %235 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %236 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %239 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %9, align 8
  %243 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %242, i32 0, i32 1
  store i32 0, i32* %243, align 4
  br label %244

244:                                              ; preds = %61, %227, %222, %207, %154, %147, %117, %109, %102, %93
  br label %245

245:                                              ; preds = %244
  %246 = load %struct.ecore_iwarp_ll2_mpa_buf*, %struct.ecore_iwarp_ll2_mpa_buf** %5, align 8
  %247 = getelementptr inbounds %struct.ecore_iwarp_ll2_mpa_buf, %struct.ecore_iwarp_ll2_mpa_buf* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  br label %254

254:                                              ; preds = %250, %245
  %255 = phi i1 [ false, %245 ], [ %253, %250 ]
  br i1 %255, label %61, label %256

256:                                              ; preds = %254
  %257 = load i32, i32* %11, align 4
  store i32 %257, i32* %3, align 4
  br label %258

258:                                              ; preds = %256, %205, %191, %58
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local i32 @ecore_iwarp_mpa_print_tcp_seq(%struct.ecore_hwfn*, i32*) #1

declare dso_local %struct.ecore_iwarp_fpdu* @ecore_iwarp_get_curr_fpdu(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, ...) #1

declare dso_local i32 @ecore_iwarp_ll2_post_rx(%struct.ecore_hwfn*, %struct.ecore_iwarp_ll2_buff*, i32) #1

declare dso_local i32 @ecore_iwarp_mpa_classify(%struct.ecore_hwfn*, %struct.ecore_iwarp_fpdu*, i32, i32*) #1

declare dso_local i32 @ecore_iwarp_init_fpdu(%struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_fpdu*, %struct.unaligned_opaque_data*, i32, i32) #1

declare dso_local i32 @ECORE_IWARP_IS_RIGHT_EDGE(%struct.unaligned_opaque_data*) #1

declare dso_local i32 @ecore_iwarp_win_right_edge(%struct.ecore_hwfn*, %struct.ecore_iwarp_fpdu*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_iwarp_fpdu*, i32) #1

declare dso_local i32 @ecore_iwarp_send_fpdu(%struct.ecore_hwfn*, %struct.ecore_iwarp_fpdu*, %struct.unaligned_opaque_data*, %struct.ecore_iwarp_ll2_buff*, i32, i32) #1

declare dso_local i32 @ecore_iwarp_update_fpdu_length(%struct.ecore_hwfn*, %struct.ecore_iwarp_fpdu*, i32*) #1

declare dso_local i32 @ecore_iwarp_copy_fpdu(%struct.ecore_hwfn*, %struct.ecore_iwarp_fpdu*, %struct.unaligned_opaque_data*, %struct.ecore_iwarp_ll2_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
