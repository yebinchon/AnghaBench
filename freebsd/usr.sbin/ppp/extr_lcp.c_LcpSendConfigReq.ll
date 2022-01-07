; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_LcpSendConfigReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_LcpSendConfigReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.physical = type { i32 }
%struct.lcp = type { i32, i32, i64, i32, %struct.TYPE_13__, i64, %struct.TYPE_10__, i64, i64, %struct.TYPE_9__, i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.mp }
%struct.mp = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.fsm_opt = type { i64* }

@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: LcpSendConfigReq: Not a physical link !\0A\00", align 1
@TY_ACFCOMP = common dso_local global i32 0, align 4
@TY_PROTOCOMP = common dso_local global i32 0, align 4
@TY_ACCMAP = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: Reducing configured MRU from %u to %u\0A\00", align 1
@TY_MRU = common dso_local global i32 0, align 4
@TY_MAGICNUM = common dso_local global i32 0, align 4
@TY_QUALPROTO = common dso_local global i32 0, align 4
@PROTO_LQR = common dso_local global i32 0, align 4
@TY_AUTHPROTO = common dso_local global i32 0, align 4
@TY_CALLBACK = common dso_local global i32 0, align 4
@CALLBACK_AUTH = common dso_local global i8* null, align 8
@CALLBACK_CBCP = common dso_local global i8* null, align 8
@CALLBACK_E164 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Truncating E164 data to %zu octets (oops!)\0A\00", align 1
@TY_MRRU = common dso_local global i32 0, align 4
@TY_SHORTSEQ = common dso_local global i32 0, align 4
@TY_ENDDISC = common dso_local global i32 0, align 4
@CODE_CONFIGREQ = common dso_local global i32 0, align 4
@MB_LCPOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*)* @LcpSendConfigReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LcpSendConfigReq(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  %3 = alloca %struct.physical*, align 8
  %4 = alloca %struct.lcp*, align 8
  %5 = alloca [200 x i32], align 16
  %6 = alloca %struct.fsm_opt*, align 8
  %7 = alloca %struct.mp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %11 = load %struct.fsm*, %struct.fsm** %2, align 8
  %12 = getelementptr inbounds %struct.fsm, %struct.fsm* %11, i32 0, i32 1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = call %struct.physical* @link2physical(%struct.TYPE_16__* %13)
  store %struct.physical* %14, %struct.physical** %3, align 8
  %15 = load %struct.fsm*, %struct.fsm** %2, align 8
  %16 = call %struct.lcp* @fsm2lcp(%struct.fsm* %15)
  store %struct.lcp* %16, %struct.lcp** %4, align 8
  %17 = load %struct.physical*, %struct.physical** %3, align 8
  %18 = icmp ne %struct.physical* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @LogERROR, align 4
  %21 = load %struct.fsm*, %struct.fsm** %2, align 8
  %22 = getelementptr inbounds %struct.fsm, %struct.fsm* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %415

27:                                               ; preds = %1
  %28 = getelementptr inbounds [200 x i32], [200 x i32]* %5, i64 0, i64 0
  %29 = bitcast i32* %28 to %struct.fsm_opt*
  store %struct.fsm_opt* %29, %struct.fsm_opt** %6, align 8
  %30 = load %struct.physical*, %struct.physical** %3, align 8
  %31 = call i32 @physical_IsSync(%struct.physical* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %77, label %33

33:                                               ; preds = %27
  %34 = load %struct.lcp*, %struct.lcp** %4, align 8
  %35 = getelementptr inbounds %struct.lcp, %struct.lcp* %34, i32 0, i32 12
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.lcp*, %struct.lcp** %4, align 8
  %40 = load i32, i32* @TY_ACFCOMP, align 4
  %41 = call i32 @REJECTED(%struct.lcp* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @TY_ACFCOMP, align 4
  %45 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %46 = call i32 @INC_FSM_OPT(i32 %44, i32 2, %struct.fsm_opt* %45)
  br label %47

47:                                               ; preds = %43, %38, %33
  %48 = load %struct.lcp*, %struct.lcp** %4, align 8
  %49 = getelementptr inbounds %struct.lcp, %struct.lcp* %48, i32 0, i32 11
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.lcp*, %struct.lcp** %4, align 8
  %54 = load i32, i32* @TY_PROTOCOMP, align 4
  %55 = call i32 @REJECTED(%struct.lcp* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @TY_PROTOCOMP, align 4
  %59 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %60 = call i32 @INC_FSM_OPT(i32 %58, i32 2, %struct.fsm_opt* %59)
  br label %61

61:                                               ; preds = %57, %52, %47
  %62 = load %struct.lcp*, %struct.lcp** %4, align 8
  %63 = load i32, i32* @TY_ACCMAP, align 4
  %64 = call i32 @REJECTED(%struct.lcp* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = load %struct.lcp*, %struct.lcp** %4, align 8
  %68 = getelementptr inbounds %struct.lcp, %struct.lcp* %67, i32 0, i32 10
  %69 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %70 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = call i32 @ua_htonl(i64* %68, i64* %71)
  %73 = load i32, i32* @TY_ACCMAP, align 4
  %74 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %75 = call i32 @INC_FSM_OPT(i32 %73, i32 6, %struct.fsm_opt* %74)
  br label %76

76:                                               ; preds = %66, %61
  br label %77

77:                                               ; preds = %76, %27
  %78 = load %struct.physical*, %struct.physical** %3, align 8
  %79 = icmp ne %struct.physical* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.physical*, %struct.physical** %3, align 8
  %82 = call i32 @physical_DeviceMTU(%struct.physical* %81)
  br label %84

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i32 [ %82, %80 ], [ 0, %83 ]
  store i32 %85, i32* %9, align 4
  %86 = load %struct.lcp*, %struct.lcp** %4, align 8
  %87 = getelementptr inbounds %struct.lcp, %struct.lcp* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.lcp*, %struct.lcp** %4, align 8
  %97 = getelementptr inbounds %struct.lcp, %struct.lcp* %96, i32 0, i32 9
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %95, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %94, %91
  %102 = load %struct.lcp*, %struct.lcp** %4, align 8
  %103 = getelementptr inbounds %struct.lcp, %struct.lcp* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %101, %94, %84
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %106
  %110 = load %struct.lcp*, %struct.lcp** %4, align 8
  %111 = getelementptr inbounds %struct.lcp, %struct.lcp* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %109
  %116 = load i32, i32* @LogWARN, align 4
  %117 = load %struct.fsm*, %struct.fsm** %2, align 8
  %118 = getelementptr inbounds %struct.fsm, %struct.fsm* %117, i32 0, i32 1
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.lcp*, %struct.lcp** %4, align 8
  %123 = getelementptr inbounds %struct.lcp, %struct.lcp* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %121, i32 %124, i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.lcp*, %struct.lcp** %4, align 8
  %129 = getelementptr inbounds %struct.lcp, %struct.lcp* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %115, %109, %106
  %131 = load %struct.lcp*, %struct.lcp** %4, align 8
  %132 = load i32, i32* @TY_MRU, align 4
  %133 = call i32 @REJECTED(%struct.lcp* %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %130
  %136 = load %struct.lcp*, %struct.lcp** %4, align 8
  %137 = getelementptr inbounds %struct.lcp, %struct.lcp* %136, i32 0, i32 0
  %138 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %139 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = call i32 @ua_htons(i32* %137, i64* %140)
  %142 = load i32, i32* @TY_MRU, align 4
  %143 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %144 = call i32 @INC_FSM_OPT(i32 %142, i32 4, %struct.fsm_opt* %143)
  br label %145

145:                                              ; preds = %135, %130
  %146 = load %struct.lcp*, %struct.lcp** %4, align 8
  %147 = getelementptr inbounds %struct.lcp, %struct.lcp* %146, i32 0, i32 8
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %145
  %151 = load %struct.lcp*, %struct.lcp** %4, align 8
  %152 = load i32, i32* @TY_MAGICNUM, align 4
  %153 = call i32 @REJECTED(%struct.lcp* %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %150
  %156 = load %struct.lcp*, %struct.lcp** %4, align 8
  %157 = getelementptr inbounds %struct.lcp, %struct.lcp* %156, i32 0, i32 8
  %158 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %159 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = call i32 @ua_htonl(i64* %157, i64* %160)
  %162 = load i32, i32* @TY_MAGICNUM, align 4
  %163 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %164 = call i32 @INC_FSM_OPT(i32 %162, i32 6, %struct.fsm_opt* %163)
  br label %165

165:                                              ; preds = %155, %150, %145
  %166 = load %struct.lcp*, %struct.lcp** %4, align 8
  %167 = getelementptr inbounds %struct.lcp, %struct.lcp* %166, i32 0, i32 7
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %165
  %171 = load %struct.lcp*, %struct.lcp** %4, align 8
  %172 = load i32, i32* @TY_QUALPROTO, align 4
  %173 = call i32 @REJECTED(%struct.lcp* %171, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %191, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* @PROTO_LQR, align 4
  store i32 %176, i32* %8, align 4
  %177 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %178 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = call i32 @ua_htons(i32* %8, i64* %179)
  %181 = load %struct.lcp*, %struct.lcp** %4, align 8
  %182 = getelementptr inbounds %struct.lcp, %struct.lcp* %181, i32 0, i32 7
  %183 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %184 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 2
  %187 = call i32 @ua_htonl(i64* %182, i64* %186)
  %188 = load i32, i32* @TY_QUALPROTO, align 4
  %189 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %190 = call i32 @INC_FSM_OPT(i32 %188, i32 8, %struct.fsm_opt* %189)
  br label %191

191:                                              ; preds = %175, %170, %165
  %192 = load %struct.lcp*, %struct.lcp** %4, align 8
  %193 = getelementptr inbounds %struct.lcp, %struct.lcp* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  switch i32 %194, label %218 [
    i32 128, label %195
    i32 129, label %203
  ]

195:                                              ; preds = %191
  store i32 128, i32* %8, align 4
  %196 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %197 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = call i32 @ua_htons(i32* %8, i64* %198)
  %200 = load i32, i32* @TY_AUTHPROTO, align 4
  %201 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %202 = call i32 @INC_FSM_OPT(i32 %200, i32 4, %struct.fsm_opt* %201)
  br label %218

203:                                              ; preds = %191
  store i32 129, i32* %8, align 4
  %204 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %205 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %204, i32 0, i32 0
  %206 = load i64*, i64** %205, align 8
  %207 = call i32 @ua_htons(i32* %8, i64* %206)
  %208 = load %struct.lcp*, %struct.lcp** %4, align 8
  %209 = getelementptr inbounds %struct.lcp, %struct.lcp* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %212 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %211, i32 0, i32 0
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 2
  store i64 %210, i64* %214, align 8
  %215 = load i32, i32* @TY_AUTHPROTO, align 4
  %216 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %217 = call i32 @INC_FSM_OPT(i32 %215, i32 5, %struct.fsm_opt* %216)
  br label %218

218:                                              ; preds = %191, %203, %195
  %219 = load %struct.lcp*, %struct.lcp** %4, align 8
  %220 = load i32, i32* @TY_CALLBACK, align 4
  %221 = call i32 @REJECTED(%struct.lcp* %219, i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %305, label %223

223:                                              ; preds = %218
  %224 = load %struct.lcp*, %struct.lcp** %4, align 8
  %225 = getelementptr inbounds %struct.lcp, %struct.lcp* %224, i32 0, i32 6
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i8*, i8** @CALLBACK_AUTH, align 8
  %229 = call i32 @CALLBACK_BIT(i8* %228)
  %230 = and i32 %227, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %223
  %233 = load i8*, i8** @CALLBACK_AUTH, align 8
  %234 = ptrtoint i8* %233 to i64
  %235 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %236 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %235, i32 0, i32 0
  %237 = load i64*, i64** %236, align 8
  store i64 %234, i64* %237, align 8
  %238 = load i32, i32* @TY_CALLBACK, align 4
  %239 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %240 = call i32 @INC_FSM_OPT(i32 %238, i32 3, %struct.fsm_opt* %239)
  br label %304

241:                                              ; preds = %223
  %242 = load %struct.lcp*, %struct.lcp** %4, align 8
  %243 = getelementptr inbounds %struct.lcp, %struct.lcp* %242, i32 0, i32 6
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i8*, i8** @CALLBACK_CBCP, align 8
  %247 = call i32 @CALLBACK_BIT(i8* %246)
  %248 = and i32 %245, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %241
  %251 = load i8*, i8** @CALLBACK_CBCP, align 8
  %252 = ptrtoint i8* %251 to i64
  %253 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %254 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %253, i32 0, i32 0
  %255 = load i64*, i64** %254, align 8
  store i64 %252, i64* %255, align 8
  %256 = load i32, i32* @TY_CALLBACK, align 4
  %257 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %258 = call i32 @INC_FSM_OPT(i32 %256, i32 3, %struct.fsm_opt* %257)
  br label %303

259:                                              ; preds = %241
  %260 = load %struct.lcp*, %struct.lcp** %4, align 8
  %261 = getelementptr inbounds %struct.lcp, %struct.lcp* %260, i32 0, i32 6
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i8*, i8** @CALLBACK_E164, align 8
  %265 = call i32 @CALLBACK_BIT(i8* %264)
  %266 = and i32 %263, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %302

268:                                              ; preds = %259
  %269 = load %struct.lcp*, %struct.lcp** %4, align 8
  %270 = getelementptr inbounds %struct.lcp, %struct.lcp* %269, i32 0, i32 6
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i64 @strlen(i32 %272)
  store i64 %273, i64* %10, align 8
  %274 = load i64, i64* %10, align 8
  %275 = icmp ugt i64 %274, 7
  br i1 %275, label %276, label %280

276:                                              ; preds = %268
  store i64 7, i64* %10, align 8
  %277 = load i32, i32* @LogWARN, align 4
  %278 = load i64, i64* %10, align 8
  %279 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %277, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %278)
  br label %280

280:                                              ; preds = %276, %268
  %281 = load i8*, i8** @CALLBACK_E164, align 8
  %282 = ptrtoint i8* %281 to i64
  %283 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %284 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %283, i32 0, i32 0
  %285 = load i64*, i64** %284, align 8
  store i64 %282, i64* %285, align 8
  %286 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %287 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %286, i32 0, i32 0
  %288 = load i64*, i64** %287, align 8
  %289 = getelementptr inbounds i64, i64* %288, i64 1
  %290 = load %struct.lcp*, %struct.lcp** %4, align 8
  %291 = getelementptr inbounds %struct.lcp, %struct.lcp* %290, i32 0, i32 6
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i64, i64* %10, align 8
  %295 = call i32 @memcpy(i64* %289, i32 %293, i64 %294)
  %296 = load i32, i32* @TY_CALLBACK, align 4
  %297 = load i64, i64* %10, align 8
  %298 = add i64 %297, 3
  %299 = trunc i64 %298 to i32
  %300 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %301 = call i32 @INC_FSM_OPT(i32 %296, i32 %299, %struct.fsm_opt* %300)
  br label %302

302:                                              ; preds = %280, %259
  br label %303

303:                                              ; preds = %302, %250
  br label %304

304:                                              ; preds = %303, %232
  br label %305

305:                                              ; preds = %304, %218
  %306 = load %struct.lcp*, %struct.lcp** %4, align 8
  %307 = getelementptr inbounds %struct.lcp, %struct.lcp* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %339

310:                                              ; preds = %305
  %311 = load %struct.lcp*, %struct.lcp** %4, align 8
  %312 = load i32, i32* @TY_MRRU, align 4
  %313 = call i32 @REJECTED(%struct.lcp* %311, i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %339, label %315

315:                                              ; preds = %310
  %316 = load %struct.lcp*, %struct.lcp** %4, align 8
  %317 = getelementptr inbounds %struct.lcp, %struct.lcp* %316, i32 0, i32 3
  %318 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %319 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %318, i32 0, i32 0
  %320 = load i64*, i64** %319, align 8
  %321 = call i32 @ua_htons(i32* %317, i64* %320)
  %322 = load i32, i32* @TY_MRRU, align 4
  %323 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %324 = call i32 @INC_FSM_OPT(i32 %322, i32 4, %struct.fsm_opt* %323)
  %325 = load %struct.lcp*, %struct.lcp** %4, align 8
  %326 = getelementptr inbounds %struct.lcp, %struct.lcp* %325, i32 0, i32 5
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %338

329:                                              ; preds = %315
  %330 = load %struct.lcp*, %struct.lcp** %4, align 8
  %331 = load i32, i32* @TY_SHORTSEQ, align 4
  %332 = call i32 @REJECTED(%struct.lcp* %330, i32 %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %338, label %334

334:                                              ; preds = %329
  %335 = load i32, i32* @TY_SHORTSEQ, align 4
  %336 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %337 = call i32 @INC_FSM_OPT(i32 %335, i32 2, %struct.fsm_opt* %336)
  br label %338

338:                                              ; preds = %334, %329, %315
  br label %339

339:                                              ; preds = %338, %310, %305
  %340 = load %struct.lcp*, %struct.lcp** %4, align 8
  %341 = getelementptr inbounds %struct.lcp, %struct.lcp* %340, i32 0, i32 4
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 0
  store %struct.mp* %345, %struct.mp** %7, align 8
  %346 = load %struct.mp*, %struct.mp** %7, align 8
  %347 = getelementptr inbounds %struct.mp, %struct.mp* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %398

352:                                              ; preds = %339
  %353 = load %struct.mp*, %struct.mp** %7, align 8
  %354 = getelementptr inbounds %struct.mp, %struct.mp* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = call i64 @IsEnabled(i32 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %398

359:                                              ; preds = %352
  %360 = load %struct.lcp*, %struct.lcp** %4, align 8
  %361 = load i32, i32* @TY_ENDDISC, align 4
  %362 = call i32 @REJECTED(%struct.lcp* %360, i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %398, label %364

364:                                              ; preds = %359
  %365 = load %struct.mp*, %struct.mp** %7, align 8
  %366 = getelementptr inbounds %struct.mp, %struct.mp* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %371 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %370, i32 0, i32 0
  %372 = load i64*, i64** %371, align 8
  store i64 %369, i64* %372, align 8
  %373 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %374 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %373, i32 0, i32 0
  %375 = load i64*, i64** %374, align 8
  %376 = getelementptr inbounds i64, i64* %375, i64 1
  %377 = load %struct.mp*, %struct.mp** %7, align 8
  %378 = getelementptr inbounds %struct.mp, %struct.mp* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.mp*, %struct.mp** %7, align 8
  %383 = getelementptr inbounds %struct.mp, %struct.mp* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = call i32 @memcpy(i64* %376, i32 %381, i64 %386)
  %388 = load i32, i32* @TY_ENDDISC, align 4
  %389 = load %struct.mp*, %struct.mp** %7, align 8
  %390 = getelementptr inbounds %struct.mp, %struct.mp* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = add i64 %393, 3
  %395 = trunc i64 %394 to i32
  %396 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %397 = call i32 @INC_FSM_OPT(i32 %388, i32 %395, %struct.fsm_opt* %396)
  br label %398

398:                                              ; preds = %364, %359, %352, %339
  %399 = load %struct.fsm*, %struct.fsm** %2, align 8
  %400 = load i32, i32* @CODE_CONFIGREQ, align 4
  %401 = load %struct.fsm*, %struct.fsm** %2, align 8
  %402 = getelementptr inbounds %struct.fsm, %struct.fsm* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = getelementptr inbounds [200 x i32], [200 x i32]* %5, i64 0, i64 0
  %405 = load %struct.fsm_opt*, %struct.fsm_opt** %6, align 8
  %406 = bitcast %struct.fsm_opt* %405 to i32*
  %407 = getelementptr inbounds [200 x i32], [200 x i32]* %5, i64 0, i64 0
  %408 = ptrtoint i32* %406 to i64
  %409 = ptrtoint i32* %407 to i64
  %410 = sub i64 %408, %409
  %411 = sdiv exact i64 %410, 4
  %412 = trunc i64 %411 to i32
  %413 = load i32, i32* @MB_LCPOUT, align 4
  %414 = call i32 @fsm_Output(%struct.fsm* %399, i32 %400, i32 %403, i32* %404, i32 %412, i32 %413)
  br label %415

415:                                              ; preds = %398, %19
  ret void
}

declare dso_local %struct.physical* @link2physical(%struct.TYPE_16__*) #1

declare dso_local %struct.lcp* @fsm2lcp(%struct.fsm*) #1

declare dso_local i32 @log_Printf(i32, i8*, i64, ...) #1

declare dso_local i32 @physical_IsSync(%struct.physical*) #1

declare dso_local i32 @REJECTED(%struct.lcp*, i32) #1

declare dso_local i32 @INC_FSM_OPT(i32, i32, %struct.fsm_opt*) #1

declare dso_local i32 @ua_htonl(i64*, i64*) #1

declare dso_local i32 @physical_DeviceMTU(%struct.physical*) #1

declare dso_local i32 @ua_htons(i32*, i64*) #1

declare dso_local i32 @CALLBACK_BIT(i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

declare dso_local i64 @IsEnabled(i32) #1

declare dso_local i32 @fsm_Output(%struct.fsm*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
