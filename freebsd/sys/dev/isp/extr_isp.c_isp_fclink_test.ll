; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_fclink_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_fclink_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, i32, i64, i32, i64, i64, i32 }
%struct.TYPE_10__ = type { i64 }

@LOOP_HAVE_LINK = common dso_local global i64 0, align 8
@LOOP_LTEST_DONE = common dso_local global i64 0, align 8
@ISP_LOG_SANCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Chan %d FC link test\00", align 1
@FW_READY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Chan %d Firmware is not ready (%s)\00", align 1
@MBOX_GET_LOOP_ID = common dso_local global i32 0, align 4
@MBLOGALL = common dso_local global i32 0, align 4
@MBOX_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@TOPO_FL_PORT = common dso_local global i32 0, align 4
@TOPO_NL_PORT = common dso_local global i32 0, align 4
@TOPO_PTP_STUB = common dso_local global i32 0, align 4
@TOPO_F_PORT = common dso_local global i32 0, align 4
@alpa_map = common dso_local global i64* null, align 8
@LOOP_TESTING_LINK = common dso_local global i64 0, align 8
@NPH_FL_ID = common dso_local global i32 0, align 4
@FL_ID = common dso_local global i32 0, align 4
@ISP_LOGWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"fabric topology, but cannot get info about fabric controller (0x%x)\00", align 1
@NPH_SNS_ID = common dso_local global i32 0, align 4
@SNS_ID = common dso_local global i32 0, align 4
@ISP_ROLE_TARGET = common dso_local global i64 0, align 8
@MBOX_GET_SET_DATA_RATE = common dso_local global i32 0, align 4
@MBGSD_GET_RATE = common dso_local global i32 0, align 4
@MBGSD_10GB = common dso_local global i32 0, align 4
@MBGSD_32GB = common dso_local global i32 0, align 4
@MBGSD_16GB = common dso_local global i32 0, align 4
@MBGSD_8GB = common dso_local global i32 0, align 4
@MBGSD_4GB = common dso_local global i32 0, align 4
@MBGSD_2GB = common dso_local global i32 0, align 4
@MBGSD_1GB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Chan %d FC link test aborted\00", align 1
@ISP_LOGCONFIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Chan %d WWPN %016jx WWNN %016jx\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Chan %d %dGb %s PortID 0x%06x LoopID 0x%02x\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Chan %d FC link test done\00", align 1
@LOOP_HAVE_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @isp_fclink_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_fclink_test(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.TYPE_11__* @FCPARAM(i32* %18, i32 %19)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %12, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LOOP_HAVE_LINK, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %504

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LOOP_LTEST_DONE, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %504

34:                                               ; preds = %27
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %35, i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = call i32 @GET_NANOTIME(i32* %14)
  br label %40

40:                                               ; preds = %34, %68
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @isp_fw_state(i32* %43, i32 %44)
  %46 = call i32 @isp_change_fw_state(i32* %41, i32 %42, i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FW_READY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %71

53:                                               ; preds = %40
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LOOP_HAVE_LINK, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %460

60:                                               ; preds = %53
  %61 = call i32 @GET_NANOTIME(i32* %15)
  %62 = call i32 @NANOTIME_SUB(i32* %15, i32* %14)
  %63 = sdiv i32 %62, 1000
  %64 = add nsw i32 %63, 1000
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %71

68:                                               ; preds = %60
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @ISP_SLEEP(i32* %69, i32 1000)
  br label %40

71:                                               ; preds = %67, %52
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @FW_READY, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @isp_fc_fw_statename(i64 %83)
  %85 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %78, i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %84)
  store i32 -1, i32* %4, align 4
  br label %504

86:                                               ; preds = %71
  %87 = load i32, i32* @MBOX_GET_LOOP_ID, align 4
  %88 = load i32, i32* @MBLOGALL, align 4
  %89 = call i32 @MBSINIT(%struct.TYPE_9__* %8, i32 %87, i32 %88, i32 0)
  %90 = load i32, i32* %6, align 4
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 9
  store i32 %90, i32* %93, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @isp_mboxcmd(i32* %94, %struct.TYPE_9__* %8)
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %86
  store i32 -1, i32* %4, align 4
  br label %504

103:                                              ; preds = %86
  %104 = load i32*, i32** %5, align 8
  %105 = call i64 @IS_2100(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load i32*, i32** %5, align 8
  %109 = call i64 @ISP_FW_NEWER_THAN(i32* %108, i32 1, i32 15, i32 37)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* @TOPO_FL_PORT, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  br label %119

115:                                              ; preds = %107
  %116 = load i32, i32* @TOPO_NL_PORT, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %111
  br label %138

120:                                              ; preds = %103
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 6
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* @TOPO_NL_PORT, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* @TOPO_PTP_STUB, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128, %120
  %133 = load i32, i32* @TOPO_PTP_STUB, align 4
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %132, %128
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %119
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 16
  %148 = or i32 %142, %147
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @TOPO_IS_FABRIC(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %138
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 255
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  br label %208

164:                                              ; preds = %138
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @TOPO_F_PORT, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %207

170:                                              ; preds = %164
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  store i64 %174, i64* %17, align 8
  store i32 0, i32* %9, align 4
  br label %175

175:                                              ; preds = %192, %170
  %176 = load i64*, i64** @alpa_map, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %175
  %183 = load i64*, i64** @alpa_map, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %17, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %195

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %175

195:                                              ; preds = %190, %175
  %196 = load i64*, i64** @alpa_map, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %195
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %202, %195
  br label %207

207:                                              ; preds = %206, %164
  br label %208

208:                                              ; preds = %207, %156
  %209 = load i64, i64* @LOOP_TESTING_LINK, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @TOPO_F_PORT, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %223, label %217

217:                                              ; preds = %208
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @TOPO_FL_PORT, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %348

223:                                              ; preds = %217, %208
  %224 = load i32*, i32** %5, align 8
  %225 = call i64 @IS_24XX(i32* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = load i32, i32* @NPH_FL_ID, align 4
  br label %231

229:                                              ; preds = %223
  %230 = load i32, i32* @FL_ID, align 4
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi i32 [ %228, %227 ], [ %230, %229 ]
  store i32 %232, i32* %11, align 4
  %233 = load i32*, i32** %5, align 8
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* %11, align 4
  %236 = call i32 @isp_getpdb(i32* %233, i32 %234, i32 %235, %struct.TYPE_10__* %13)
  store i32 %236, i32* %10, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %231
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %260

243:                                              ; preds = %239, %231
  %244 = load i32*, i32** %5, align 8
  %245 = call i64 @IS_2100(i32* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = load i32, i32* @TOPO_NL_PORT, align 4
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  br label %259

251:                                              ; preds = %243
  %252 = load i32*, i32** %5, align 8
  %253 = load i32, i32* @ISP_LOGWARN, align 4
  %254 = load i32, i32* %10, align 4
  %255 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %252, i32 %253, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* @TOPO_PTP_STUB, align 4
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  br label %259

259:                                              ; preds = %251, %247
  br label %349

260:                                              ; preds = %239
  %261 = load i32*, i32** %5, align 8
  %262 = call i64 @IS_24XX(i32* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %326

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 7
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 5
  store i32 %268, i32* %270, align 4
  %271 = load i32, i32* @NPH_SNS_ID, align 4
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 10
  store i32 %271, i32* %273, align 8
  %274 = load i32*, i32** %5, align 8
  %275 = load i32, i32* %6, align 4
  %276 = call i32 @isp_register_fc4_type(i32* %274, i32 %275)
  store i32 %276, i32* %10, align 4
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @LOOP_TESTING_LINK, align 8
  %281 = icmp slt i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %264
  br label %460

283:                                              ; preds = %264
  %284 = load i32, i32* %10, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  br label %349

287:                                              ; preds = %283
  %288 = load i32*, i32** %5, align 8
  %289 = load i32, i32* %6, align 4
  %290 = call i32 @isp_register_fc4_features_24xx(i32* %288, i32 %289)
  store i32 %290, i32* %10, align 4
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @LOOP_TESTING_LINK, align 8
  %295 = icmp slt i64 %293, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %287
  br label %460

297:                                              ; preds = %287
  %298 = load i32, i32* %10, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  br label %349

301:                                              ; preds = %297
  %302 = load i32*, i32** %5, align 8
  %303 = load i32, i32* %6, align 4
  %304 = call i32 @isp_register_port_name_24xx(i32* %302, i32 %303)
  store i32 %304, i32* %10, align 4
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @LOOP_TESTING_LINK, align 8
  %309 = icmp slt i64 %307, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %301
  br label %460

311:                                              ; preds = %301
  %312 = load i32, i32* %10, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  br label %349

315:                                              ; preds = %311
  %316 = load i32*, i32** %5, align 8
  %317 = load i32, i32* %6, align 4
  %318 = call i32 @isp_register_node_name_24xx(i32* %316, i32 %317)
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @LOOP_TESTING_LINK, align 8
  %323 = icmp slt i64 %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %315
  br label %460

325:                                              ; preds = %315
  br label %347

326:                                              ; preds = %260
  %327 = load i32, i32* @SNS_ID, align 4
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 10
  store i32 %327, i32* %329, align 8
  %330 = load i32*, i32** %5, align 8
  %331 = load i32, i32* %6, align 4
  %332 = call i32 @isp_register_fc4_type(i32* %330, i32 %331)
  store i32 %332, i32* %10, align 4
  %333 = load i32, i32* %10, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %326
  br label %349

336:                                              ; preds = %326
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 6
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @ISP_ROLE_TARGET, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %336
  %343 = load i32*, i32** %5, align 8
  %344 = load i32, i32* %6, align 4
  %345 = call i32 @isp_send_change_request(i32* %343, i32 %344)
  br label %346

346:                                              ; preds = %342, %336
  br label %347

347:                                              ; preds = %346, %325
  br label %348

348:                                              ; preds = %347, %217
  br label %349

349:                                              ; preds = %348, %335, %314, %300, %286, %259
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 7
  store i32 1, i32* %351, align 8
  %352 = load i32*, i32** %5, align 8
  %353 = call i64 @IS_23XX(i32* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %359, label %355

355:                                              ; preds = %349
  %356 = load i32*, i32** %5, align 8
  %357 = call i64 @IS_24XX(i32* %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %453

359:                                              ; preds = %355, %349
  %360 = load i32, i32* @MBOX_GET_SET_DATA_RATE, align 4
  %361 = load i32, i32* @MBLOGALL, align 4
  %362 = call i32 @MBSINIT(%struct.TYPE_9__* %8, i32 %360, i32 %361, i32 3000000)
  %363 = load i32, i32* @MBGSD_GET_RATE, align 4
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 1
  store i32 %363, i32* %366, align 4
  %367 = load i32*, i32** %5, align 8
  %368 = call i32 @isp_mboxcmd(i32* %367, %struct.TYPE_9__* %8)
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %452

375:                                              ; preds = %359
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 1
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* @MBGSD_10GB, align 4
  %381 = icmp eq i32 %379, %380
  br i1 %381, label %382, label %385

382:                                              ; preds = %375
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 7
  store i32 10, i32* %384, align 8
  br label %451

385:                                              ; preds = %375
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %387 = load i32*, i32** %386, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 1
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @MBGSD_32GB, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %395

392:                                              ; preds = %385
  %393 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 7
  store i32 32, i32* %394, align 8
  br label %450

395:                                              ; preds = %385
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 1
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* @MBGSD_16GB, align 4
  %401 = icmp eq i32 %399, %400
  br i1 %401, label %402, label %405

402:                                              ; preds = %395
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 7
  store i32 16, i32* %404, align 8
  br label %449

405:                                              ; preds = %395
  %406 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %407 = load i32*, i32** %406, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 1
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @MBGSD_8GB, align 4
  %411 = icmp eq i32 %409, %410
  br i1 %411, label %412, label %415

412:                                              ; preds = %405
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %413, i32 0, i32 7
  store i32 8, i32* %414, align 8
  br label %448

415:                                              ; preds = %405
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 1
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* @MBGSD_4GB, align 4
  %421 = icmp eq i32 %419, %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %415
  %423 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %424 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %423, i32 0, i32 7
  store i32 4, i32* %424, align 8
  br label %447

425:                                              ; preds = %415
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 1
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* @MBGSD_2GB, align 4
  %431 = icmp eq i32 %429, %430
  br i1 %431, label %432, label %435

432:                                              ; preds = %425
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 7
  store i32 2, i32* %434, align 8
  br label %446

435:                                              ; preds = %425
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %437 = load i32*, i32** %436, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 1
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* @MBGSD_1GB, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %442, label %445

442:                                              ; preds = %435
  %443 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 7
  store i32 1, i32* %444, align 8
  br label %445

445:                                              ; preds = %442, %435
  br label %446

446:                                              ; preds = %445, %432
  br label %447

447:                                              ; preds = %446, %422
  br label %448

448:                                              ; preds = %447, %412
  br label %449

449:                                              ; preds = %448, %402
  br label %450

450:                                              ; preds = %449, %392
  br label %451

451:                                              ; preds = %450, %382
  br label %452

452:                                              ; preds = %451, %359
  br label %453

453:                                              ; preds = %452, %355
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @LOOP_TESTING_LINK, align 8
  %458 = icmp slt i64 %456, %457
  br i1 %458, label %459, label %465

459:                                              ; preds = %453
  br label %460

460:                                              ; preds = %459, %324, %310, %296, %282, %59
  %461 = load i32*, i32** %5, align 8
  %462 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %463 = load i32, i32* %6, align 4
  %464 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %461, i32 %462, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %463)
  store i32 1, i32* %4, align 4
  br label %504

465:                                              ; preds = %453
  %466 = load i64, i64* @LOOP_LTEST_DONE, align 8
  %467 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %468 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %467, i32 0, i32 0
  store i64 %466, i64* %468, align 8
  %469 = load i32*, i32** %5, align 8
  %470 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %471 = load i32, i32* @ISP_LOGCONFIG, align 4
  %472 = or i32 %470, %471
  %473 = load i32, i32* %6, align 4
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %475 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %474, i32 0, i32 9
  %476 = load i64, i64* %475, align 8
  %477 = trunc i64 %476 to i32
  %478 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %479 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %478, i32 0, i32 8
  %480 = load i64, i64* %479, align 8
  %481 = trunc i64 %480 to i32
  %482 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %469, i32 %472, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %473, i32 %477, i32 %481)
  %483 = load i32*, i32** %5, align 8
  %484 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %485 = load i32, i32* @ISP_LOGCONFIG, align 4
  %486 = or i32 %484, %485
  %487 = load i32, i32* %6, align 4
  %488 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %489 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %488, i32 0, i32 7
  %490 = load i32, i32* %489, align 8
  %491 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %492 = call i32 @isp_fc_toponame(%struct.TYPE_11__* %491)
  %493 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %494 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %493, i32 0, i32 3
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %497 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 8
  %499 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %483, i32 %486, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %487, i32 %490, i32 %492, i32 %495, i32 %498)
  %500 = load i32*, i32** %5, align 8
  %501 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %502 = load i32, i32* %6, align 4
  %503 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %500, i32 %501, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %502)
  store i32 0, i32* %4, align 4
  br label %504

504:                                              ; preds = %465, %460, %102, %77, %33, %26
  %505 = load i32, i32* %4, align 4
  ret i32 %505
}

declare dso_local %struct.TYPE_11__* @FCPARAM(i32*, i32) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @GET_NANOTIME(i32*) #1

declare dso_local i32 @isp_change_fw_state(i32*, i32, i32) #1

declare dso_local i32 @isp_fw_state(i32*, i32) #1

declare dso_local i32 @NANOTIME_SUB(i32*, i32*) #1

declare dso_local i32 @ISP_SLEEP(i32*, i32) #1

declare dso_local i32 @isp_fc_fw_statename(i64) #1

declare dso_local i32 @MBSINIT(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @isp_mboxcmd(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @IS_2100(i32*) #1

declare dso_local i64 @ISP_FW_NEWER_THAN(i32*, i32, i32, i32) #1

declare dso_local i32 @TOPO_IS_FABRIC(i32) #1

declare dso_local i64 @IS_24XX(i32*) #1

declare dso_local i32 @isp_getpdb(i32*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @isp_register_fc4_type(i32*, i32) #1

declare dso_local i32 @isp_register_fc4_features_24xx(i32*, i32) #1

declare dso_local i32 @isp_register_port_name_24xx(i32*, i32) #1

declare dso_local i32 @isp_register_node_name_24xx(i32*, i32) #1

declare dso_local i32 @isp_send_change_request(i32*, i32) #1

declare dso_local i64 @IS_23XX(i32*) #1

declare dso_local i32 @isp_fc_toponame(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
