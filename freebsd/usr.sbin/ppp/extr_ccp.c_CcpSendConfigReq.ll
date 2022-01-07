; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_CcpSendConfigReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_CcpSendConfigReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_9__, i64 (%struct.fsm*)* }
%struct.TYPE_9__ = type { i32 (i32, %struct.TYPE_13__*, %struct.TYPE_14__*)* }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.fsm = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ccp = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32, %struct.ccp_opt* }
%struct.ccp_opt = type { i32, %struct.ccp_opt*, %struct.TYPE_13__ }

@NALGORITHMS = common dso_local global i32 0, align 4
@algorithm = common dso_local global %struct.TYPE_15__** null, align 8
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Not enough memory for CCP REQ !\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: CCP REQ buffer overrun !\0A\00", align 1
@CODE_CONFIGREQ = common dso_local global i32 0, align 4
@MB_CCPOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*)* @CcpSendConfigReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CcpSendConfigReq(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  %3 = alloca %struct.ccp*, align 8
  %4 = alloca %struct.ccp_opt**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [100 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %9 = load %struct.fsm*, %struct.fsm** %2, align 8
  %10 = call %struct.ccp* @fsm2ccp(%struct.fsm* %9)
  store %struct.ccp* %10, %struct.ccp** %3, align 8
  %11 = getelementptr inbounds [100 x i32], [100 x i32]* %6, i64 0, i64 0
  store i32* %11, i32** %5, align 8
  %12 = load %struct.ccp*, %struct.ccp** %3, align 8
  %13 = getelementptr inbounds %struct.ccp, %struct.ccp* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store %struct.ccp_opt** %14, %struct.ccp_opt*** %4, align 8
  %15 = load %struct.ccp*, %struct.ccp** %3, align 8
  %16 = getelementptr inbounds %struct.ccp, %struct.ccp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.ccp*, %struct.ccp** %3, align 8
  %21 = getelementptr inbounds %struct.ccp, %struct.ccp* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load %struct.ccp_opt*, %struct.ccp_opt** %22, align 8
  %24 = icmp eq %struct.ccp_opt* %23, null
  br label %25

25:                                               ; preds = %19, %1
  %26 = phi i1 [ false, %1 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ccp*, %struct.ccp** %3, align 8
  %29 = getelementptr inbounds %struct.ccp, %struct.ccp* %28, i32 0, i32 1
  store i32 -1, i32* %29, align 8
  %30 = load %struct.ccp*, %struct.ccp** %3, align 8
  %31 = getelementptr inbounds %struct.ccp, %struct.ccp* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %239, %25
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @NALGORITHMS, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %242

37:                                               ; preds = %33
  %38 = load %struct.ccp*, %struct.ccp** %3, align 8
  %39 = getelementptr inbounds %struct.ccp, %struct.ccp* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @algorithm, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %42, i64 %44
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %41, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @IsEnabled(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %238

53:                                               ; preds = %37
  %54 = load %struct.ccp*, %struct.ccp** %3, align 8
  %55 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @algorithm, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %55, i64 %57
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @REJECTED(%struct.ccp* %54, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %238, label %64

64:                                               ; preds = %53
  %65 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @algorithm, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %65, i64 %67
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 3
  %71 = load i64 (%struct.fsm*)*, i64 (%struct.fsm*)** %70, align 8
  %72 = load %struct.fsm*, %struct.fsm** %2, align 8
  %73 = call i64 %71(%struct.fsm* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %238

75:                                               ; preds = %64
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %115, label %78

78:                                               ; preds = %75
  %79 = load %struct.ccp*, %struct.ccp** %3, align 8
  %80 = getelementptr inbounds %struct.ccp, %struct.ccp* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  store %struct.ccp_opt** %81, %struct.ccp_opt*** %4, align 8
  br label %82

82:                                               ; preds = %110, %78
  %83 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %84 = load %struct.ccp_opt*, %struct.ccp_opt** %83, align 8
  %85 = icmp ne %struct.ccp_opt* %84, null
  br i1 %85, label %86, label %114

86:                                               ; preds = %82
  %87 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %88 = load %struct.ccp_opt*, %struct.ccp_opt** %87, align 8
  %89 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @algorithm, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %93, i64 %95
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %92, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %86
  %102 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %103 = load %struct.ccp_opt*, %struct.ccp_opt** %102, align 8
  %104 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %114

109:                                              ; preds = %101, %86
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %112 = load %struct.ccp_opt*, %struct.ccp_opt** %111, align 8
  %113 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %112, i32 0, i32 1
  store %struct.ccp_opt** %113, %struct.ccp_opt*** %4, align 8
  br label %82

114:                                              ; preds = %108, %82
  br label %115

115:                                              ; preds = %114, %75
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %120 = load %struct.ccp_opt*, %struct.ccp_opt** %119, align 8
  %121 = icmp eq %struct.ccp_opt* %120, null
  br i1 %121, label %122, label %177

122:                                              ; preds = %118, %115
  %123 = call i64 @malloc(i32 24)
  %124 = inttoptr i64 %123 to %struct.ccp_opt*
  %125 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  store %struct.ccp_opt* %124, %struct.ccp_opt** %125, align 8
  %126 = icmp eq %struct.ccp_opt* %124, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load i32, i32* @LogERROR, align 4
  %129 = load %struct.fsm*, %struct.fsm** %2, align 8
  %130 = getelementptr inbounds %struct.fsm, %struct.fsm* %129, i32 0, i32 1
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @log_Printf(i32 %128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %133)
  br label %242

135:                                              ; preds = %122
  %136 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @algorithm, align 8
  %137 = load i32, i32* %7, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %136, i64 %138
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %144 = load %struct.ccp_opt*, %struct.ccp_opt** %143, align 8
  %145 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i32 %142, i32* %147, align 8
  %148 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %149 = load %struct.ccp_opt*, %struct.ccp_opt** %148, align 8
  %150 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  store i32 2, i32* %152, align 4
  %153 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %154 = load %struct.ccp_opt*, %struct.ccp_opt** %153, align 8
  %155 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %154, i32 0, i32 1
  store %struct.ccp_opt* null, %struct.ccp_opt** %155, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %158 = load %struct.ccp_opt*, %struct.ccp_opt** %157, align 8
  %159 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  %160 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @algorithm, align 8
  %161 = load i32, i32* %7, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %160, i64 %162
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32 (i32, %struct.TYPE_13__*, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_13__*, %struct.TYPE_14__*)** %166, align 8
  %168 = load %struct.fsm*, %struct.fsm** %2, align 8
  %169 = getelementptr inbounds %struct.fsm, %struct.fsm* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %172 = load %struct.ccp_opt*, %struct.ccp_opt** %171, align 8
  %173 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %172, i32 0, i32 2
  %174 = load %struct.ccp*, %struct.ccp** %3, align 8
  %175 = getelementptr inbounds %struct.ccp, %struct.ccp* %174, i32 0, i32 3
  %176 = call i32 %167(i32 %170, %struct.TYPE_13__* %173, %struct.TYPE_14__* %175)
  br label %177

177:                                              ; preds = %135, %118
  %178 = load i32*, i32** %5, align 8
  %179 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %180 = load %struct.ccp_opt*, %struct.ccp_opt** %179, align 8
  %181 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %178, i64 %185
  %187 = getelementptr inbounds [100 x i32], [100 x i32]* %6, i64 0, i64 0
  %188 = getelementptr inbounds i32, i32* %187, i64 400
  %189 = icmp ugt i32* %186, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %177
  %191 = load i32, i32* @LogERROR, align 4
  %192 = load %struct.fsm*, %struct.fsm** %2, align 8
  %193 = getelementptr inbounds %struct.fsm, %struct.fsm* %192, i32 0, i32 1
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @log_Printf(i32 %191, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %196)
  br label %242

198:                                              ; preds = %177
  %199 = load i32*, i32** %5, align 8
  %200 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %201 = load %struct.ccp_opt*, %struct.ccp_opt** %200, align 8
  %202 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %201, i32 0, i32 2
  %203 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %204 = load %struct.ccp_opt*, %struct.ccp_opt** %203, align 8
  %205 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @memcpy(i32* %199, %struct.TYPE_13__* %202, i32 %208)
  %210 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %211 = load %struct.ccp_opt*, %struct.ccp_opt** %210, align 8
  %212 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %5, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %5, align 8
  %219 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %220 = load %struct.ccp_opt*, %struct.ccp_opt** %219, align 8
  %221 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.ccp*, %struct.ccp** %3, align 8
  %226 = getelementptr inbounds %struct.ccp, %struct.ccp* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* %7, align 4
  %228 = load %struct.ccp*, %struct.ccp** %3, align 8
  %229 = getelementptr inbounds %struct.ccp, %struct.ccp* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  store i32 %227, i32* %230, align 8
  %231 = load i32, i32* %8, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %198
  %234 = load %struct.ccp_opt**, %struct.ccp_opt*** %4, align 8
  %235 = load %struct.ccp_opt*, %struct.ccp_opt** %234, align 8
  %236 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %235, i32 0, i32 1
  store %struct.ccp_opt** %236, %struct.ccp_opt*** %4, align 8
  br label %237

237:                                              ; preds = %233, %198
  br label %238

238:                                              ; preds = %237, %64, %53, %37
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %7, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %7, align 4
  br label %33

242:                                              ; preds = %190, %127, %33
  %243 = load %struct.fsm*, %struct.fsm** %2, align 8
  %244 = load i32, i32* @CODE_CONFIGREQ, align 4
  %245 = load %struct.fsm*, %struct.fsm** %2, align 8
  %246 = getelementptr inbounds %struct.fsm, %struct.fsm* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = getelementptr inbounds [100 x i32], [100 x i32]* %6, i64 0, i64 0
  %249 = load i32*, i32** %5, align 8
  %250 = getelementptr inbounds [100 x i32], [100 x i32]* %6, i64 0, i64 0
  %251 = ptrtoint i32* %249 to i64
  %252 = ptrtoint i32* %250 to i64
  %253 = sub i64 %251, %252
  %254 = sdiv exact i64 %253, 4
  %255 = trunc i64 %254 to i32
  %256 = load i32, i32* @MB_CCPOUT, align 4
  %257 = call i32 @fsm_Output(%struct.fsm* %243, i32 %244, i32 %247, i32* %248, i32 %255, i32 %256)
  ret void
}

declare dso_local %struct.ccp* @fsm2ccp(%struct.fsm*) #1

declare dso_local i64 @IsEnabled(i32) #1

declare dso_local i32 @REJECTED(%struct.ccp*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @fsm_Output(%struct.fsm*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
