; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_str_reset_request_tsn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_str_reset_request_tsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.sctp_association }
%struct.sctp_association = type { i32, i32, i64*, i32*, i32*, i64, i32, i32, i32, i64, i64, i32, i64, i64 }
%struct.sctp_tmit_chunk = type { i32 }
%struct.sctp_stream_reset_tsn_request = type { i32 }
%struct.sctp_forward_tsn_chunk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@SCTP_ENABLE_CHANGE_ASSOC_REQ = common dso_local global i32 0, align 4
@SCTP_STREAM_RESET_RESULT_DENIED = common dso_local global i32 0, align 4
@SCTP_FORWARD_CUM_TSN = common dso_local global i32 0, align 4
@SCTP_STREAM_RESET_TSN_DELTA = common dso_local global i64 0, align 8
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_MAP_LOGGING_ENABLE = common dso_local global i32 0, align 4
@SCTP_MAP_SLIDE_RESULT = common dso_local global i32 0, align 4
@SCTP_STREAM_RESET_RESULT_PERFORMED = common dso_local global i32 0, align 4
@SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_tcb*, %struct.sctp_tmit_chunk*, %struct.sctp_stream_reset_tsn_request*)* @sctp_handle_str_reset_request_tsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_handle_str_reset_request_tsn(%struct.sctp_tcb* %0, %struct.sctp_tmit_chunk* %1, %struct.sctp_stream_reset_tsn_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_tcb*, align 8
  %6 = alloca %struct.sctp_tmit_chunk*, align 8
  %7 = alloca %struct.sctp_stream_reset_tsn_request*, align 8
  %8 = alloca %struct.sctp_forward_tsn_chunk, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %5, align 8
  store %struct.sctp_tmit_chunk* %1, %struct.sctp_tmit_chunk** %6, align 8
  store %struct.sctp_stream_reset_tsn_request* %2, %struct.sctp_stream_reset_tsn_request** %7, align 8
  %12 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %13 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %12, i32 0, i32 0
  store %struct.sctp_association* %13, %struct.sctp_association** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.sctp_stream_reset_tsn_request*, %struct.sctp_stream_reset_tsn_request** %7, align 8
  %15 = getelementptr inbounds %struct.sctp_stream_reset_tsn_request, %struct.sctp_stream_reset_tsn_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohl(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %193

23:                                               ; preds = %3
  %24 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %25 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %31 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %35 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SCTP_ENABLE_CHANGE_ASSOC_REQ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* @SCTP_STREAM_RESET_RESULT_DENIED, align 4
  %42 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %43 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  br label %170

46:                                               ; preds = %23
  %47 = call i32 @htons(i32 24)
  %48 = getelementptr inbounds %struct.sctp_forward_tsn_chunk, %struct.sctp_forward_tsn_chunk* %8, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @SCTP_FORWARD_CUM_TSN, align 4
  %51 = getelementptr inbounds %struct.sctp_forward_tsn_chunk, %struct.sctp_forward_tsn_chunk* %8, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.sctp_forward_tsn_chunk, %struct.sctp_forward_tsn_chunk* %8, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %56 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %56, i32 0, i32 9
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @htonl(i64 %59)
  %61 = getelementptr inbounds %struct.sctp_forward_tsn_chunk, %struct.sctp_forward_tsn_chunk* %8, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %63 = call i32 @sctp_handle_forward_tsn(%struct.sctp_tcb* %62, %struct.sctp_forward_tsn_chunk* %8, i32* %10, i32* null, i32 0)
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %253

67:                                               ; preds = %46
  %68 = load i64, i64* @SCTP_STREAM_RESET_TSN_DELTA, align 8
  %69 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %70 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %69, i32 0, i32 9
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load i32, i32* @sctp_logging_level, align 4
  %74 = call i32 @SCTP_BASE_SYSCTL(i32 %73)
  %75 = load i32, i32* @SCTP_MAP_LOGGING_ENABLE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  %79 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %80 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %79, i32 0, i32 9
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @SCTP_MAP_SLIDE_RESULT, align 4
  %83 = call i32 @sctp_log_map(i32 0, i32 10, i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %67
  %85 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %86 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %85, i32 0, i32 9
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %89 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %88, i32 0, i32 12
  store i64 %87, i64* %89, align 8
  %90 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %91 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %90, i32 0, i32 13
  store i64 %87, i64* %91, align 8
  %92 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %93 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %92, i32 0, i32 9
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  %96 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %97 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %96, i32 0, i32 5
  store i64 %95, i64* %97, align 8
  %98 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %99 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %98, i32 0, i32 11
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %102 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memset(i32 %100, i32 0, i32 %103)
  %105 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %106 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %105, i32 0, i32 9
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %109 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %108, i32 0, i32 10
  store i64 %107, i64* %109, align 8
  %110 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %111 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %114 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @memset(i32 %112, i32 0, i32 %115)
  %117 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %118 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %117, i32 0, i32 6
  %119 = call i32 @atomic_add_int(i32* %118, i32 1)
  %120 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %121 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %126 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 %124, i32* %128, align 4
  %129 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %130 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %133 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %131, i32* %135, align 4
  %136 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %137 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %136, i32 0, i32 2
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %142 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %141, i32 0, i32 2
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 1
  store i64 %140, i64* %144, align 8
  %145 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %146 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %149 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %148, i32 0, i32 2
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  store i64 %147, i64* %151, align 8
  %152 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %153 = call i32 @sctp_reset_out_streams(%struct.sctp_tcb* %152, i32 0, i32* null)
  %154 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %155 = call i32 @sctp_reset_in_stream(%struct.sctp_tcb* %154, i32 0, i32* null)
  %156 = load i32, i32* @SCTP_STREAM_RESET_RESULT_PERFORMED, align 4
  %157 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %158 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %156, i32* %160, align 4
  %161 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %162 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %163 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %166 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 1
  %169 = call i32 @sctp_notify_stream_reset_tsn(%struct.sctp_tcb* %161, i32 %164, i64 %168, i32 0)
  br label %170

170:                                              ; preds = %84, %40
  %171 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %174 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %179 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %184 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %183, i32 0, i32 2
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @sctp_add_stream_reset_result_tsn(%struct.sctp_tmit_chunk* %171, i32 %172, i32 %177, i32 %182, i64 %187)
  %189 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %190 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  br label %252

193:                                              ; preds = %3
  %194 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %195 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  %198 = load i32, i32* %11, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %219

200:                                              ; preds = %193
  %201 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %204 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %209 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %214 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %213, i32 0, i32 2
  %215 = load i64*, i64** %214, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 0
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @sctp_add_stream_reset_result_tsn(%struct.sctp_tmit_chunk* %201, i32 %202, i32 %207, i32 %212, i64 %217)
  br label %251

219:                                              ; preds = %193
  %220 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %221 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sub nsw i32 %222, 2
  %224 = load i32, i32* %11, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %245

226:                                              ; preds = %219
  %227 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %228 = load i32, i32* %11, align 4
  %229 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %230 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %235 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %234, i32 0, i32 3
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %240 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %239, i32 0, i32 2
  %241 = load i64*, i64** %240, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 1
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @sctp_add_stream_reset_result_tsn(%struct.sctp_tmit_chunk* %227, i32 %228, i32 %233, i32 %238, i64 %243)
  br label %250

245:                                              ; preds = %219
  %246 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* @SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO, align 4
  %249 = call i32 @sctp_add_stream_reset_result(%struct.sctp_tmit_chunk* %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %245, %226
  br label %251

251:                                              ; preds = %250, %200
  br label %252

252:                                              ; preds = %251, %170
  store i32 0, i32* %4, align 4
  br label %253

253:                                              ; preds = %252, %66
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @sctp_handle_forward_tsn(%struct.sctp_tcb*, %struct.sctp_forward_tsn_chunk*, i32*, i32*, i32) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_log_map(i32, i32, i64, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @sctp_reset_out_streams(%struct.sctp_tcb*, i32, i32*) #1

declare dso_local i32 @sctp_reset_in_stream(%struct.sctp_tcb*, i32, i32*) #1

declare dso_local i32 @sctp_notify_stream_reset_tsn(%struct.sctp_tcb*, i32, i64, i32) #1

declare dso_local i32 @sctp_add_stream_reset_result_tsn(%struct.sctp_tmit_chunk*, i32, i32, i32, i64) #1

declare dso_local i32 @sctp_add_stream_reset_result(%struct.sctp_tmit_chunk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
