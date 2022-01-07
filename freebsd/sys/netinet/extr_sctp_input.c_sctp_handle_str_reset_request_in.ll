; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_str_reset_request_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_str_reset_request_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.sctp_association }
%struct.sctp_association = type { i32, i32, i64, i64, i8**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sctp_tmit_chunk = type { i32 }
%struct.sctp_stream_reset_in_request = type { i64*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@SCTP_ENABLE_RESET_STREAM_REQ = common dso_local global i32 0, align 4
@SCTP_STREAM_RESET_RESULT_DENIED = common dso_local global i8* null, align 8
@SCTP_STREAM_OPEN = common dso_local global i64 0, align 8
@SCTP_STREAM_RESET_PENDING = common dso_local global i8* null, align 8
@SCTP_STREAM_RESET_RESULT_PERFORMED = common dso_local global i8* null, align 8
@SCTP_STREAM_RESET_RESULT_ERR_IN_PROGRESS = common dso_local global i8* null, align 8
@SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO = common dso_local global i8* null, align 8
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_tmit_chunk*, %struct.sctp_stream_reset_in_request*, i32)* @sctp_handle_str_reset_request_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_handle_str_reset_request_in(%struct.sctp_tcb* %0, %struct.sctp_tmit_chunk* %1, %struct.sctp_stream_reset_in_request* %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_tcb*, align 8
  %6 = alloca %struct.sctp_tmit_chunk*, align 8
  %7 = alloca %struct.sctp_stream_reset_in_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.sctp_association*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %5, align 8
  store %struct.sctp_tmit_chunk* %1, %struct.sctp_tmit_chunk** %6, align 8
  store %struct.sctp_stream_reset_in_request* %2, %struct.sctp_stream_reset_in_request** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %16 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %15, i32 0, i32 0
  store %struct.sctp_association* %16, %struct.sctp_association** %14, align 8
  %17 = load %struct.sctp_stream_reset_in_request*, %struct.sctp_stream_reset_in_request** %7, align 8
  %18 = getelementptr inbounds %struct.sctp_stream_reset_in_request, %struct.sctp_stream_reset_in_request* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ntohl(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %223

26:                                               ; preds = %4
  %27 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %28 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %27, i32 0, i32 4
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %33 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %32, i32 0, i32 4
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* %31, i8** %35, align 8
  %36 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %37 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SCTP_ENABLE_RESET_STREAM_REQ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %26
  %43 = load i8*, i8** @SCTP_STREAM_RESET_RESULT_DENIED, align 8
  %44 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %45 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %44, i32 0, i32 4
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* %43, i8** %47, align 8
  br label %209

48:                                               ; preds = %26
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i8*, i8** @SCTP_STREAM_RESET_RESULT_DENIED, align 8
  %53 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %54 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %53, i32 0, i32 4
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  store i8* %52, i8** %56, align 8
  br label %208

57:                                               ; preds = %48
  %58 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %59 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %201

63:                                               ; preds = %57
  %64 = load %struct.sctp_stream_reset_in_request*, %struct.sctp_stream_reset_in_request** %7, align 8
  %65 = getelementptr inbounds %struct.sctp_stream_reset_in_request, %struct.sctp_stream_reset_in_request* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @ntohs(i64 %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %71, 24
  %73 = udiv i64 %72, 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %158

77:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %112, %77
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %78
  %83 = load %struct.sctp_stream_reset_in_request*, %struct.sctp_stream_reset_in_request** %7, align 8
  %84 = getelementptr inbounds %struct.sctp_stream_reset_in_request, %struct.sctp_stream_reset_in_request* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @ntohs(i64 %89)
  %91 = ptrtoint i8* %90 to i64
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %94 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp uge i64 %92, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %82
  %99 = load i8*, i8** @SCTP_STREAM_RESET_RESULT_DENIED, align 8
  %100 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %101 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %100, i32 0, i32 4
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  store i8* %99, i8** %103, align 8
  br label %210

104:                                              ; preds = %82
  %105 = load i64, i64* %13, align 8
  %106 = load %struct.sctp_stream_reset_in_request*, %struct.sctp_stream_reset_in_request** %7, align 8
  %107 = getelementptr inbounds %struct.sctp_stream_reset_in_request, %struct.sctp_stream_reset_in_request* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  store i64 %105, i64* %111, align 8
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %78

115:                                              ; preds = %78
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %154, %115
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %157

120:                                              ; preds = %116
  %121 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %122 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %122, i32 0, i32 5
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load %struct.sctp_stream_reset_in_request*, %struct.sctp_stream_reset_in_request** %7, align 8
  %126 = getelementptr inbounds %struct.sctp_stream_reset_in_request, %struct.sctp_stream_reset_in_request* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SCTP_STREAM_OPEN, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %120
  %138 = load i8*, i8** @SCTP_STREAM_RESET_PENDING, align 8
  %139 = ptrtoint i8* %138 to i64
  %140 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %141 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %141, i32 0, i32 5
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load %struct.sctp_stream_reset_in_request*, %struct.sctp_stream_reset_in_request** %7, align 8
  %145 = getelementptr inbounds %struct.sctp_stream_reset_in_request, %struct.sctp_stream_reset_in_request* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i64 %139, i64* %152, align 8
  br label %153

153:                                              ; preds = %137, %120
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %116

157:                                              ; preds = %116
  br label %195

158:                                              ; preds = %63
  store i32 0, i32* %11, align 4
  br label %159

159:                                              ; preds = %191, %158
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %163 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ult i64 %161, %165
  br i1 %166, label %167, label %194

167:                                              ; preds = %159
  %168 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %169 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %169, i32 0, i32 5
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @SCTP_STREAM_OPEN, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %167
  %180 = load i8*, i8** @SCTP_STREAM_RESET_PENDING, align 8
  %181 = ptrtoint i8* %180 to i64
  %182 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %183 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %183, i32 0, i32 5
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  store i64 %181, i64* %189, align 8
  br label %190

190:                                              ; preds = %179, %167
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  br label %159

194:                                              ; preds = %159
  br label %195

195:                                              ; preds = %194, %157
  %196 = load i8*, i8** @SCTP_STREAM_RESET_RESULT_PERFORMED, align 8
  %197 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %198 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %197, i32 0, i32 4
  %199 = load i8**, i8*** %198, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 0
  store i8* %196, i8** %200, align 8
  br label %207

201:                                              ; preds = %57
  %202 = load i8*, i8** @SCTP_STREAM_RESET_RESULT_ERR_IN_PROGRESS, align 8
  %203 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %204 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %203, i32 0, i32 4
  %205 = load i8**, i8*** %204, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 0
  store i8* %202, i8** %206, align 8
  br label %207

207:                                              ; preds = %201, %195
  br label %208

208:                                              ; preds = %207, %51
  br label %209

209:                                              ; preds = %208, %42
  br label %210

210:                                              ; preds = %209, %98
  %211 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %212 = load i32, i32* %9, align 4
  %213 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %214 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %213, i32 0, i32 4
  %215 = load i8**, i8*** %214, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @sctp_add_stream_reset_result(%struct.sctp_tmit_chunk* %211, i32 %212, i8* %217)
  %219 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %220 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 8
  br label %262

223:                                              ; preds = %4
  %224 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %225 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sub nsw i32 %226, 1
  %228 = load i32, i32* %9, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %239

230:                                              ; preds = %223
  %231 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %234 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %233, i32 0, i32 4
  %235 = load i8**, i8*** %234, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 0
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @sctp_add_stream_reset_result(%struct.sctp_tmit_chunk* %231, i32 %232, i8* %237)
  br label %261

239:                                              ; preds = %223
  %240 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %241 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sub nsw i32 %242, 2
  %244 = load i32, i32* %9, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %255

246:                                              ; preds = %239
  %247 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %248 = load i32, i32* %9, align 4
  %249 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %250 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %249, i32 0, i32 4
  %251 = load i8**, i8*** %250, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 1
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @sctp_add_stream_reset_result(%struct.sctp_tmit_chunk* %247, i32 %248, i8* %253)
  br label %260

255:                                              ; preds = %239
  %256 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %257 = load i32, i32* %9, align 4
  %258 = load i8*, i8** @SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO, align 8
  %259 = call i32 @sctp_add_stream_reset_result(%struct.sctp_tmit_chunk* %256, i32 %257, i8* %258)
  br label %260

260:                                              ; preds = %255, %246
  br label %261

261:                                              ; preds = %260, %230
  br label %262

262:                                              ; preds = %261, %210
  %263 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %264 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %265 = call i32 @sctp_send_stream_reset_out_if_possible(%struct.sctp_tcb* %263, i32 %264)
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i8* @ntohs(i64) #1

declare dso_local i32 @sctp_add_stream_reset_result(%struct.sctp_tmit_chunk*, i32, i8*) #1

declare dso_local i32 @sctp_send_stream_reset_out_if_possible(%struct.sctp_tcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
