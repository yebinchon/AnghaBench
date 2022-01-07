; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_CcpDecodeConfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_CcpDecodeConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8* (%struct.fsm_opt*)*, i64, i32 (%struct.fsm*)*, %struct.TYPE_14__, %struct.TYPE_12__, i32 (%struct.fsm*)* }
%struct.fsm_opt = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 (i32, %struct.fsm_opt*, %struct.TYPE_19__*)* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_12__ = type { i32 (i32, %struct.fsm_opt*, %struct.TYPE_19__*)* }
%struct.fsm = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.fsm_decode = type { i64, i64, i64, i64 }
%struct.ccp = type { i32, i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_19__, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { i32, i32*, %struct.fsm_opt }
%struct.TYPE_13__ = type { %struct.ccp_opt* }
%struct.ccp_opt = type { %struct.fsm_opt, %struct.ccp_opt* }

@NALGORITHMS = common dso_local global i32 0, align 4
@algorithm = common dso_local global %struct.TYPE_11__** null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LogCCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" %s[%d] %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: Warning: Ignoring peer NAK of unsent option\0A\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"%s: Cannot understand peers (required) %s negotiation\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"%s: Peer rejected (required) %s negotiation\0A\00", align 1
@MODE_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*, i32*, i32*, i32, %struct.fsm_decode*)* @CcpDecodeConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CcpDecodeConfig(%struct.fsm* %0, i32* %1, i32* %2, i32 %3, %struct.fsm_decode* %4) #0 {
  %6 = alloca %struct.fsm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsm_decode*, align 8
  %11 = alloca %struct.ccp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.fsm_opt*, align 8
  %15 = alloca %struct.ccp_opt*, align 8
  store %struct.fsm* %0, %struct.fsm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.fsm_decode* %4, %struct.fsm_decode** %10, align 8
  %16 = load %struct.fsm*, %struct.fsm** %6, align 8
  %17 = call %struct.ccp* @fsm2ccp(%struct.fsm* %16)
  store %struct.ccp* %17, %struct.ccp** %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load %struct.ccp*, %struct.ccp** %11, align 8
  %22 = getelementptr inbounds %struct.ccp, %struct.ccp* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %5
  br label %25

25:                                               ; preds = %370, %24
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 8
  %29 = icmp uge i32* %26, %28
  br i1 %29, label %30, label %371

30:                                               ; preds = %25
  %31 = call %struct.fsm_opt* @fsm_readopt(i32** %7)
  store %struct.fsm_opt* %31, %struct.fsm_opt** %14, align 8
  %32 = icmp eq %struct.fsm_opt* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %371

34:                                               ; preds = %30
  %35 = load i32, i32* @NALGORITHMS, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %55, %34
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %41, i64 %43
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %49 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %58

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %12, align 4
  br label %37

58:                                               ; preds = %53, %37
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %72

62:                                               ; preds = %58
  %63 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %63, i64 %65
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i8* (%struct.fsm_opt*)*, i8* (%struct.fsm_opt*)** %68, align 8
  %70 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %71 = call i8* %69(%struct.fsm_opt* %70)
  br label %72

72:                                               ; preds = %62, %61
  %73 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %61 ], [ %71, %62 ]
  store i8* %73, i8** %13, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %77

77:                                               ; preds = %76, %72
  %78 = load i32, i32* @LogCCP, align 4
  %79 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %80 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @protoname(i32 %82)
  %84 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %85 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %87, i8* %88)
  %90 = load i32, i32* %12, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %109

92:                                               ; preds = %77
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 128
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %97 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 1, %99
  %101 = load %struct.ccp*, %struct.ccp** %11, align 8
  %102 = getelementptr inbounds %struct.ccp, %struct.ccp* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %106 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %107 = call i32 @fsm_rej(%struct.fsm_decode* %105, %struct.fsm_opt* %106)
  br label %108

108:                                              ; preds = %95, %92
  br label %370

109:                                              ; preds = %77
  %110 = load i32, i32* %9, align 4
  switch i32 %110, label %369 [
    i32 128, label %111
    i32 130, label %205
    i32 129, label %324
  ]

