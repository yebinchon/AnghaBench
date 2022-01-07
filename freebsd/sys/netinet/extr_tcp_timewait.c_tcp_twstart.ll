; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timewait.c_tcp_twstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timewait.c_tcp_twstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.inpcb* }
%struct.inpcb = type { i32, %struct.tcptw*, %struct.socket*, i32, i32, %struct.TYPE_3__ }
%struct.tcptw = type { i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, %struct.inpcb* }
%struct.socket = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@INP_DROPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"tcp_twstart: (inp->inp_flags & INP_DROPPED) != 0\00", align 1
@V_nolocaltimewait = common dso_local global i64 0, align 8
@TCPS_TIME_WAIT = common dso_local global i32 0, align 4
@V_tcptw_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@TCP_MAXWIN = common dso_local global i64 0, align 8
@TF_REQ_TSTMP = common dso_local global i32 0, align 4
@TF_RCVD_TSTMP = common dso_local global i32 0, align 4
@TF_NOOPT = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4
@INP_TIMEWAIT = common dso_local global i32 0, align 4
@TH_ACK = common dso_local global i32 0, align 4
@INP_SOCKREF = common dso_local global i32 0, align 4
@SS_PROTOREF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"tcp_twstart: !SS_PROTOREF\00", align 1
@INC_ISIPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_twstart(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.tcptw, align 8
  %4 = alloca %struct.tcptw*, align 8
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %10 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 11
  %12 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  store %struct.inpcb* %12, %struct.inpcb** %5, align 8
  %13 = call i32 (...) @NET_EPOCH_ASSERT()
  %14 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %15 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %14)
  %16 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @INP_DROPPED, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* @V_nolocaltimewait, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %30 = load i32, i32* @TCPS_TIME_WAIT, align 4
  %31 = call i32 @tcp_state_change(%struct.tcpcb* %29, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store %struct.tcptw* %3, %struct.tcptw** %4, align 8
  br label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @V_tcptw_zone, align 4
  %37 = load i32, i32* @M_NOWAIT, align 4
  %38 = call %struct.tcptw* @uma_zalloc(i32 %36, i32 %37)
  store %struct.tcptw* %38, %struct.tcptw** %4, align 8
  br label %39

39:                                               ; preds = %35, %34
  %40 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %41 = icmp eq %struct.tcptw* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = call %struct.tcptw* @tcp_tw_2msl_scan(i32 1)
  store %struct.tcptw* %43, %struct.tcptw** %4, align 8
  %44 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %45 = icmp eq %struct.tcptw* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %48 = call %struct.tcpcb* @tcp_close(%struct.tcpcb* %47)
  store %struct.tcpcb* %48, %struct.tcpcb** %2, align 8
  %49 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %50 = icmp ne %struct.tcpcb* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %53 = call i32 @INP_WUNLOCK(%struct.inpcb* %52)
  br label %54

54:                                               ; preds = %51, %46
  br label %263

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %39
  %57 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %58 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %59 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %58, i32 0, i32 11
  store %struct.inpcb* %57, %struct.inpcb** %59, align 8
  %60 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %61 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %60, i32 0, i32 2
  %62 = load %struct.socket*, %struct.socket** %61, align 8
  store %struct.socket* %62, %struct.socket** %6, align 8
  %63 = load %struct.socket*, %struct.socket** %6, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 3
  %65 = call i32 @sbspace(%struct.TYPE_4__* %64)
  %66 = call i32 @lmax(i32 %65, i32 0)
  %67 = load i64, i64* @TCP_MAXWIN, align 8
  %68 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %69 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = shl i64 %67, %70
  %72 = call i32 @lmin(i32 %66, i64 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.socket*, %struct.socket** %6, align 8
  %75 = getelementptr inbounds %struct.socket, %struct.socket* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 4
  %79 = icmp slt i32 %73, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %56
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %83 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %80, %56
  %88 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %89 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %92 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @SEQ_GT(i32 %90, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %87
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %99 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %102 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %100, %103
  %105 = icmp slt i32 %97, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %96
  %107 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %108 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %111 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %109, %112
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %106, %96, %87
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %117 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = ashr i32 %115, %119
  %121 = sext i32 %120 to i64
  %122 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %123 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %122, i32 0, i32 10
  store i64 %121, i64* %123, align 8
  %124 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %125 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @TF_REQ_TSTMP, align 4
  %128 = load i32, i32* @TF_RCVD_TSTMP, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @TF_NOOPT, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %126, %131
  %133 = load i32, i32* @TF_REQ_TSTMP, align 4
  %134 = load i32, i32* @TF_RCVD_TSTMP, align 4
  %135 = or i32 %133, %134
  %136 = icmp eq i32 %132, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %114
  %138 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %139 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %138, i32 0, i32 10
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %142 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %141, i32 0, i32 9
  store i64 %140, i64* %142, align 8
  %143 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %144 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %147 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %146, i32 0, i32 8
  store i64 %145, i64* %147, align 8
  br label %153

148:                                              ; preds = %114
  %149 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %150 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %149, i32 0, i32 9
  store i64 0, i64* %150, align 8
  %151 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %152 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %151, i32 0, i32 8
  store i64 0, i64* %152, align 8
  br label %153

153:                                              ; preds = %148, %137
  %154 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %155 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %158 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %157, i32 0, i32 7
  store i32 %156, i32* %158, align 4
  %159 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %160 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %163 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %165 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %168 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 8
  %169 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %170 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %173 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 4
  %174 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %175 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %178 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  %179 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %180 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %179, i32 0, i32 3
  store i64 0, i64* %180, align 8
  %181 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %182 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @TF_ACKNOW, align 4
  %185 = and i32 %183, %184
  store i32 %185, i32* %8, align 4
  %186 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %187 = call i32 @tcp_discardcb(%struct.tcpcb* %186)
  %188 = load %struct.socket*, %struct.socket** %6, align 8
  %189 = call i32 @soisdisconnected(%struct.socket* %188)
  %190 = load %struct.socket*, %struct.socket** %6, align 8
  %191 = getelementptr inbounds %struct.socket, %struct.socket* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %194 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* @INP_TIMEWAIT, align 4
  %196 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %197 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %153
  %203 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %204 = load i32, i32* @TH_ACK, align 4
  %205 = call i32 @tcp_twrespond(%struct.tcptw* %203, i32 %204)
  br label %206

206:                                              ; preds = %202, %153
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %211 = call i32 @in_pcbdrop(%struct.inpcb* %210)
  br label %228

212:                                              ; preds = %206
  %213 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %214 = call i32 @in_pcbref(%struct.inpcb* %213)
  %215 = load %struct.socket*, %struct.socket** %6, align 8
  %216 = getelementptr inbounds %struct.socket, %struct.socket* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @crhold(i32 %217)
  %219 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %220 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %222 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %223 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %222, i32 0, i32 1
  store %struct.tcptw* %221, %struct.tcptw** %223, align 8
  %224 = load i32, i32* @TCPS_TIME_WAIT, align 4
  %225 = call i32 @TCPSTATES_INC(i32 %224)
  %226 = load %struct.tcptw*, %struct.tcptw** %4, align 8
  %227 = call i32 @tcp_tw_2msl_reset(%struct.tcptw* %226, i32 0)
  br label %228

228:                                              ; preds = %212, %209
  %229 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %230 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @INP_SOCKREF, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %260

235:                                              ; preds = %228
  %236 = load %struct.socket*, %struct.socket** %6, align 8
  %237 = getelementptr inbounds %struct.socket, %struct.socket* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @SS_PROTOREF, align 4
  %240 = and i32 %238, %239
  %241 = call i32 @KASSERT(i32 %240, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %242 = load i32, i32* @INP_SOCKREF, align 4
  %243 = xor i32 %242, -1
  %244 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %245 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = and i32 %246, %243
  store i32 %247, i32* %245, align 8
  %248 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %249 = call i32 @INP_WUNLOCK(%struct.inpcb* %248)
  %250 = load %struct.socket*, %struct.socket** %6, align 8
  %251 = call i32 @SOCK_LOCK(%struct.socket* %250)
  %252 = load i32, i32* @SS_PROTOREF, align 4
  %253 = xor i32 %252, -1
  %254 = load %struct.socket*, %struct.socket** %6, align 8
  %255 = getelementptr inbounds %struct.socket, %struct.socket* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, %253
  store i32 %257, i32* %255, align 4
  %258 = load %struct.socket*, %struct.socket** %6, align 8
  %259 = call i32 @sofree(%struct.socket* %258)
  br label %263

260:                                              ; preds = %228
  %261 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %262 = call i32 @INP_WUNLOCK(%struct.inpcb* %261)
  br label %263

263:                                              ; preds = %54, %260, %235
  ret void
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @tcp_state_change(%struct.tcpcb*, i32) #1

declare dso_local %struct.tcptw* @uma_zalloc(i32, i32) #1

declare dso_local %struct.tcptw* @tcp_tw_2msl_scan(i32) #1

declare dso_local %struct.tcpcb* @tcp_close(%struct.tcpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @lmin(i32, i64) #1

declare dso_local i32 @lmax(i32, i32) #1

declare dso_local i32 @sbspace(%struct.TYPE_4__*) #1

declare dso_local i64 @SEQ_GT(i32, i32) #1

declare dso_local i32 @tcp_discardcb(%struct.tcpcb*) #1

declare dso_local i32 @soisdisconnected(%struct.socket*) #1

declare dso_local i32 @tcp_twrespond(%struct.tcptw*, i32) #1

declare dso_local i32 @in_pcbdrop(%struct.inpcb*) #1

declare dso_local i32 @in_pcbref(%struct.inpcb*) #1

declare dso_local i32 @crhold(i32) #1

declare dso_local i32 @TCPSTATES_INC(i32) #1

declare dso_local i32 @tcp_tw_2msl_reset(%struct.tcptw*, i32) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @sofree(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
