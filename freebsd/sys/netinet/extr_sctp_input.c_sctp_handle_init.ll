; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sctphdr = type { i32 }
%struct.sctp_init_chunk = type { %struct.TYPE_2__, %struct.sctp_init }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_init = type { i64, i64, i64, i32 }
%struct.sctp_inpcb = type { i32, i32 }
%struct.sctp_tcb = type { i32 }
%struct.sctp_nets = type { i32 }

@SCTP_DEBUG_INPUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"sctp_handle_init: handling INIT tcb:%p\0A\00", align 1
@SCTP_CAUSE_INVALID_PARAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SCTP_MIN_RWND = common dso_local global i64 0, align 8
@sctp_diag_info_code = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Problem with AUTH parameters\00", align 1
@SCTP_PCB_FLAGS_SOCKET_GONE = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_SOCKET_ALLGONE = common dso_local global i32 0, align 4
@sctp_blackhole = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"No listener\00", align 1
@SCTP_STATE_SHUTDOWN_ACK_SENT = common dso_local global i64 0, align 8
@SCTP_DEBUG_INPUT3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"sctp_handle_init: sending SHUTDOWN-ACK\0A\00", align 1
@SCTP_OUTPUT_FROM_CONTROL_PROC = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"sctp_handle_init: sending INIT-ACK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, i32, i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sctphdr*, %struct.sctp_init_chunk*, %struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*, i32*, i32, i32, i32, i32)* @sctp_handle_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_handle_init(%struct.mbuf* %0, i32 %1, i32 %2, %struct.sockaddr* %3, %struct.sockaddr* %4, %struct.sctphdr* %5, %struct.sctp_init_chunk* %6, %struct.sctp_inpcb* %7, %struct.sctp_tcb* %8, %struct.sctp_nets* %9, i32* %10, i32 %11, i32 %12, i32 %13, i32 %14) #0 {
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sockaddr*, align 8
  %20 = alloca %struct.sockaddr*, align 8
  %21 = alloca %struct.sctphdr*, align 8
  %22 = alloca %struct.sctp_init_chunk*, align 8
  %23 = alloca %struct.sctp_inpcb*, align 8
  %24 = alloca %struct.sctp_tcb*, align 8
  %25 = alloca %struct.sctp_nets*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.sctp_init*, align 8
  %32 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %16, align 8
  store i32 %1, i32* %17, align 4
  store i32 %2, i32* %18, align 4
  store %struct.sockaddr* %3, %struct.sockaddr** %19, align 8
  store %struct.sockaddr* %4, %struct.sockaddr** %20, align 8
  store %struct.sctphdr* %5, %struct.sctphdr** %21, align 8
  store %struct.sctp_init_chunk* %6, %struct.sctp_init_chunk** %22, align 8
  store %struct.sctp_inpcb* %7, %struct.sctp_inpcb** %23, align 8
  store %struct.sctp_tcb* %8, %struct.sctp_tcb** %24, align 8
  store %struct.sctp_nets* %9, %struct.sctp_nets** %25, align 8
  store i32* %10, i32** %26, align 8
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i32 %14, i32* %30, align 4
  %33 = load i32, i32* @SCTP_DEBUG_INPUT2, align 4
  %34 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %35 = bitcast %struct.sctp_tcb* %34 to i8*
  %36 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %38 = icmp eq %struct.sctp_tcb* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %15
  %40 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %41 = call i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb* %40)
  br label %42

