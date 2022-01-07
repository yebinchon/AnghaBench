; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_wait_rdmardcompl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_wait_rdmardcompl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i64, %struct.socket*, i64, %struct.tx_srcavail_state* }
%struct.socket = type { i32 }
%struct.tx_srcavail_state = type { i32, i64, i64 }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sleep till RdmaRdCompl. timeo = %ld.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Going to sleep\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@TX_SA_TIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@zcopy_tx_timeout = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"acked bytes > sent bytes\0A\00", align 1
@TX_SA_ERROR = common dso_local global i32 0, align 4
@TX_SA_SENDSM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Aborting SrcAvail sending\00", align 1
@zcopy_tx_aborted = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"signalled\00", align 1
@TX_SA_INTRRUPTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Crossing SrcAvail - aborting this\0A\00", align 1
@TX_SA_CROSS_SEND = common dso_local global i32 0, align 4
@zcopy_cross_send = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"woke up sleepers\0A\00", align 1
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [58 x i8] c"Finished waiting - RdmaRdCompl: %d/%d bytes, flags: 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"QP destroyed while waiting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdp_sock*, i64*, i32)* @sdp_wait_rdmardcompl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_wait_rdmardcompl(%struct.sdp_sock* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdp_sock*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tx_srcavail_state*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %14 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %13, i32 0, i32 1
  %15 = load %struct.socket*, %struct.socket** %14, align 8
  store %struct.socket* %15, %struct.socket** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %19 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %18, i32 0, i32 3
  %20 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %19, align 8
  store %struct.tx_srcavail_state* %20, %struct.tx_srcavail_state** %12, align 8
  %21 = load i32, i32* @wait, align 4
  %22 = call i32 @DEFINE_WAIT(i32 %21)
  %23 = load %struct.socket*, %struct.socket** %8, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.socket*, %struct.socket** %8, align 8
  %28 = call i32 @sdp_prf1(%struct.socket* %27, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %196, %3
  %30 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %31 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %199

34:                                               ; preds = %29
  %35 = load %struct.socket*, %struct.socket** %8, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %39 = call i32 @prepare_to_wait(i32 %37, i32* @wait, i32 %38)
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %34
  %48 = load i32, i32* @ETIME, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @TX_SA_TIMEDOUT, align 4
  %51 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %52 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.socket*, %struct.socket** %8, align 8
  %56 = call i32 @sdp_prf1(%struct.socket* %55, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @zcopy_tx_timeout, align 4
  %58 = call i32 @SDPSTATS_COUNTER_INC(i32 %57)
  br label %199

59:                                               ; preds = %34
  %60 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %61 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %64 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  %70 = load %struct.socket*, %struct.socket** %8, align 8
  %71 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @TX_SA_ERROR, align 4
  %73 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %74 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %199

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %80 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @TX_SA_SENDSM, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.socket*, %struct.socket** %8, align 8
  %87 = call i32 @sdp_prf1(%struct.socket* %86, i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i32, i32* @zcopy_tx_aborted, align 4
  %89 = call i32 @SDPSTATS_COUNTER_INC(i32 %88)
  %90 = load i32, i32* @EAGAIN, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %9, align 4
  br label %199

92:                                               ; preds = %78
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %135, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @current, align 4
  %97 = call i64 @signal_pending(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load i32, i32* @EINTR, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %9, align 4
  %102 = load %struct.socket*, %struct.socket** %8, align 8
  %103 = call i32 @sdp_prf1(%struct.socket* %102, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* @TX_SA_INTRRUPTED, align 4
  %105 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %106 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %199

109:                                              ; preds = %95
  %110 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %111 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %109
  %115 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %116 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %119 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %117, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %114
  %123 = load %struct.socket*, %struct.socket** %8, align 8
  %124 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %125 = load i32, i32* @TX_SA_CROSS_SEND, align 4
  %126 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %127 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* @zcopy_cross_send, align 4
  %131 = call i32 @SDPSTATS_COUNTER_INC(i32 %130)
  %132 = load i32, i32* @ETIME, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %9, align 4
  br label %199

134:                                              ; preds = %114, %109
  br label %135

135:                                              ; preds = %134, %92
  %136 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %137 = call i32 @posts_handler_put(%struct.sdp_sock* %136)
  %138 = load %struct.socket*, %struct.socket** %8, align 8
  %139 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %140 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %135
  %144 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %145 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %143
  %149 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %150 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %153 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp slt i64 %151, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load i64, i64* %10, align 8
  %158 = icmp ne i64 %157, 0
  br label %159

159:                                              ; preds = %156, %148, %143, %135
  %160 = phi i1 [ false, %148 ], [ false, %143 ], [ false, %135 ], [ %158, %156 ]
  %161 = zext i1 %160 to i32
  %162 = call i32 @sk_wait_event(%struct.socket* %138, i64* %11, i32 %161)
  %163 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %164 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %163, i32 0, i32 1
  %165 = load %struct.socket*, %struct.socket** %164, align 8
  %166 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %167 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %168 = call i32 @posts_handler_get(%struct.sdp_sock* %167)
  %169 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %170 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %173 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %171, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %159
  br label %199

177:                                              ; preds = %159
  %178 = load i64, i64* %10, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %177
  %181 = load i64, i64* %11, align 8
  %182 = load i64, i64* %10, align 8
  %183 = sub nsw i64 %182, %181
  store i64 %183, i64* %10, align 8
  %184 = load i64*, i64** %6, align 8
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %11, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %180
  %190 = load i64, i64* %10, align 8
  %191 = load i64, i64* %11, align 8
  %192 = sub nsw i64 %191, %190
  store i64 %192, i64* %11, align 8
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  store i64 0, i64* %11, align 8
  br label %195

195:                                              ; preds = %194, %189, %180
  store i64 0, i64* %10, align 8
  br label %196

196:                                              ; preds = %195, %177
  %197 = load i64, i64* %11, align 8
  %198 = load i64*, i64** %6, align 8
  store i64 %197, i64* %198, align 8
  br label %29

199:                                              ; preds = %176, %122, %99, %85, %67, %47, %29
  %200 = load %struct.socket*, %struct.socket** %8, align 8
  %201 = getelementptr inbounds %struct.socket, %struct.socket* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @finish_wait(i32 %202, i32* @wait)
  %204 = load %struct.socket*, %struct.socket** %8, align 8
  %205 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %206 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %209 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.tx_srcavail_state*, %struct.tx_srcavail_state** %12, align 8
  %212 = getelementptr inbounds %struct.tx_srcavail_state, %struct.tx_srcavail_state* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (%struct.socket*, i8*, ...) @sdp_dbg_data(%struct.socket* %204, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i64 %207, i64 %210, i32 %213)
  %215 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %216 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %199
  %220 = load %struct.socket*, %struct.socket** %8, align 8
  %221 = call i32 @sdp_dbg(%struct.socket* %220, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %4, align 4
  br label %226

224:                                              ; preds = %199
  %225 = load i32, i32* %9, align 4
  store i32 %225, i32* %4, align 4
  br label %226

226:                                              ; preds = %224, %219
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @sdp_dbg_data(%struct.socket*, i8*, ...) #1

declare dso_local i32 @sdp_prf1(%struct.socket*, i32*, i8*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @SDPSTATS_COUNTER_INC(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @posts_handler_put(%struct.sdp_sock*) #1

declare dso_local i32 @sk_wait_event(%struct.socket*, i64*, i32) #1

declare dso_local i32 @posts_handler_get(%struct.sdp_sock*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @sdp_dbg(%struct.socket*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
