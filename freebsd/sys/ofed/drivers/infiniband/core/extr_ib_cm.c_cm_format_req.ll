; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_req_msg = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.cm_id_private = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_cm_req_param = type { i64, i64, i64, i32, i32, i32, i32, i32, %struct.ib_sa_path_rec*, i32, i32, i32, i32, i32, i32, i32, %struct.ib_sa_path_rec* }
%struct.ib_sa_path_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }

@CM_REQ_ATTR_ID = common dso_local global i32 0, align 4
@CM_MSG_SEQUENCE_REQ = common dso_local global i32 0, align 4
@IB_QPT_XRC_INI = common dso_local global i64 0, align 8
@IB_LID_PERMISSIVE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_req_msg*, %struct.cm_id_private*, %struct.ib_cm_req_param*)* @cm_format_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_req(%struct.cm_req_msg* %0, %struct.cm_id_private* %1, %struct.ib_cm_req_param* %2) #0 {
  %4 = alloca %struct.cm_req_msg*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.ib_cm_req_param*, align 8
  %7 = alloca %struct.ib_sa_path_rec*, align 8
  %8 = alloca %struct.ib_sa_path_rec*, align 8
  store %struct.cm_req_msg* %0, %struct.cm_req_msg** %4, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %5, align 8
  store %struct.ib_cm_req_param* %2, %struct.ib_cm_req_param** %6, align 8
  %9 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %10 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %9, i32 0, i32 8
  %11 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %10, align 8
  store %struct.ib_sa_path_rec* %11, %struct.ib_sa_path_rec** %7, align 8
  %12 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %13 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %12, i32 0, i32 16
  %14 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %13, align 8
  store %struct.ib_sa_path_rec* %14, %struct.ib_sa_path_rec** %8, align 8
  %15 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %16 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %15, i32 0, i32 17
  %17 = load i32, i32* @CM_REQ_ATTR_ID, align 4
  %18 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %19 = load i32, i32* @CM_MSG_SEQUENCE_REQ, align 4
  %20 = call i32 @cm_form_tid(%struct.cm_id_private* %18, i32 %19)
  %21 = call i32 @cm_format_mad_hdr(i32* %16, i32 %17, i32 %20)
  %22 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %23 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %27 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %26, i32 0, i32 16
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %29 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %28, i32 0, i32 15
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %32 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %31, i32 0, i32 15
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %34 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %40 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %39, i32 0, i32 14
  store i32 %38, i32* %40, align 4
  %41 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %42 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %43 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %42, i32 0, i32 14
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cpu_to_be32(i32 %44)
  %46 = call i32 @cm_req_set_local_qpn(%struct.cm_req_msg* %41, i32 %45)
  %47 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %48 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %49 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @cm_req_set_init_depth(%struct.cm_req_msg* %47, i32 %50)
  %52 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %53 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %54 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %53, i32 0, i32 12
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cm_req_set_remote_resp_timeout(%struct.cm_req_msg* %52, i32 %55)
  %57 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %58 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %59 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @cm_req_set_qp_type(%struct.cm_req_msg* %57, i64 %60)
  %62 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %63 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %64 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @cm_req_set_flow_ctrl(%struct.cm_req_msg* %62, i32 %65)
  %67 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %68 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %69 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cpu_to_be32(i32 %70)
  %72 = call i32 @cm_req_set_starting_psn(%struct.cm_req_msg* %67, i32 %71)
  %73 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %74 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %75 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @cm_req_set_local_resp_timeout(%struct.cm_req_msg* %73, i32 %76)
  %78 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %79 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %78, i32 0, i32 8
  %80 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %79, align 8
  %81 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %80, i32 0, i32 11
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %84 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %83, i32 0, i32 13
  store i32 %82, i32* %84, align 8
  %85 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %86 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %87 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %86, i32 0, i32 8
  %88 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %87, align 8
  %89 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @cm_req_set_path_mtu(%struct.cm_req_msg* %85, i32 %90)
  %92 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %93 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %94 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @cm_req_set_max_cm_retries(%struct.cm_req_msg* %92, i32 %95)
  %97 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %98 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IB_QPT_XRC_INI, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %3
  %103 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %104 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %105 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @cm_req_set_resp_res(%struct.cm_req_msg* %103, i32 %106)
  %108 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %109 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %110 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @cm_req_set_retry_count(%struct.cm_req_msg* %108, i32 %111)
  %113 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %114 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %115 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @cm_req_set_rnr_retry_count(%struct.cm_req_msg* %113, i32 %116)
  %118 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %119 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %120 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @cm_req_set_srq(%struct.cm_req_msg* %118, i32 %121)
  br label %123

123:                                              ; preds = %102, %3
  %124 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %7, align 8
  %125 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sle i32 %126, 1
  br i1 %127, label %128, label %139

128:                                              ; preds = %123
  %129 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %7, align 8
  %130 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %129, i32 0, i32 9
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %133 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %132, i32 0, i32 12
  store i8* %131, i8** %133, align 8
  %134 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %7, align 8
  %135 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %134, i32 0, i32 8
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %138 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %137, i32 0, i32 11
  store i8* %136, i8** %138, align 8
  br label %146

