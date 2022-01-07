; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_stream_reset_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_stream_reset_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.sctp_association }
%struct.sctp_association = type { i64, i64, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32, i8*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.sctp_stream_reset_response = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_tmit_chunk = type { i32 }
%struct.sctp_stream_reset_request = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sctp_stream_reset_out_request = type { i64* }
%struct.sctp_stream_reset_in_request = type { i64* }
%struct.sctp_stream_reset_response_tsn = type { i32, i32 }
%struct.sctp_forward_tsn_chunk = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@SCTP_STR_RESET_OUT_REQUEST = common dso_local global i64 0, align 8
@SCTP_STREAM_RESET_RESULT_PERFORMED = common dso_local global i64 0, align 8
@SCTP_STREAM_RESET_RESULT_DENIED = common dso_local global i64 0, align 8
@SCTP_NOTIFY_STR_RESET_DENIED_OUT = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@SCTP_STREAM_RESET_RESULT_IN_PROGRESS = common dso_local global i64 0, align 8
@SCTP_NOTIFY_STR_RESET_FAILED_OUT = common dso_local global i32 0, align 4
@SCTP_STR_RESET_IN_REQUEST = common dso_local global i64 0, align 8
@SCTP_NOTIFY_STR_RESET_DENIED_IN = common dso_local global i32 0, align 4
@SCTP_NOTIFY_STR_RESET_FAILED_IN = common dso_local global i32 0, align 4
@SCTP_STR_RESET_ADD_OUT_STREAMS = common dso_local global i64 0, align 8
@SCTP_STREAM_OPEN = common dso_local global i32 0, align 4
@SCTP_STREAM_CHANGE_DENIED = common dso_local global i32 0, align 4
@SCTP_STREAM_CHANGE_FAILED = common dso_local global i32 0, align 4
@SCTP_STR_RESET_ADD_IN_STREAMS = common dso_local global i64 0, align 8
@SCTP_STR_RESET_TSN_REQUEST = common dso_local global i64 0, align 8
@SCTP_FORWARD_CUM_TSN = common dso_local global i32 0, align 4
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_MAP_LOGGING_ENABLE = common dso_local global i32 0, align 4
@SCTP_MAP_SLIDE_RESULT = common dso_local global i32 0, align 4
@SCTP_ASSOC_RESET_DENIED = common dso_local global i32 0, align 4
@SCTP_ASSOC_RESET_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_tcb*, i64, i64, %struct.sctp_stream_reset_response*)* @sctp_handle_stream_reset_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_handle_stream_reset_response(%struct.sctp_tcb* %0, i64 %1, i64 %2, %struct.sctp_stream_reset_response* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sctp_stream_reset_response*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_association*, align 8
  %13 = alloca %struct.sctp_tmit_chunk*, align 8
  %14 = alloca %struct.sctp_stream_reset_request*, align 8
  %15 = alloca %struct.sctp_stream_reset_out_request*, align 8
  %16 = alloca %struct.sctp_stream_reset_in_request*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sctp_stream_reset_response_tsn*, align 8
  %22 = alloca %struct.sctp_forward_tsn_chunk, align 4
  %23 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sctp_stream_reset_response* %3, %struct.sctp_stream_reset_response** %9, align 8
  %24 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %25 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %24, i32 0, i32 0
  store %struct.sctp_association* %25, %struct.sctp_association** %12, align 8
  %26 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %27 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %551

31:                                               ; preds = %4
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %34 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %541

38:                                               ; preds = %31
  %39 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call %struct.sctp_stream_reset_request* @sctp_find_stream_reset(%struct.sctp_tcb* %39, i64 %40, %struct.sctp_tmit_chunk** %13)
  store %struct.sctp_stream_reset_request* %41, %struct.sctp_stream_reset_request** %14, align 8
  %42 = load %struct.sctp_stream_reset_request*, %struct.sctp_stream_reset_request** %14, align 8
  %43 = icmp ne %struct.sctp_stream_reset_request* %42, null
  br i1 %43, label %44, label %540

44:                                               ; preds = %38
  %45 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %46 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.sctp_stream_reset_request*, %struct.sctp_stream_reset_request** %14, align 8
  %51 = getelementptr inbounds %struct.sctp_stream_reset_request, %struct.sctp_stream_reset_request* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohs(i32 %53)
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %10, align 8
  %56 = load %struct.sctp_stream_reset_request*, %struct.sctp_stream_reset_request** %14, align 8
  %57 = getelementptr inbounds %struct.sctp_stream_reset_request, %struct.sctp_stream_reset_request* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohs(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @SCTP_STR_RESET_OUT_REQUEST, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %144

64:                                               ; preds = %44
  store i32 0, i32* %18, align 4
  %65 = load %struct.sctp_stream_reset_request*, %struct.sctp_stream_reset_request** %14, align 8
  %66 = bitcast %struct.sctp_stream_reset_request* %65 to %struct.sctp_stream_reset_out_request*
  store %struct.sctp_stream_reset_out_request* %66, %struct.sctp_stream_reset_out_request** %15, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 %68, 8
  %70 = udiv i64 %69, 8
  store i64 %70, i64* %17, align 8
  %71 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %72 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %71, i32 0, i32 2
  store i32 0, i32* %72, align 8
  %73 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %74 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %64
  %78 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %79 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %77, %64
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @SCTP_STREAM_RESET_RESULT_PERFORMED, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %88 = load i64, i64* %17, align 8
  %89 = load %struct.sctp_stream_reset_out_request*, %struct.sctp_stream_reset_out_request** %15, align 8
  %90 = getelementptr inbounds %struct.sctp_stream_reset_out_request, %struct.sctp_stream_reset_out_request* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = call i32 @sctp_reset_out_streams(%struct.sctp_tcb* %87, i64 %88, i64* %91)
  br label %133

93:                                               ; preds = %82
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* @SCTP_STREAM_RESET_RESULT_DENIED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i32, i32* @SCTP_NOTIFY_STR_RESET_DENIED_OUT, align 4
  %99 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load %struct.sctp_stream_reset_out_request*, %struct.sctp_stream_reset_out_request** %15, align 8
  %102 = getelementptr inbounds %struct.sctp_stream_reset_out_request, %struct.sctp_stream_reset_out_request* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %105 = call i32 @sctp_ulp_notify(i32 %98, %struct.sctp_tcb* %99, i64 %100, i64* %103, i32 %104)
  br label %132

106:                                              ; preds = %93
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @SCTP_STREAM_RESET_RESULT_IN_PROGRESS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %112 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %116 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, -1
  store i64 %119, i64* %117, align 8
  %120 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %121 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %120, i32 0, i32 2
  store i32 1, i32* %121, align 8
  store i32 1, i32* %18, align 4
  br label %131

122:                                              ; preds = %106
  %123 = load i32, i32* @SCTP_NOTIFY_STR_RESET_FAILED_OUT, align 4
  %124 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %125 = load i64, i64* %17, align 8
  %126 = load %struct.sctp_stream_reset_out_request*, %struct.sctp_stream_reset_out_request** %15, align 8
  %127 = getelementptr inbounds %struct.sctp_stream_reset_out_request, %struct.sctp_stream_reset_out_request* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %130 = call i32 @sctp_ulp_notify(i32 %123, %struct.sctp_tcb* %124, i64 %125, i64* %128, i32 %129)
  br label %131

131:                                              ; preds = %122, %110
  br label %132

132:                                              ; preds = %131, %97
  br label %133

133:                                              ; preds = %132, %86
  %134 = load i32, i32* %18, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %138 = load i64, i64* %17, align 8
  %139 = load %struct.sctp_stream_reset_out_request*, %struct.sctp_stream_reset_out_request** %15, align 8
  %140 = getelementptr inbounds %struct.sctp_stream_reset_out_request, %struct.sctp_stream_reset_out_request* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = call i32 @sctp_reset_clear_pending(%struct.sctp_tcb* %137, i64 %138, i64* %141)
  br label %143

143:                                              ; preds = %136, %133
  br label %531

144:                                              ; preds = %44
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* @SCTP_STR_RESET_IN_REQUEST, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %192

148:                                              ; preds = %144
  %149 = load %struct.sctp_stream_reset_request*, %struct.sctp_stream_reset_request** %14, align 8
  %150 = bitcast %struct.sctp_stream_reset_request* %149 to %struct.sctp_stream_reset_in_request*
  store %struct.sctp_stream_reset_in_request* %150, %struct.sctp_stream_reset_in_request** %16, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = sub i64 %152, 8
  %154 = udiv i64 %153, 8
  store i64 %154, i64* %17, align 8
  %155 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %156 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %148
  %160 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %161 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, -1
  store i64 %163, i64* %161, align 8
  br label %164

164:                                              ; preds = %159, %148
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* @SCTP_STREAM_RESET_RESULT_DENIED, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load i32, i32* @SCTP_NOTIFY_STR_RESET_DENIED_IN, align 4
  %170 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %171 = load i64, i64* %17, align 8
  %172 = load %struct.sctp_stream_reset_in_request*, %struct.sctp_stream_reset_in_request** %16, align 8
  %173 = getelementptr inbounds %struct.sctp_stream_reset_in_request, %struct.sctp_stream_reset_in_request* %172, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %176 = call i32 @sctp_ulp_notify(i32 %169, %struct.sctp_tcb* %170, i64 %171, i64* %174, i32 %175)
  br label %191

177:                                              ; preds = %164
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* @SCTP_STREAM_RESET_RESULT_PERFORMED, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = load i32, i32* @SCTP_NOTIFY_STR_RESET_FAILED_IN, align 4
  %183 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %184 = load i64, i64* %17, align 8
  %185 = load %struct.sctp_stream_reset_in_request*, %struct.sctp_stream_reset_in_request** %16, align 8
  %186 = getelementptr inbounds %struct.sctp_stream_reset_in_request, %struct.sctp_stream_reset_in_request* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %189 = call i32 @sctp_ulp_notify(i32 %182, %struct.sctp_tcb* %183, i64 %184, i64* %187, i32 %188)
  br label %190

190:                                              ; preds = %181, %177
  br label %191

191:                                              ; preds = %190, %168
  br label %530

192:                                              ; preds = %144
  %193 = load i64, i64* %10, align 8
  %194 = load i64, i64* @SCTP_STR_RESET_ADD_OUT_STREAMS, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %309

196:                                              ; preds = %192
  %197 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %198 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %19, align 4
  %201 = load i32, i32* %19, align 4
  %202 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %203 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %207 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %205, %209
  %211 = icmp sgt i32 %201, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %196
  %213 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %214 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %218 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %216, %220
  store i32 %221, i32* %19, align 4
  br label %222

222:                                              ; preds = %212, %196
  %223 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %224 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %224, i32 0, i32 3
  store i32 0, i32* %225, align 4
  %226 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %227 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %222
  %231 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %232 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, -1
  store i64 %234, i64* %232, align 8
  br label %235

235:                                              ; preds = %230, %222
  %236 = load i64, i64* %8, align 8
  %237 = load i64, i64* @SCTP_STREAM_RESET_RESULT_PERFORMED, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %279

239:                                              ; preds = %235
  %240 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %241 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %20, align 4
  br label %243

243:                                              ; preds = %260, %239
  %244 = load i32, i32* %20, align 4
  %245 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %246 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %19, align 4
  %249 = add nsw i32 %247, %248
  %250 = icmp slt i32 %244, %249
  br i1 %250, label %251, label %263

251:                                              ; preds = %243
  %252 = load i32, i32* @SCTP_STREAM_OPEN, align 4
  %253 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %254 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %253, i32 0, i32 17
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %254, align 8
  %256 = load i32, i32* %20, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  store i32 %252, i32* %259, align 4
  br label %260

260:                                              ; preds = %251
  %261 = load i32, i32* %20, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %20, align 4
  br label %243

263:                                              ; preds = %243
  %264 = load i32, i32* %19, align 4
  %265 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %266 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, %264
  store i32 %268, i32* %266, align 4
  %269 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %270 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %271 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %271, i32 0, i32 16
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %275 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @sctp_notify_stream_reset_add(%struct.sctp_tcb* %269, i32 %273, i32 %277, i32 0)
  br label %308

279:                                              ; preds = %235
  %280 = load i64, i64* %8, align 8
  %281 = load i64, i64* @SCTP_STREAM_RESET_RESULT_DENIED, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %295

283:                                              ; preds = %279
  %284 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %285 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %286 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %286, i32 0, i32 16
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %290 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @SCTP_STREAM_CHANGE_DENIED, align 4
  %294 = call i32 @sctp_notify_stream_reset_add(%struct.sctp_tcb* %284, i32 %288, i32 %292, i32 %293)
  br label %307

295:                                              ; preds = %279
  %296 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %297 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %298 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %298, i32 0, i32 16
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %302 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @SCTP_STREAM_CHANGE_FAILED, align 4
  %306 = call i32 @sctp_notify_stream_reset_add(%struct.sctp_tcb* %296, i32 %300, i32 %304, i32 %305)
  br label %307

307:                                              ; preds = %295, %283
  br label %308

308:                                              ; preds = %307, %263
  br label %529

309:                                              ; preds = %192
  %310 = load i64, i64* %10, align 8
  %311 = load i64, i64* @SCTP_STR_RESET_ADD_IN_STREAMS, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %357

313:                                              ; preds = %309
  %314 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %315 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %313
  %319 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %320 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = add nsw i64 %321, -1
  store i64 %322, i64* %320, align 8
  br label %323

323:                                              ; preds = %318, %313
  %324 = load i64, i64* %8, align 8
  %325 = load i64, i64* @SCTP_STREAM_RESET_RESULT_DENIED, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %339

327:                                              ; preds = %323
  %328 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %329 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %330 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %330, i32 0, i32 16
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %334 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @SCTP_STREAM_CHANGE_DENIED, align 4
  %338 = call i32 @sctp_notify_stream_reset_add(%struct.sctp_tcb* %328, i32 %332, i32 %336, i32 %337)
  br label %356

339:                                              ; preds = %323
  %340 = load i64, i64* %8, align 8
  %341 = load i64, i64* @SCTP_STREAM_RESET_RESULT_PERFORMED, align 8
  %342 = icmp ne i64 %340, %341
  br i1 %342, label %343, label %355

343:                                              ; preds = %339
  %344 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %345 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %346 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %346, i32 0, i32 16
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %350 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @SCTP_STREAM_CHANGE_FAILED, align 4
  %354 = call i32 @sctp_notify_stream_reset_add(%struct.sctp_tcb* %344, i32 %348, i32 %352, i32 %353)
  br label %355

355:                                              ; preds = %343, %339
  br label %356

356:                                              ; preds = %355, %327
  br label %528

357:                                              ; preds = %309
  %358 = load i64, i64* %10, align 8
  %359 = load i64, i64* @SCTP_STR_RESET_TSN_REQUEST, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %527

361:                                              ; preds = %357
  store i32 0, i32* %23, align 4
  %362 = load %struct.sctp_stream_reset_response*, %struct.sctp_stream_reset_response** %9, align 8
  %363 = icmp eq %struct.sctp_stream_reset_response* %362, null
  br i1 %363, label %364, label %365

364:                                              ; preds = %361
  store i32 0, i32* %5, align 4
  br label %551

365:                                              ; preds = %361
  %366 = load %struct.sctp_stream_reset_response*, %struct.sctp_stream_reset_response** %9, align 8
  %367 = getelementptr inbounds %struct.sctp_stream_reset_response, %struct.sctp_stream_reset_response* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @ntohs(i32 %369)
  %371 = sext i32 %370 to i64
  %372 = icmp ult i64 %371, 8
  br i1 %372, label %373, label %374

373:                                              ; preds = %365
  store i32 0, i32* %5, align 4
  br label %551

374:                                              ; preds = %365
  %375 = load i64, i64* %8, align 8
  %376 = load i64, i64* @SCTP_STREAM_RESET_RESULT_PERFORMED, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %495

378:                                              ; preds = %374
  %379 = load %struct.sctp_stream_reset_response*, %struct.sctp_stream_reset_response** %9, align 8
  %380 = bitcast %struct.sctp_stream_reset_response* %379 to %struct.sctp_stream_reset_response_tsn*
  store %struct.sctp_stream_reset_response_tsn* %380, %struct.sctp_stream_reset_response_tsn** %21, align 8
  %381 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %382 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = add nsw i64 %383, -1
  store i64 %384, i64* %382, align 8
  %385 = call i32 @htons(i32 12)
  %386 = getelementptr inbounds %struct.sctp_forward_tsn_chunk, %struct.sctp_forward_tsn_chunk* %22, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 1
  store i32 %385, i32* %387, align 4
  %388 = load i32, i32* @SCTP_FORWARD_CUM_TSN, align 4
  %389 = getelementptr inbounds %struct.sctp_forward_tsn_chunk, %struct.sctp_forward_tsn_chunk* %22, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 0
  store i32 %388, i32* %390, align 4
  %391 = load %struct.sctp_stream_reset_response_tsn*, %struct.sctp_stream_reset_response_tsn** %21, align 8
  %392 = getelementptr inbounds %struct.sctp_stream_reset_response_tsn, %struct.sctp_stream_reset_response_tsn* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = call i8* @ntohl(i32 %393)
  %395 = getelementptr i8, i8* %394, i64 -1
  %396 = call i32 @htonl(i8* %395)
  %397 = getelementptr inbounds %struct.sctp_forward_tsn_chunk, %struct.sctp_forward_tsn_chunk* %22, i32 0, i32 0
  store i32 %396, i32* %397, align 4
  %398 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %399 = call i32 @sctp_handle_forward_tsn(%struct.sctp_tcb* %398, %struct.sctp_forward_tsn_chunk* %22, i32* %23, i32* null, i32 0)
  %400 = load i32, i32* %23, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %378
  store i32 1, i32* %5, align 4
  br label %551

403:                                              ; preds = %378
  %404 = load %struct.sctp_stream_reset_response_tsn*, %struct.sctp_stream_reset_response_tsn** %21, align 8
  %405 = getelementptr inbounds %struct.sctp_stream_reset_response_tsn, %struct.sctp_stream_reset_response_tsn* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = call i8* @ntohl(i32 %406)
  %408 = getelementptr i8, i8* %407, i64 -1
  %409 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %410 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %410, i32 0, i32 12
  store i8* %408, i8** %411, align 8
  %412 = load i32, i32* @sctp_logging_level, align 4
  %413 = call i32 @SCTP_BASE_SYSCTL(i32 %412)
  %414 = load i32, i32* @SCTP_MAP_LOGGING_ENABLE, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %423

417:                                              ; preds = %403
  %418 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %419 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %418, i32 0, i32 12
  %420 = load i8*, i8** %419, align 8
  %421 = load i32, i32* @SCTP_MAP_SLIDE_RESULT, align 4
  %422 = call i32 @sctp_log_map(i32 0, i32 7, i8* %420, i32 %421)
  br label %423

423:                                              ; preds = %417, %403
  %424 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %425 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %425, i32 0, i32 12
  %427 = load i8*, i8** %426, align 8
  %428 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %429 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %429, i32 0, i32 8
  store i8* %427, i8** %430, align 8
  %431 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %432 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %432, i32 0, i32 15
  store i8* %427, i8** %433, align 8
  %434 = load %struct.sctp_stream_reset_response_tsn*, %struct.sctp_stream_reset_response_tsn** %21, align 8
  %435 = getelementptr inbounds %struct.sctp_stream_reset_response_tsn, %struct.sctp_stream_reset_response_tsn* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = call i8* @ntohl(i32 %436)
  %438 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %439 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %439, i32 0, i32 6
  store i8* %437, i8** %440, align 8
  %441 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %442 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %442, i32 0, i32 14
  %444 = load i32, i32* %443, align 8
  %445 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %446 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %446, i32 0, i32 10
  %448 = load i32, i32* %447, align 8
  %449 = call i32 @memset(i32 %444, i32 0, i32 %448)
  %450 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %451 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %451, i32 0, i32 12
  %453 = load i8*, i8** %452, align 8
  %454 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %455 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %455, i32 0, i32 13
  store i8* %453, i8** %456, align 8
  %457 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %458 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %458, i32 0, i32 11
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %462 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %462, i32 0, i32 10
  %464 = load i32, i32* %463, align 8
  %465 = call i32 @memset(i32 %460, i32 0, i32 %464)
  %466 = load %struct.sctp_stream_reset_response_tsn*, %struct.sctp_stream_reset_response_tsn** %21, align 8
  %467 = getelementptr inbounds %struct.sctp_stream_reset_response_tsn, %struct.sctp_stream_reset_response_tsn* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = call i8* @ntohl(i32 %468)
  %470 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %471 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %471, i32 0, i32 7
  store i8* %469, i8** %472, align 8
  %473 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %474 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %474, i32 0, i32 8
  %476 = load i8*, i8** %475, align 8
  %477 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %478 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %478, i32 0, i32 9
  store i8* %476, i8** %479, align 8
  %480 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %481 = call i32 @sctp_reset_out_streams(%struct.sctp_tcb* %480, i64 0, i64* null)
  %482 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %483 = call i32 @sctp_reset_in_stream(%struct.sctp_tcb* %482, i32 0, i64* null)
  %484 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %485 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %486 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %486, i32 0, i32 7
  %488 = load i8*, i8** %487, align 8
  %489 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %490 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %490, i32 0, i32 6
  %492 = load i8*, i8** %491, align 8
  %493 = getelementptr i8, i8* %492, i64 1
  %494 = call i32 @sctp_notify_stream_reset_tsn(%struct.sctp_tcb* %484, i8* %488, i8* %493, i32 0)
  br label %526

495:                                              ; preds = %374
  %496 = load i64, i64* %8, align 8
  %497 = load i64, i64* @SCTP_STREAM_RESET_RESULT_DENIED, align 8
  %498 = icmp eq i64 %496, %497
  br i1 %498, label %499, label %512

499:                                              ; preds = %495
  %500 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %501 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %502 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %502, i32 0, i32 7
  %504 = load i8*, i8** %503, align 8
  %505 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %506 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %506, i32 0, i32 6
  %508 = load i8*, i8** %507, align 8
  %509 = getelementptr i8, i8* %508, i64 1
  %510 = load i32, i32* @SCTP_ASSOC_RESET_DENIED, align 4
  %511 = call i32 @sctp_notify_stream_reset_tsn(%struct.sctp_tcb* %500, i8* %504, i8* %509, i32 %510)
  br label %525

512:                                              ; preds = %495
  %513 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %514 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %515 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %515, i32 0, i32 7
  %517 = load i8*, i8** %516, align 8
  %518 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %519 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %519, i32 0, i32 6
  %521 = load i8*, i8** %520, align 8
  %522 = getelementptr i8, i8* %521, i64 1
  %523 = load i32, i32* @SCTP_ASSOC_RESET_FAILED, align 4
  %524 = call i32 @sctp_notify_stream_reset_tsn(%struct.sctp_tcb* %513, i8* %517, i8* %522, i32 %523)
  br label %525

525:                                              ; preds = %512, %499
  br label %526

526:                                              ; preds = %525, %423
  br label %527

527:                                              ; preds = %526, %357
  br label %528

528:                                              ; preds = %527, %356
  br label %529

529:                                              ; preds = %528, %308
  br label %530

530:                                              ; preds = %529, %191
  br label %531

531:                                              ; preds = %530, %143
  %532 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %533 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = icmp eq i64 %534, 0
  br i1 %535, label %536, label %539

536:                                              ; preds = %531
  %537 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %538 = call i32 @sctp_clean_up_stream_reset(%struct.sctp_tcb* %537)
  br label %539

539:                                              ; preds = %536, %531
  br label %540

540:                                              ; preds = %539, %38
  br label %541

541:                                              ; preds = %540, %31
  %542 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %543 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %542, i32 0, i32 0
  %544 = load i64, i64* %543, align 8
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %546, label %550

546:                                              ; preds = %541
  %547 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %548 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %549 = call i32 @sctp_send_stream_reset_out_if_possible(%struct.sctp_tcb* %547, i32 %548)
  br label %550

550:                                              ; preds = %546, %541
  store i32 0, i32* %5, align 4
  br label %551

551:                                              ; preds = %550, %402, %373, %364, %30
  %552 = load i32, i32* %5, align 4
  ret i32 %552
}

declare dso_local %struct.sctp_stream_reset_request* @sctp_find_stream_reset(%struct.sctp_tcb*, i64, %struct.sctp_tmit_chunk**) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_reset_out_streams(%struct.sctp_tcb*, i64, i64*) #1

declare dso_local i32 @sctp_ulp_notify(i32, %struct.sctp_tcb*, i64, i64*, i32) #1

declare dso_local i32 @sctp_reset_clear_pending(%struct.sctp_tcb*, i64, i64*) #1

declare dso_local i32 @sctp_notify_stream_reset_add(%struct.sctp_tcb*, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i8*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @sctp_handle_forward_tsn(%struct.sctp_tcb*, %struct.sctp_forward_tsn_chunk*, i32*, i32*, i32) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_log_map(i32, i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sctp_reset_in_stream(%struct.sctp_tcb*, i32, i64*) #1

declare dso_local i32 @sctp_notify_stream_reset_tsn(%struct.sctp_tcb*, i8*, i8*, i32) #1

declare dso_local i32 @sctp_clean_up_stream_reset(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_send_stream_reset_out_if_possible(%struct.sctp_tcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
