; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunkhdr = type { i32, i32 }
%struct.sctp_tcb = type { i32, %struct.sctp_association }
%struct.sctp_association = type { i32, i32, i32, i32 }
%struct.sctp_nets = type { i32 }
%struct.sctp_error_cause = type { i32, i32 }
%struct.sctp_error_stale_cookie = type { i32 }
%struct.sctp_error_unrecognized_chunk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_paramhdr = type { i32 }

@SCTP_DEBUG_INPUT1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Bogus length in cause - bytes left: %u cause length: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Software error we got a %u back? We have a bug :/ (or do they?)\0A\00", align 1
@SCTP_DEBUG_INPUT2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Received Colliding state abort flags: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Received missing state abort flags: %x\0A\00", align 1
@SCTP_STATE_COOKIE_ECHOED = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@SCTP_NORMAL_PROC = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_INPUT = common dso_local global i64 0, align 8
@SCTP_LOC_12 = common dso_local global i64 0, align 8
@SCTP_STATE_COOKIE_WAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"Peer sends ASCONF errors in a error cause with code %u.\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"sctp_handle_error: unknown code 0x%x\0A\00", align 1
@SCTP_NOTIFY_REMOTE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_chunkhdr*, %struct.sctp_tcb*, %struct.sctp_nets*, i32)* @sctp_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_handle_error(%struct.sctp_chunkhdr* %0, %struct.sctp_tcb* %1, %struct.sctp_nets* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_chunkhdr*, align 8
  %7 = alloca %struct.sctp_tcb*, align 8
  %8 = alloca %struct.sctp_nets*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_error_cause*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sctp_error_stale_cookie*, align 8
  %18 = alloca %struct.sctp_error_unrecognized_chunk*, align 8
  %19 = alloca %struct.sctp_paramhdr*, align 8
  store %struct.sctp_chunkhdr* %0, %struct.sctp_chunkhdr** %6, align 8
  store %struct.sctp_tcb* %1, %struct.sctp_tcb** %7, align 8
  store %struct.sctp_nets* %2, %struct.sctp_nets** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %21 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %20, i32 0, i32 1
  store %struct.sctp_association* %21, %struct.sctp_association** %11, align 8
  %22 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %6, align 8
  %23 = ptrtoint %struct.sctp_chunkhdr* %22 to i64
  %24 = add i64 %23, 8
  %25 = inttoptr i64 %24 to %struct.sctp_error_cause*
  store %struct.sctp_error_cause* %25, %struct.sctp_error_cause** %10, align 8
  %26 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %6, align 8
  %27 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntohs(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %33, %4
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp uge i64 %37, 8
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  br label %45

44:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %44, %39
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %231, %45
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp uge i64 %48, 8
  br i1 %49, label %50, label %238

50:                                               ; preds = %46
  %51 = load %struct.sctp_error_cause*, %struct.sctp_error_cause** %10, align 8
  %52 = getelementptr inbounds %struct.sctp_error_cause, %struct.sctp_error_cause* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohs(i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load %struct.sctp_error_cause*, %struct.sctp_error_cause** %10, align 8
  %56 = getelementptr inbounds %struct.sctp_error_cause, %struct.sctp_error_cause* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ntohs(i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %16, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62, %50
  %66 = load i32, i32* @SCTP_DEBUG_INPUT1, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i32 (i32, i8*, i32, ...) @SCTPDBG(i32 %66, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  store i32 0, i32* %5, align 4
  br label %245

70:                                               ; preds = %62
  %71 = load i32, i32* %14, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i32, i32* %15, align 4
  switch i32 %76, label %216 [
    i32 138, label %77
    i32 137, label %77
    i32 139, label %77
    i32 134, label %77
    i32 136, label %81
    i32 135, label %92
    i32 131, label %104
    i32 128, label %179
    i32 130, label %180
    i32 129, label %195
    i32 142, label %210
    i32 141, label %211
    i32 132, label %211
    i32 140, label %211
    i32 133, label %215
  ]

77:                                               ; preds = %75, %75, %75, %75
  %78 = load i32, i32* @SCTP_DEBUG_INPUT1, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 (i32, i8*, i32, ...) @SCTPDBG(i32 %78, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %220

81:                                               ; preds = %75
  %82 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %83 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %6, align 8
  %84 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, i32, ...) @SCTPDBG(i32 %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %88 = call i32 @sctp_handle_nat_colliding_state(%struct.sctp_tcb* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %245

91:                                               ; preds = %81
  br label %220

92:                                               ; preds = %75
  %93 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %94 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %6, align 8
  %95 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, i32, ...) @SCTPDBG(i32 %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %99 = load %struct.sctp_nets*, %struct.sctp_nets** %8, align 8
  %100 = call i32 @sctp_handle_nat_missing_state(%struct.sctp_tcb* %98, %struct.sctp_nets* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %245

103:                                              ; preds = %92
  br label %220

104:                                              ; preds = %75
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp uge i64 %106, 4
  br i1 %107, label %108, label %178

108:                                              ; preds = %104
  %109 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %110 = call i32 @SCTP_GET_STATE(%struct.sctp_tcb* %109)
  %111 = load i32, i32* @SCTP_STATE_COOKIE_ECHOED, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %178

113:                                              ; preds = %108
  %114 = load %struct.sctp_error_cause*, %struct.sctp_error_cause** %10, align 8
  %115 = bitcast %struct.sctp_error_cause* %114 to %struct.sctp_error_stale_cookie*
  store %struct.sctp_error_stale_cookie* %115, %struct.sctp_error_stale_cookie** %17, align 8
  %116 = load %struct.sctp_error_stale_cookie*, %struct.sctp_error_stale_cookie** %17, align 8
  %117 = getelementptr inbounds %struct.sctp_error_stale_cookie, %struct.sctp_error_stale_cookie* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ntohl(i32 %118)
  %120 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %121 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %123 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @UINT32_MAX, align 4
  %126 = sdiv i32 %125, 2
  %127 = icmp sle i32 %124, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %113
  %129 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %130 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %131, 2
  store i32 %132, i32* %130, align 4
  br label %137

133:                                              ; preds = %113
  %134 = load i32, i32* @UINT32_MAX, align 4
  %135 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %136 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %139 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %143 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %146 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %144, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %137
  %150 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %151 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %152 = call i32 @sctp_abort_notification(%struct.sctp_tcb* %150, i32 0, i32 0, i32* null, i32 %151)
  %153 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %154 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %157 = load i32, i32* @SCTP_NORMAL_PROC, align 4
  %158 = load i64, i64* @SCTP_FROM_SCTP_INPUT, align 8
  %159 = load i64, i64* @SCTP_LOC_12, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @sctp_free_assoc(i32 %155, %struct.sctp_tcb* %156, i32 %157, i64 %160)
  store i32 -1, i32* %5, align 4
  br label %245

162:                                              ; preds = %137
  %163 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %164 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %165 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %164, i32 0, i32 1
  %166 = call i32 @sctp_toss_old_cookies(%struct.sctp_tcb* %163, %struct.sctp_association* %165)
  %167 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %168 = load i32, i32* @SCTP_STATE_COOKIE_WAIT, align 4
  %169 = call i32 @SCTP_SET_STATE(%struct.sctp_tcb* %167, i32 %168)
  %170 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %171 = call i32 @sctp_stop_all_cookie_timers(%struct.sctp_tcb* %170)
  %172 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %173 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %176 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %177 = call i32 @sctp_send_initiate(i32 %174, %struct.sctp_tcb* %175, i32 %176)
  br label %178

178:                                              ; preds = %162, %108, %104
  br label %220

179:                                              ; preds = %75
  br label %220

180:                                              ; preds = %75
  %181 = load i32, i32* %16, align 4
  %182 = sext i32 %181 to i64
  %183 = icmp uge i64 %182, 4
  br i1 %183, label %184, label %194

184:                                              ; preds = %180
  %185 = load %struct.sctp_error_cause*, %struct.sctp_error_cause** %10, align 8
  %186 = bitcast %struct.sctp_error_cause* %185 to %struct.sctp_error_unrecognized_chunk*
  store %struct.sctp_error_unrecognized_chunk* %186, %struct.sctp_error_unrecognized_chunk** %18, align 8
  %187 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %188 = load %struct.sctp_error_unrecognized_chunk*, %struct.sctp_error_unrecognized_chunk** %18, align 8
  %189 = getelementptr inbounds %struct.sctp_error_unrecognized_chunk, %struct.sctp_error_unrecognized_chunk* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.sctp_nets*, %struct.sctp_nets** %8, align 8
  %193 = call i32 @sctp_process_unrecog_chunk(%struct.sctp_tcb* %187, i32 %191, %struct.sctp_nets* %192)
  br label %194

194:                                              ; preds = %184, %180
  br label %220

195:                                              ; preds = %75
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = icmp uge i64 %197, 12
  br i1 %198, label %199, label %209

199:                                              ; preds = %195
  %200 = load %struct.sctp_error_cause*, %struct.sctp_error_cause** %10, align 8
  %201 = getelementptr inbounds %struct.sctp_error_cause, %struct.sctp_error_cause* %200, i64 1
  %202 = bitcast %struct.sctp_error_cause* %201 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %202, %struct.sctp_paramhdr** %19, align 8
  %203 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %204 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %19, align 8
  %205 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @ntohs(i32 %206)
  %208 = call i32 @sctp_process_unrecog_param(%struct.sctp_tcb* %203, i32 %207)
  br label %209

209:                                              ; preds = %199, %195
  br label %220

210:                                              ; preds = %75
  br label %220

211:                                              ; preds = %75, %75, %75
  %212 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %213 = load i32, i32* %15, align 4
  %214 = call i32 (i32, i8*, i32, ...) @SCTPDBG(i32 %212, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %213)
  br label %220

215:                                              ; preds = %75
  br label %220

216:                                              ; preds = %75
  %217 = load i32, i32* @SCTP_DEBUG_INPUT1, align 4
  %218 = load i32, i32* %15, align 4
  %219 = call i32 (i32, i8*, i32, ...) @SCTPDBG(i32 %217, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %216, %215, %211, %210, %209, %194, %179, %178, %103, %91, %77
  %221 = load i32, i32* %16, align 4
  %222 = call i32 @SCTP_SIZE32(i32 %221)
  store i32 %222, i32* %13, align 4
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* %13, align 4
  %225 = icmp sge i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* %12, align 4
  %229 = sub nsw i32 %228, %227
  store i32 %229, i32* %12, align 4
  br label %231

230:                                              ; preds = %220
  store i32 0, i32* %12, align 4
  br label %231

231:                                              ; preds = %230, %226
  %232 = load %struct.sctp_error_cause*, %struct.sctp_error_cause** %10, align 8
  %233 = ptrtoint %struct.sctp_error_cause* %232 to i64
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %233, %235
  %237 = inttoptr i64 %236 to %struct.sctp_error_cause*
  store %struct.sctp_error_cause* %237, %struct.sctp_error_cause** %10, align 8
  br label %46

238:                                              ; preds = %46
  %239 = load i32, i32* @SCTP_NOTIFY_REMOTE_ERROR, align 4
  %240 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %241 = load i32, i32* %14, align 4
  %242 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %6, align 8
  %243 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %244 = call i32 @sctp_ulp_notify(i32 %239, %struct.sctp_tcb* %240, i32 %241, %struct.sctp_chunkhdr* %242, i32 %243)
  store i32 0, i32* %5, align 4
  br label %245

245:                                              ; preds = %238, %149, %102, %90, %65
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @SCTPDBG(i32, i8*, i32, ...) #1

declare dso_local i32 @sctp_handle_nat_colliding_state(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_handle_nat_missing_state(%struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sctp_abort_notification(%struct.sctp_tcb*, i32, i32, i32*, i32) #1

declare dso_local i32 @sctp_free_assoc(i32, %struct.sctp_tcb*, i32, i64) #1

declare dso_local i32 @sctp_toss_old_cookies(%struct.sctp_tcb*, %struct.sctp_association*) #1

declare dso_local i32 @SCTP_SET_STATE(%struct.sctp_tcb*, i32) #1

declare dso_local i32 @sctp_stop_all_cookie_timers(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_send_initiate(i32, %struct.sctp_tcb*, i32) #1

declare dso_local i32 @sctp_process_unrecog_chunk(%struct.sctp_tcb*, i32, %struct.sctp_nets*) #1

declare dso_local i32 @sctp_process_unrecog_param(%struct.sctp_tcb*, i32) #1

declare dso_local i32 @SCTP_SIZE32(i32) #1

declare dso_local i32 @sctp_ulp_notify(i32, %struct.sctp_tcb*, i32, %struct.sctp_chunkhdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