139:                                              ; preds = %123
  %140 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %141 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %142 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %141, i32 0, i32 12
  store i8* %140, i8** %142, align 8
  %143 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %144 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %145 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %144, i32 0, i32 11
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %139, %128
  %147 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %7, align 8
  %148 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %151 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %150, i32 0, i32 10
  store i32 %149, i32* %151, align 8
  %152 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %7, align 8
  %153 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %156 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %155, i32 0, i32 9
  store i32 %154, i32* %156, align 4
  %157 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %158 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %7, align 8
  %159 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @cm_req_set_primary_flow_label(%struct.cm_req_msg* %157, i32 %160)
  %162 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %163 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %7, align 8
  %164 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @cm_req_set_primary_packet_rate(%struct.cm_req_msg* %162, i32 %165)
  %167 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %7, align 8
  %168 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %171 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %170, i32 0, i32 8
  store i32 %169, i32* %171, align 8
  %172 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %7, align 8
  %173 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %176 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %178 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %7, align 8
  %179 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @cm_req_set_primary_sl(%struct.cm_req_msg* %177, i32 %180)
  %182 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %183 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %7, align 8
  %184 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp sle i32 %185, 1
  %187 = zext i1 %186 to i32
  %188 = call i32 @cm_req_set_primary_subnet_local(%struct.cm_req_msg* %182, i32 %187)
  %189 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %190 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %191 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %7, align 8
  %199 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @cm_ack_timeout(i32 %197, i32 %200)
  %202 = call i32 @cm_req_set_primary_local_ack_timeout(%struct.cm_req_msg* %189, i32 %201)
  %203 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %204 = icmp ne %struct.ib_sa_path_rec* %203, null
  br i1 %204, label %205, label %285

205:                                              ; preds = %146
  %206 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %207 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp sle i32 %208, 1
  br i1 %209, label %210, label %221

210:                                              ; preds = %205
  %211 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %212 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %211, i32 0, i32 9
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %215 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %214, i32 0, i32 7
  store i8* %213, i8** %215, align 8
  %216 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %217 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %216, i32 0, i32 8
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %220 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %219, i32 0, i32 6
  store i8* %218, i8** %220, align 8
  br label %228

221:                                              ; preds = %205
  %222 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %223 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %224 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %223, i32 0, i32 7
  store i8* %222, i8** %224, align 8
  %225 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %226 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %227 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %226, i32 0, i32 6
  store i8* %225, i8** %227, align 8
  br label %228

228:                                              ; preds = %221, %210
  %229 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %230 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %233 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %232, i32 0, i32 5
  store i32 %231, i32* %233, align 4
  %234 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %235 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %238 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %237, i32 0, i32 4
  store i32 %236, i32* %238, align 8
  %239 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %240 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %241 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @cm_req_set_alt_flow_label(%struct.cm_req_msg* %239, i32 %242)
  %244 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %245 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %246 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @cm_req_set_alt_packet_rate(%struct.cm_req_msg* %244, i32 %247)
  %249 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %250 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %253 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 4
  %254 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %255 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %258 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  %259 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %260 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %261 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @cm_req_set_alt_sl(%struct.cm_req_msg* %259, i32 %262)
  %264 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %265 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %266 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp sle i32 %267, 1
  %269 = zext i1 %268 to i32
  %270 = call i32 @cm_req_set_alt_subnet_local(%struct.cm_req_msg* %264, i32 %269)
  %271 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %272 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %273 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %281 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @cm_ack_timeout(i32 %279, i32 %282)
  %284 = call i32 @cm_req_set_alt_local_ack_timeout(%struct.cm_req_msg* %271, i32 %283)
  br label %285

285:                                              ; preds = %228, %146
  %286 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %287 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %306

290:                                              ; preds = %285
  %291 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %292 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %306

295:                                              ; preds = %290
  %296 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %297 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %300 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %303 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = call i32 @memcpy(i32 %298, i64 %301, i64 %304)
  br label %306

306:                                              ; preds = %295, %290, %285
  ret void
}

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @cm_form_tid(%struct.cm_id_private*, i32) #1

declare dso_local i32 @cm_req_set_local_qpn(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cm_req_set_init_depth(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_remote_resp_timeout(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_qp_type(%struct.cm_req_msg*, i64) #1

declare dso_local i32 @cm_req_set_flow_ctrl(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_starting_psn(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_local_resp_timeout(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_path_mtu(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_max_cm_retries(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_resp_res(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_retry_count(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_rnr_retry_count(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_srq(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_primary_flow_label(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_primary_packet_rate(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_primary_sl(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_primary_subnet_local(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_primary_local_ack_timeout(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_ack_timeout(i32, i32) #1

declare dso_local i32 @cm_req_set_alt_flow_label(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_alt_packet_rate(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_alt_sl(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_alt_subnet_local(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_alt_local_ack_timeout(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