111:                                              ; preds = %109
  %112 = load %struct.ccp*, %struct.ccp** %11, align 8
  %113 = getelementptr inbounds %struct.ccp, %struct.ccp* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %116, i64 %118
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %115, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @IsAccepted(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %200

127:                                              ; preds = %111
  %128 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %128, i64 %130
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 6
  %134 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %133, align 8
  %135 = load %struct.fsm*, %struct.fsm** %6, align 8
  %136 = call i32 %134(%struct.fsm* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %200

138:                                              ; preds = %127
  %139 = load %struct.ccp*, %struct.ccp** %11, align 8
  %140 = getelementptr inbounds %struct.ccp, %struct.ccp* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %200

144:                                              ; preds = %138
  %145 = load %struct.ccp*, %struct.ccp** %11, align 8
  %146 = getelementptr inbounds %struct.ccp, %struct.ccp* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  %148 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %149 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %150 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @memcpy(%struct.fsm_opt* %147, %struct.fsm_opt* %148, i32 %152)
  %154 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %154, i64 %156
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32 (i32, %struct.fsm_opt*, %struct.TYPE_19__*)*, i32 (i32, %struct.fsm_opt*, %struct.TYPE_19__*)** %160, align 8
  %162 = load %struct.fsm*, %struct.fsm** %6, align 8
  %163 = getelementptr inbounds %struct.fsm, %struct.fsm* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ccp*, %struct.ccp** %11, align 8
  %166 = getelementptr inbounds %struct.ccp, %struct.ccp* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 2
  %168 = load %struct.ccp*, %struct.ccp** %11, align 8
  %169 = getelementptr inbounds %struct.ccp, %struct.ccp* %168, i32 0, i32 5
  %170 = call i32 %161(i32 %164, %struct.fsm_opt* %167, %struct.TYPE_19__* %169)
  switch i32 %170, label %199 [
    i32 129, label %171
    i32 130, label %177
    i32 131, label %183
  ]

171:                                              ; preds = %144
  %172 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %173 = load %struct.ccp*, %struct.ccp** %11, align 8
  %174 = getelementptr inbounds %struct.ccp, %struct.ccp* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 2
  %176 = call i32 @fsm_rej(%struct.fsm_decode* %172, %struct.fsm_opt* %175)
  br label %199

177:                                              ; preds = %144
  %178 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %179 = load %struct.ccp*, %struct.ccp** %11, align 8
  %180 = getelementptr inbounds %struct.ccp, %struct.ccp* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  %182 = call i32 @fsm_nak(%struct.fsm_decode* %178, %struct.fsm_opt* %181)
  br label %199

183:                                              ; preds = %144
  %184 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %185 = load %struct.ccp*, %struct.ccp** %11, align 8
  %186 = getelementptr inbounds %struct.ccp, %struct.ccp* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 2
  %188 = call i32 @fsm_ack(%struct.fsm_decode* %184, %struct.fsm_opt* %187)
  %189 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %190 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.ccp*, %struct.ccp** %11, align 8
  %194 = getelementptr inbounds %struct.ccp, %struct.ccp* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.ccp*, %struct.ccp** %11, align 8
  %197 = getelementptr inbounds %struct.ccp, %struct.ccp* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  store i32 %195, i32* %198, align 8
  br label %199

199:                                              ; preds = %144, %183, %177, %171
  br label %204

200:                                              ; preds = %138, %127, %111
  %201 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %202 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %203 = call i32 @fsm_rej(%struct.fsm_decode* %201, %struct.fsm_opt* %202)
  br label %204

204:                                              ; preds = %200, %199
  br label %369

205:                                              ; preds = %109
  %206 = load %struct.ccp*, %struct.ccp** %11, align 8
  %207 = getelementptr inbounds %struct.ccp, %struct.ccp* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = load %struct.ccp_opt*, %struct.ccp_opt** %208, align 8
  store %struct.ccp_opt* %209, %struct.ccp_opt** %15, align 8
  br label %210

210:                                              ; preds = %226, %205
  %211 = load %struct.ccp_opt*, %struct.ccp_opt** %15, align 8
  %212 = icmp ne %struct.ccp_opt* %211, null
  br i1 %212, label %213, label %230

213:                                              ; preds = %210
  %214 = load %struct.ccp_opt*, %struct.ccp_opt** %15, align 8
  %215 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %220 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %218, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %213
  br label %230

225:                                              ; preds = %213
  br label %226

226:                                              ; preds = %225
  %227 = load %struct.ccp_opt*, %struct.ccp_opt** %15, align 8
  %228 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %227, i32 0, i32 1
  %229 = load %struct.ccp_opt*, %struct.ccp_opt** %228, align 8
  store %struct.ccp_opt* %229, %struct.ccp_opt** %15, align 8
  br label %210

230:                                              ; preds = %224, %210
  %231 = load %struct.ccp_opt*, %struct.ccp_opt** %15, align 8
  %232 = icmp eq %struct.ccp_opt* %231, null
  br i1 %232, label %233, label %241

233:                                              ; preds = %230
  %234 = load i32, i32* @LogCCP, align 4
  %235 = load %struct.fsm*, %struct.fsm** %6, align 8
  %236 = getelementptr inbounds %struct.fsm, %struct.fsm* %235, i32 0, i32 0
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %234, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %239)
  br label %323

241:                                              ; preds = %230
  %242 = load %struct.ccp_opt*, %struct.ccp_opt** %15, align 8
  %243 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %242, i32 0, i32 0
  %244 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %245 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %246 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @memcpy(%struct.fsm_opt* %243, %struct.fsm_opt* %244, i32 %248)
  %250 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %250, i64 %252
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load i32 (i32, %struct.fsm_opt*, %struct.TYPE_19__*)*, i32 (i32, %struct.fsm_opt*, %struct.TYPE_19__*)** %256, align 8
  %258 = load %struct.fsm*, %struct.fsm** %6, align 8
  %259 = getelementptr inbounds %struct.fsm, %struct.fsm* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.ccp_opt*, %struct.ccp_opt** %15, align 8
  %262 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %261, i32 0, i32 0
  %263 = load %struct.ccp*, %struct.ccp** %11, align 8
  %264 = getelementptr inbounds %struct.ccp, %struct.ccp* %263, i32 0, i32 5
  %265 = call i32 %257(i32 %260, %struct.fsm_opt* %262, %struct.TYPE_19__* %264)
  %266 = icmp eq i32 %265, 131
  br i1 %266, label %267, label %277

267:                                              ; preds = %241
  %268 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %268, i64 %270
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.ccp*, %struct.ccp** %11, align 8
  %276 = getelementptr inbounds %struct.ccp, %struct.ccp* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 8
  br label %322

277:                                              ; preds = %241
  %278 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %279 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = shl i32 1, %281
  %283 = load %struct.ccp*, %struct.ccp** %11, align 8
  %284 = getelementptr inbounds %struct.ccp, %struct.ccp* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 4
  %287 = load %struct.ccp*, %struct.ccp** %11, align 8
  %288 = getelementptr inbounds %struct.ccp, %struct.ccp* %287, i32 0, i32 2
  store i32 -1, i32* %288, align 8
  %289 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %290 = load i32, i32* %12, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %289, i64 %291
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 3
  %295 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %294, align 8
  %296 = load %struct.fsm*, %struct.fsm** %6, align 8
  %297 = call i32 %295(%struct.fsm* %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %321

299:                                              ; preds = %277
  %300 = load i32, i32* @LogWARN, align 4
  %301 = load %struct.fsm*, %struct.fsm** %6, align 8
  %302 = getelementptr inbounds %struct.fsm, %struct.fsm* %301, i32 0, i32 0
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %307 = load i32, i32* %12, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %306, i64 %308
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @protoname(i32 %312)
  %314 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %300, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %305, i32 %313)
  %315 = load %struct.fsm*, %struct.fsm** %6, align 8
  %316 = getelementptr inbounds %struct.fsm, %struct.fsm* %315, i32 0, i32 0
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 0
  %320 = call i32 @fsm_Close(i32* %319)
  br label %321

321:                                              ; preds = %299, %277
  br label %322

322:                                              ; preds = %321, %267
  br label %323

323:                                              ; preds = %322, %233
  br label %369

324:                                              ; preds = %109
  %325 = load %struct.fsm_opt*, %struct.fsm_opt** %14, align 8
  %326 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = shl i32 1, %328
  %330 = load %struct.ccp*, %struct.ccp** %11, align 8
  %331 = getelementptr inbounds %struct.ccp, %struct.ccp* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = or i32 %332, %329
  store i32 %333, i32* %331, align 4
  %334 = load %struct.ccp*, %struct.ccp** %11, align 8
  %335 = getelementptr inbounds %struct.ccp, %struct.ccp* %334, i32 0, i32 2
  store i32 -1, i32* %335, align 8
  %336 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %337 = load i32, i32* %12, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %336, i64 %338
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 3
  %342 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %341, align 8
  %343 = load %struct.fsm*, %struct.fsm** %6, align 8
  %344 = call i32 %342(%struct.fsm* %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %368

346:                                              ; preds = %324
  %347 = load i32, i32* @LogWARN, align 4
  %348 = load %struct.fsm*, %struct.fsm** %6, align 8
  %349 = getelementptr inbounds %struct.fsm, %struct.fsm* %348, i32 0, i32 0
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %354 = load i32, i32* %12, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %353, i64 %355
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @protoname(i32 %359)
  %361 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %347, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %352, i32 %360)
  %362 = load %struct.fsm*, %struct.fsm** %6, align 8
  %363 = getelementptr inbounds %struct.fsm, %struct.fsm* %362, i32 0, i32 0
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 0
  %367 = call i32 @fsm_Close(i32* %366)
  br label %368

368:                                              ; preds = %346, %324
  br label %369

369:                                              ; preds = %109, %368, %323, %204
  br label %370

370:                                              ; preds = %369, %108
  br label %25

371:                                              ; preds = %33, %25
  %372 = load i32, i32* %9, align 4
  %373 = load i32, i32* @MODE_NOP, align 4
  %374 = icmp ne i32 %372, %373
  br i1 %374, label %375, label %407

375:                                              ; preds = %371
  %376 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %377 = call i32 @fsm_opt_normalise(%struct.fsm_decode* %376)
  %378 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %379 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %382 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %380, %383
  br i1 %384, label %393, label %385

385:                                              ; preds = %375
  %386 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %387 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %386, i32 0, i32 2
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %390 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %389, i32 0, i32 3
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %388, %391
  br i1 %392, label %393, label %406

393:                                              ; preds = %385, %375
  %394 = load %struct.ccp*, %struct.ccp** %11, align 8
  %395 = getelementptr inbounds %struct.ccp, %struct.ccp* %394, i32 0, i32 4
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 1
  %397 = load i32*, i32** %396, align 8
  %398 = icmp eq i32* %397, null
  br i1 %398, label %399, label %405

399:                                              ; preds = %393
  %400 = load %struct.ccp*, %struct.ccp** %11, align 8
  %401 = getelementptr inbounds %struct.ccp, %struct.ccp* %400, i32 0, i32 1
  store i32 -1, i32* %401, align 4
  %402 = load %struct.ccp*, %struct.ccp** %11, align 8
  %403 = getelementptr inbounds %struct.ccp, %struct.ccp* %402, i32 0, i32 4
  %404 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %403, i32 0, i32 0
  store i32 -1, i32* %404, align 8
  br label %405

405:                                              ; preds = %399, %393
  br label %406

406:                                              ; preds = %405, %385
  br label %407

407:                                              ; preds = %406, %371
  ret void
}

declare dso_local %struct.ccp* @fsm2ccp(%struct.fsm*) #1

declare dso_local %struct.fsm_opt* @fsm_readopt(i32**) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i32 @protoname(i32) #1

declare dso_local i32 @fsm_rej(%struct.fsm_decode*, %struct.fsm_opt*) #1

declare dso_local i32 @IsAccepted(i32) #1

declare dso_local i32 @memcpy(%struct.fsm_opt*, %struct.fsm_opt*, i32) #1

declare dso_local i32 @fsm_nak(%struct.fsm_decode*, %struct.fsm_opt*) #1

declare dso_local i32 @fsm_ack(%struct.fsm_decode*, %struct.fsm_opt*) #1

declare dso_local i32 @fsm_Close(i32*) #1

declare dso_local i32 @fsm_opt_normalise(%struct.fsm_decode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