42:                                               ; preds = %39, %15
  %43 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %22, align 8
  %44 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ntohs(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 40
  br i1 %49, label %50, label %71

50:                                               ; preds = %42
  %51 = load i64, i64* @SCTP_CAUSE_INVALID_PARAM, align 8
  %52 = call %struct.mbuf* @sctp_generate_cause(i64 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mbuf* %52, %struct.mbuf** %32, align 8
  %53 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %54 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.sockaddr*, %struct.sockaddr** %19, align 8
  %58 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %59 = load %struct.sctphdr*, %struct.sctphdr** %21, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  %61 = load i32, i32* %27, align 4
  %62 = load i32, i32* %28, align 4
  %63 = load i32, i32* %29, align 4
  %64 = load i32, i32* %30, align 4
  %65 = call i32 @sctp_abort_association(%struct.sctp_inpcb* %53, %struct.sctp_tcb* %54, %struct.mbuf* %55, i32 %56, %struct.sockaddr* %57, %struct.sockaddr* %58, %struct.sctphdr* %59, %struct.mbuf* %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %67 = icmp ne %struct.sctp_tcb* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %50
  %69 = load i32*, i32** %26, align 8
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %68, %50
  br label %297

71:                                               ; preds = %42
  %72 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %22, align 8
  %73 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %72, i32 0, i32 1
  store %struct.sctp_init* %73, %struct.sctp_init** %31, align 8
  %74 = load %struct.sctp_init*, %struct.sctp_init** %31, align 8
  %75 = getelementptr inbounds %struct.sctp_init, %struct.sctp_init* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %71
  %79 = load i64, i64* @SCTP_CAUSE_INVALID_PARAM, align 8
  %80 = call %struct.mbuf* @sctp_generate_cause(i64 %79, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mbuf* %80, %struct.mbuf** %32, align 8
  %81 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %82 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %83 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.sockaddr*, %struct.sockaddr** %19, align 8
  %86 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %87 = load %struct.sctphdr*, %struct.sctphdr** %21, align 8
  %88 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  %89 = load i32, i32* %27, align 4
  %90 = load i32, i32* %28, align 4
  %91 = load i32, i32* %29, align 4
  %92 = load i32, i32* %30, align 4
  %93 = call i32 @sctp_abort_association(%struct.sctp_inpcb* %81, %struct.sctp_tcb* %82, %struct.mbuf* %83, i32 %84, %struct.sockaddr* %85, %struct.sockaddr* %86, %struct.sctphdr* %87, %struct.mbuf* %88, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %95 = icmp ne %struct.sctp_tcb* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %78
  %97 = load i32*, i32** %26, align 8
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %96, %78
  br label %297

99:                                               ; preds = %71
  %100 = load %struct.sctp_init*, %struct.sctp_init** %31, align 8
  %101 = getelementptr inbounds %struct.sctp_init, %struct.sctp_init* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @ntohl(i32 %102)
  %104 = load i64, i64* @SCTP_MIN_RWND, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %99
  %107 = load i64, i64* @SCTP_CAUSE_INVALID_PARAM, align 8
  %108 = call %struct.mbuf* @sctp_generate_cause(i64 %107, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mbuf* %108, %struct.mbuf** %32, align 8
  %109 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %110 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %111 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %112 = load i32, i32* %17, align 4
  %113 = load %struct.sockaddr*, %struct.sockaddr** %19, align 8
  %114 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %115 = load %struct.sctphdr*, %struct.sctphdr** %21, align 8
  %116 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  %117 = load i32, i32* %27, align 4
  %118 = load i32, i32* %28, align 4
  %119 = load i32, i32* %29, align 4
  %120 = load i32, i32* %30, align 4
  %121 = call i32 @sctp_abort_association(%struct.sctp_inpcb* %109, %struct.sctp_tcb* %110, %struct.mbuf* %111, i32 %112, %struct.sockaddr* %113, %struct.sockaddr* %114, %struct.sctphdr* %115, %struct.mbuf* %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %123 = icmp ne %struct.sctp_tcb* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %106
  %125 = load i32*, i32** %26, align 8
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %124, %106
  br label %297

127:                                              ; preds = %99
  %128 = load %struct.sctp_init*, %struct.sctp_init** %31, align 8
  %129 = getelementptr inbounds %struct.sctp_init, %struct.sctp_init* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %127
  %133 = load i64, i64* @SCTP_CAUSE_INVALID_PARAM, align 8
  %134 = call %struct.mbuf* @sctp_generate_cause(i64 %133, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mbuf* %134, %struct.mbuf** %32, align 8
  %135 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %136 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %137 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %138 = load i32, i32* %17, align 4
  %139 = load %struct.sockaddr*, %struct.sockaddr** %19, align 8
  %140 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %141 = load %struct.sctphdr*, %struct.sctphdr** %21, align 8
  %142 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  %143 = load i32, i32* %27, align 4
  %144 = load i32, i32* %28, align 4
  %145 = load i32, i32* %29, align 4
  %146 = load i32, i32* %30, align 4
  %147 = call i32 @sctp_abort_association(%struct.sctp_inpcb* %135, %struct.sctp_tcb* %136, %struct.mbuf* %137, i32 %138, %struct.sockaddr* %139, %struct.sockaddr* %140, %struct.sctphdr* %141, %struct.mbuf* %142, i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %149 = icmp ne %struct.sctp_tcb* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %132
  %151 = load i32*, i32** %26, align 8
  store i32 1, i32* %151, align 4
  br label %152

152:                                              ; preds = %150, %132
  br label %297

153:                                              ; preds = %127
  %154 = load %struct.sctp_init*, %struct.sctp_init** %31, align 8
  %155 = getelementptr inbounds %struct.sctp_init, %struct.sctp_init* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %153
  %159 = load i64, i64* @SCTP_CAUSE_INVALID_PARAM, align 8
  %160 = call %struct.mbuf* @sctp_generate_cause(i64 %159, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mbuf* %160, %struct.mbuf** %32, align 8
  %161 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %162 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %163 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.sockaddr*, %struct.sockaddr** %19, align 8
  %166 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %167 = load %struct.sctphdr*, %struct.sctphdr** %21, align 8
  %168 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  %169 = load i32, i32* %27, align 4
  %170 = load i32, i32* %28, align 4
  %171 = load i32, i32* %29, align 4
  %172 = load i32, i32* %30, align 4
  %173 = call i32 @sctp_abort_association(%struct.sctp_inpcb* %161, %struct.sctp_tcb* %162, %struct.mbuf* %163, i32 %164, %struct.sockaddr* %165, %struct.sockaddr* %166, %struct.sctphdr* %167, %struct.mbuf* %168, i32 %169, i32 %170, i32 %171, i32 %172)
  %174 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %175 = icmp ne %struct.sctp_tcb* %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %158
  %177 = load i32*, i32** %26, align 8
  store i32 1, i32* %177, align 4
  br label %178

178:                                              ; preds = %176, %158
  br label %297

179:                                              ; preds = %153
  %180 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %181 = load i32, i32* %18, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 %182, 40
  %184 = trunc i64 %183 to i32
  %185 = load i32, i32* %18, align 4
  %186 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %22, align 8
  %187 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @ntohs(i32 %189)
  %191 = add nsw i32 %185, %190
  %192 = call i64 @sctp_validate_init_auth_params(%struct.mbuf* %180, i32 %184, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %216

194:                                              ; preds = %179
  %195 = load i32, i32* @sctp_diag_info_code, align 4
  %196 = call i64 @SCTP_BASE_SYSCTL(i32 %195)
  %197 = call %struct.mbuf* @sctp_generate_cause(i64 %196, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store %struct.mbuf* %197, %struct.mbuf** %32, align 8
  %198 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %199 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %200 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %201 = load i32, i32* %17, align 4
  %202 = load %struct.sockaddr*, %struct.sockaddr** %19, align 8
  %203 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %204 = load %struct.sctphdr*, %struct.sctphdr** %21, align 8
  %205 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  %206 = load i32, i32* %27, align 4
  %207 = load i32, i32* %28, align 4
  %208 = load i32, i32* %29, align 4
  %209 = load i32, i32* %30, align 4
  %210 = call i32 @sctp_abort_association(%struct.sctp_inpcb* %198, %struct.sctp_tcb* %199, %struct.mbuf* %200, i32 %201, %struct.sockaddr* %202, %struct.sockaddr* %203, %struct.sctphdr* %204, %struct.mbuf* %205, i32 %206, i32 %207, i32 %208, i32 %209)
  %211 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %212 = icmp ne %struct.sctp_tcb* %211, null
  br i1 %212, label %213, label %215

213:                                              ; preds = %194
  %214 = load i32*, i32** %26, align 8
  store i32 1, i32* %214, align 4
  br label %215

215:                                              ; preds = %213, %194
  br label %297

216:                                              ; preds = %179
  %217 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %218 = icmp eq %struct.sctp_tcb* %217, null
  br i1 %218, label %219, label %260

219:                                              ; preds = %216
  %220 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %221 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @SCTP_PCB_FLAGS_SOCKET_GONE, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %237, label %226

226:                                              ; preds = %219
  %227 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %228 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @SCTP_PCB_FLAGS_SOCKET_ALLGONE, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %226
  %234 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %235 = call i32 @SCTP_IS_LISTENING(%struct.sctp_inpcb* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %260, label %237

237:                                              ; preds = %233, %226, %219
  %238 = load i32, i32* @sctp_blackhole, align 4
  %239 = call i64 @SCTP_BASE_SYSCTL(i32 %238)
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %259

241:                                              ; preds = %237
  %242 = load i32, i32* @sctp_diag_info_code, align 4
  %243 = call i64 @SCTP_BASE_SYSCTL(i32 %242)
  %244 = call %struct.mbuf* @sctp_generate_cause(i64 %243, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store %struct.mbuf* %244, %struct.mbuf** %32, align 8
  %245 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %246 = load i32, i32* %17, align 4
  %247 = load %struct.sockaddr*, %struct.sockaddr** %19, align 8
  %248 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %249 = load %struct.sctphdr*, %struct.sctphdr** %21, align 8
  %250 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  %251 = load i32, i32* %27, align 4
  %252 = load i32, i32* %28, align 4
  %253 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %254 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %29, align 4
  %257 = load i32, i32* %30, align 4
  %258 = call i32 @sctp_send_abort(%struct.mbuf* %245, i32 %246, %struct.sockaddr* %247, %struct.sockaddr* %248, %struct.sctphdr* %249, i32 0, %struct.mbuf* %250, i32 %251, i32 %252, i32 %255, i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %241, %237
  br label %297

260:                                              ; preds = %233, %216
  %261 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %262 = icmp ne %struct.sctp_tcb* %261, null
  br i1 %262, label %263, label %278

263:                                              ; preds = %260
  %264 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %265 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %264)
  %266 = load i64, i64* @SCTP_STATE_SHUTDOWN_ACK_SENT, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %278

268:                                              ; preds = %263
  %269 = load i32, i32* @SCTP_DEBUG_INPUT3, align 4
  %270 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %269, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %271 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %272 = call i32 @sctp_send_shutdown_ack(%struct.sctp_tcb* %271, i32* null)
  %273 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %274 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %275 = load i32, i32* @SCTP_OUTPUT_FROM_CONTROL_PROC, align 4
  %276 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %277 = call i32 @sctp_chunk_output(%struct.sctp_inpcb* %273, %struct.sctp_tcb* %274, i32 %275, i32 %276)
  br label %296

278:                                              ; preds = %263, %260
  %279 = load i32, i32* @SCTP_DEBUG_INPUT3, align 4
  %280 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %279, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %281 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %282 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %283 = load %struct.sctp_nets*, %struct.sctp_nets** %25, align 8
  %284 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %285 = load i32, i32* %17, align 4
  %286 = load i32, i32* %18, align 4
  %287 = load %struct.sockaddr*, %struct.sockaddr** %19, align 8
  %288 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %289 = load %struct.sctphdr*, %struct.sctphdr** %21, align 8
  %290 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %22, align 8
  %291 = load i32, i32* %27, align 4
  %292 = load i32, i32* %28, align 4
  %293 = load i32, i32* %29, align 4
  %294 = load i32, i32* %30, align 4
  %295 = call i32 @sctp_send_initiate_ack(%struct.sctp_inpcb* %281, %struct.sctp_tcb* %282, %struct.sctp_nets* %283, %struct.mbuf* %284, i32 %285, i32 %286, %struct.sockaddr* %287, %struct.sockaddr* %288, %struct.sctphdr* %289, %struct.sctp_init_chunk* %290, i32 %291, i32 %292, i32 %293, i32 %294)
  br label %296

296:                                              ; preds = %278, %268
  br label %297

297:                                              ; preds = %296, %259, %215, %178, %152, %126, %98, %70
  %298 = load %struct.sctp_tcb*, %struct.sctp_tcb** %24, align 8
  %299 = icmp eq %struct.sctp_tcb* %298, null
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %23, align 8
  %302 = call i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb* %301)
  br label %303

303:                                              ; preds = %300, %297
  ret void
}

declare dso_local i32 @SCTPDBG(i32, i8*, ...) #1

declare dso_local i32 @SCTP_INP_RLOCK(%struct.sctp_inpcb*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.mbuf* @sctp_generate_cause(i64, i8*) #1

declare dso_local i32 @sctp_abort_association(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.mbuf*, i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sctphdr*, %struct.mbuf*, i32, i32, i32, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @sctp_validate_init_auth_params(%struct.mbuf*, i32, i32) #1

declare dso_local i64 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @SCTP_IS_LISTENING(%struct.sctp_inpcb*) #1

declare dso_local i32 @sctp_send_abort(%struct.mbuf*, i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sctphdr*, i32, %struct.mbuf*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_send_shutdown_ack(%struct.sctp_tcb*, i32*) #1

declare dso_local i32 @sctp_chunk_output(%struct.sctp_inpcb*, %struct.sctp_tcb*, i32, i32) #1

declare dso_local i32 @sctp_send_initiate_ack(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*, %struct.mbuf*, i32, i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sctphdr*, %struct.sctp_init_chunk*, i32, i32, i32, i32) #1

declare dso_local i32 @SCTP_INP_RUNLOCK(%struct.sctp_inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
