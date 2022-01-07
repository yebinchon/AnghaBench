; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_scan_fabric.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_scan_fabric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32, i64, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i64, i32, i32 }

@LOOP_LSCAN_DONE = common dso_local global i64 0, align 8
@LOOP_FSCAN_DONE = common dso_local global i64 0, align 8
@ISP_LOG_SANCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Chan %d FC fabric scan\00", align 1
@LOOP_SCANNING_FABRIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Chan %d FC fabric scan done (no fabric)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Chan %d FC fabric scan aborted\00", align 1
@NPH_FL_ID = common dso_local global i32 0, align 4
@FL_ID = common dso_local global i32 0, align 4
@MBOX_NOT_LOGGED_IN = common dso_local global i32 0, align 4
@LOOP_LTEST_DONE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Chan %d FC fabric scan done (bad)\00", align 1
@LS_ACC = common dso_local global i64 0, align 8
@ISP_LOGWARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"Chan %d Fabric Nameserver rejected GID_PT (Reason=0x%x Expl=0x%x)\00", align 1
@NGENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"fabric too big for scratch area: increase ISP_FC_SCRLEN\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Chan %d Got %d ports back from name server\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Chan %d removing duplicate PortID 0x%06x entry from list\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Chan %d Checking fabric port 0x%06x\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Chan %d Port at idx %d is zero\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Chan %d Port 0x%06x is our\00", align 1
@ISP_LOGERR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [58 x i8] c"Chan %d Port 0x%06x@0x%04x [%d] is not probational (0x%x)\00", align 1
@FC_PORTDB_STATE_ZOMBIE = common dso_local global i64 0, align 8
@FC_PORTDB_STATE_DEAD = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [45 x i8] c"Chan %d Port 0x%06x handle 0x%x is dead (%d)\00", align 1
@ISP_ROLE_INITIATOR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"Chan %d Port 0x%06x is not logged in\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Chan %d Port 0x%06x is not an FCP target\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Chan %d Port 0x%06x is not FCP\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Chan %d FC fabric scan done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @isp_scan_fabric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_scan_fabric(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.TYPE_13__* @FCPARAM(i32* %18, i32 %19)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %6, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LOOP_LSCAN_DONE, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %584

27:                                               ; preds = %2
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LOOP_FSCAN_DONE, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %584

34:                                               ; preds = %27
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %35, i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* @LOOP_SCANNING_FABRIC, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @TOPO_IS_FABRIC(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %34
  %48 = load i64, i64* @LOOP_FSCAN_DONE, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %51, i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 0, i32* %3, align 4
  br label %584

55:                                               ; preds = %34
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LOOP_SCANNING_FABRIC, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %575, %560, %480, %141, %114, %61
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @FC_SCRATCH_RELEASE(i32* %63, i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %66, i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  store i32 1, i32* %3, align 4
  br label %584

70:                                               ; preds = %55
  %71 = load i32*, i32** %4, align 8
  %72 = call i64 @IS_24XX(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @NPH_FL_ID, align 4
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @FL_ID, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %9, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @isp_getpdb(i32* %80, i32 %81, i32 %82, i32* %10)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = and i32 %84, 65535
  %86 = load i32, i32* @MBOX_NOT_LOGGED_IN, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @isp_dump_chip_portdb(i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %78
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i8*, i8** @LOOP_LTEST_DONE, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %440, %95
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %101, i32 %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  store i32 -1, i32* %3, align 4
  br label %584

105:                                              ; preds = %92
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @isp_gid_pt(i32* %106, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @LOOP_SCANNING_FABRIC, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %62

115:                                              ; preds = %105
  %116 = load i32, i32* %13, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i64, i64* @LOOP_FSCAN_DONE, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  store i32 -1, i32* %3, align 4
  br label %584

122:                                              ; preds = %115
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i8*, i8** @LOOP_LTEST_DONE, align 8
  %127 = ptrtoint i8* %126 to i64
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  store i32 -1, i32* %3, align 4
  br label %584

130:                                              ; preds = %122
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %135, %struct.TYPE_11__** %14, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @LOOP_SCANNING_FABRIC, align 8
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %62

142:                                              ; preds = %131
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @LS_ACC, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %187

149:                                              ; preds = %142
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 9
  br i1 %154, label %155, label %169

155:                                              ; preds = %149
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 7
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 10
  br i1 %166, label %167, label %169

167:                                              ; preds = %161, %155
  %168 = load i32, i32* @ISP_LOG_SANCFG, align 4
  store i32 %168, i32* %15, align 4
  br label %171

169:                                              ; preds = %161, %149
  %170 = load i32, i32* @ISP_LOGWARN, align 4
  store i32 %170, i32* %15, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = load i32*, i32** %4, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %5, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %172, i32 %173, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %174, i32 %178, i32 %182)
  %184 = load i64, i64* @LOOP_FSCAN_DONE, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  store i32 -1, i32* %3, align 4
  br label %584

187:                                              ; preds = %142
  store i32 0, i32* %11, align 4
  br label %188

188:                                              ; preds = %206, %187
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @NGENT, align 4
  %191 = sub nsw i32 %190, 1
  %192 = icmp slt i32 %189, %191
  br i1 %192, label %193, label %209

193:                                              ; preds = %188
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = and i32 %201, 128
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %193
  br label %209

205:                                              ; preds = %193
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %11, align 4
  br label %188

209:                                              ; preds = %204, %188
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = and i32 %217, 128
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %209
  %221 = load i32*, i32** %4, align 8
  %222 = load i32, i32* @ISP_LOGWARN, align 4
  %223 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %221, i32 %222, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %224

224:                                              ; preds = %220, %209
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %12, align 4
  %227 = load i32*, i32** %4, align 8
  %228 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* %12, align 4
  %231 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %227, i32 %228, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %229, i32 %230)
  store i32 0, i32* %11, align 4
  br label %232

232:                                              ; preds = %358, %224
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %361

236:                                              ; preds = %232
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = shl i32 %246, 16
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %249, align 8
  %251 = load i32, i32* %11, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = shl i32 %257, 8
  %259 = or i32 %247, %258
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %261, align 8
  %263 = load i32, i32* %11, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 2
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %259, %269
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* %11, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %16, align 4
  br label %273

273:                                              ; preds = %317, %236
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* %12, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %320

277:                                              ; preds = %273
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %279, align 8
  %281 = load i32, i32* %16, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 0
  %287 = load i32, i32* %286, align 4
  %288 = shl i32 %287, 16
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %290, align 8
  %292 = load i32, i32* %16, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = shl i32 %298, 8
  %300 = or i32 %288, %299
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %302, align 8
  %304 = load i32, i32* %16, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 2
  %310 = load i32, i32* %309, align 4
  %311 = or i32 %300, %310
  store i32 %311, i32* %17, align 4
  %312 = load i32, i32* %17, align 4
  %313 = load i32, i32* %8, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %277
  br label %320

316:                                              ; preds = %277
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %16, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %16, align 4
  br label %273

320:                                              ; preds = %315, %273
  %321 = load i32, i32* %16, align 4
  %322 = load i32, i32* %12, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %357

324:                                              ; preds = %320
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %326, align 8
  %328 = load i32, i32* %16, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 0
  store i32 0, i32* %333, align 4
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %335, align 8
  %337 = load i32, i32* %16, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 1
  store i32 0, i32* %342, align 4
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %344, align 8
  %346 = load i32, i32* %16, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 1
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 2
  store i32 0, i32* %351, align 4
  %352 = load i32*, i32** %4, align 8
  %353 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %354 = load i32, i32* %5, align 4
  %355 = load i32, i32* %8, align 4
  %356 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %352, i32 %353, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %354, i32 %355)
  br label %357

357:                                              ; preds = %324, %320
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %11, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %11, align 4
  br label %232

361:                                              ; preds = %232
  %362 = load i32*, i32** %4, align 8
  %363 = load i32, i32* %5, align 4
  %364 = call i32 @isp_mark_portdb(i32* %362, i32 %363)
  store i32 0, i32* %11, align 4
  br label %365

365:                                              ; preds = %566, %361
  %366 = load i32, i32* %11, align 4
  %367 = load i32, i32* %12, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %569

369:                                              ; preds = %365
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 0
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** %371, align 8
  %373 = load i32, i32* %11, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 0
  %379 = load i32, i32* %378, align 4
  %380 = shl i32 %379, 16
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %382, align 8
  %384 = load i32, i32* %11, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 1
  %388 = load i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 1
  %390 = load i32, i32* %389, align 4
  %391 = shl i32 %390, 8
  %392 = or i32 %380, %391
  %393 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** %394, align 8
  %396 = load i32, i32* %11, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 2
  %402 = load i32, i32* %401, align 4
  %403 = or i32 %392, %402
  store i32 %403, i32* %8, align 4
  %404 = load i32*, i32** %4, align 8
  %405 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %406 = load i32, i32* %5, align 4
  %407 = load i32, i32* %8, align 4
  %408 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %404, i32 %405, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %406, i32 %407)
  %409 = load i32, i32* %8, align 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %369
  %412 = load i32*, i32** %4, align 8
  %413 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %414 = load i32, i32* %5, align 4
  %415 = load i32, i32* %11, align 4
  %416 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %412, i32 %413, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %414, i32 %415)
  br label %566

417:                                              ; preds = %369
  %418 = load i32, i32* %8, align 4
  %419 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 8
  %422 = icmp eq i32 %418, %421
  br i1 %422, label %423, label %429

423:                                              ; preds = %417
  %424 = load i32*, i32** %4, align 8
  %425 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %426 = load i32, i32* %5, align 4
  %427 = load i32, i32* %8, align 4
  %428 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %424, i32 %425, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %426, i32 %427)
  br label %566

429:                                              ; preds = %417
  %430 = load i32*, i32** %4, align 8
  %431 = load i32, i32* %5, align 4
  %432 = load i32, i32* %8, align 4
  %433 = call i64 @isp_find_pdb_by_portid(i32* %430, i32 %431, i32 %432, %struct.TYPE_12__** %7)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %501

435:                                              ; preds = %429
  %436 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 8
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %461, label %440

440:                                              ; preds = %435
  %441 = load i32*, i32** %4, align 8
  %442 = load i32, i32* @ISP_LOGERR, align 4
  %443 = load i32, i32* %5, align 4
  %444 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %445 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  %450 = load i32*, i32** %4, align 8
  %451 = load i32, i32* %5, align 4
  %452 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %453 = call i32 @FC_PORTDB_TGT(i32* %450, i32 %451, %struct.TYPE_12__* %452)
  %454 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %441, i32 %442, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0), i32 %443, i32 %446, i32 %449, i32 %453, i64 %456)
  %458 = load i32*, i32** %4, align 8
  %459 = load i32, i32* %5, align 4
  %460 = call i32 @isp_dump_portdb(i32* %458, i32 %459)
  br label %100

461:                                              ; preds = %435
  %462 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = load i64, i64* @FC_PORTDB_STATE_ZOMBIE, align 8
  %466 = icmp eq i64 %464, %465
  br i1 %466, label %467, label %468

467:                                              ; preds = %461
  br label %502

468:                                              ; preds = %461
  %469 = load i32*, i32** %4, align 8
  %470 = load i32, i32* %5, align 4
  %471 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %472 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 8
  %474 = call i32 @isp_getpdb(i32* %469, i32 %470, i32 %473, i32* %10)
  store i32 %474, i32* %13, align 4
  %475 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %476 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @LOOP_SCANNING_FABRIC, align 8
  %479 = icmp slt i64 %477, %478
  br i1 %479, label %480, label %481

480:                                              ; preds = %468
  br label %62

481:                                              ; preds = %468
  %482 = load i32, i32* %13, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %497

484:                                              ; preds = %481
  %485 = load i64, i64* @FC_PORTDB_STATE_DEAD, align 8
  %486 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %487 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %486, i32 0, i32 0
  store i64 %485, i64* %487, align 8
  %488 = load i32*, i32** %4, align 8
  %489 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %490 = load i32, i32* %5, align 4
  %491 = load i32, i32* %8, align 4
  %492 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* %13, align 4
  %496 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %488, i32 %489, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %490, i32 %491, i32 %494, i32 %495)
  br label %502

497:                                              ; preds = %481
  %498 = load i32*, i32** %4, align 8
  %499 = load i32, i32* %5, align 4
  %500 = call i32 @isp_pdb_add_update(i32* %498, i32 %499, i32* %10)
  br label %566

501:                                              ; preds = %429
  br label %502

502:                                              ; preds = %501, %484, %467
  %503 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %504 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* @ISP_ROLE_INITIATOR, align 4
  %507 = and i32 %505, %506
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %515

509:                                              ; preds = %502
  %510 = load i32*, i32** %4, align 8
  %511 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %512 = load i32, i32* %5, align 4
  %513 = load i32, i32* %8, align 4
  %514 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %510, i32 %511, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %512, i32 %513)
  br label %566

515:                                              ; preds = %502
  %516 = load i32*, i32** %4, align 8
  %517 = load i32, i32* %5, align 4
  %518 = load i32, i32* %8, align 4
  %519 = call i32 @isp_gff_id(i32* %516, i32 %517, i32 %518)
  store i32 %519, i32* %13, align 4
  %520 = load i32, i32* %13, align 4
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %528

522:                                              ; preds = %515
  %523 = load i32*, i32** %4, align 8
  %524 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %525 = load i32, i32* %5, align 4
  %526 = load i32, i32* %8, align 4
  %527 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %523, i32 %524, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %525, i32 %526)
  br label %566

528:                                              ; preds = %515
  %529 = load i32, i32* %13, align 4
  %530 = icmp slt i32 %529, 0
  br i1 %530, label %531, label %536

531:                                              ; preds = %528
  %532 = load i32*, i32** %4, align 8
  %533 = load i32, i32* %5, align 4
  %534 = load i32, i32* %8, align 4
  %535 = call i32 @isp_gft_id(i32* %532, i32 %533, i32 %534)
  store i32 %535, i32* %13, align 4
  br label %536

536:                                              ; preds = %531, %528
  %537 = load i32, i32* %13, align 4
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %545

539:                                              ; preds = %536
  %540 = load i32*, i32** %4, align 8
  %541 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %542 = load i32, i32* %5, align 4
  %543 = load i32, i32* %8, align 4
  %544 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %540, i32 %541, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %542, i32 %543)
  br label %566

545:                                              ; preds = %536
  %546 = load i32*, i32** %4, align 8
  %547 = load i32, i32* %5, align 4
  %548 = load i32, i32* %8, align 4
  %549 = load i32*, i32** %4, align 8
  %550 = call %struct.TYPE_13__* @FCPARAM(i32* %549, i32 0)
  %551 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %550, i32 0, i32 3
  %552 = call i64 @isp_login_device(i32* %546, i32 %547, i32 %548, i32* %10, i32* %551)
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %562

554:                                              ; preds = %545
  %555 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %556 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %555, i32 0, i32 0
  %557 = load i64, i64* %556, align 8
  %558 = load i64, i64* @LOOP_SCANNING_FABRIC, align 8
  %559 = icmp slt i64 %557, %558
  br i1 %559, label %560, label %561

560:                                              ; preds = %554
  br label %62

561:                                              ; preds = %554
  br label %566

562:                                              ; preds = %545
  %563 = load i32*, i32** %4, align 8
  %564 = load i32, i32* %5, align 4
  %565 = call i32 @isp_pdb_add_update(i32* %563, i32 %564, i32* %10)
  br label %566

566:                                              ; preds = %562, %561, %539, %522, %509, %497, %423, %411
  %567 = load i32, i32* %11, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %11, align 4
  br label %365

569:                                              ; preds = %365
  %570 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %571 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %570, i32 0, i32 0
  %572 = load i64, i64* %571, align 8
  %573 = load i64, i64* @LOOP_SCANNING_FABRIC, align 8
  %574 = icmp slt i64 %572, %573
  br i1 %574, label %575, label %576

575:                                              ; preds = %569
  br label %62

576:                                              ; preds = %569
  %577 = load i64, i64* @LOOP_FSCAN_DONE, align 8
  %578 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %579 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %578, i32 0, i32 0
  store i64 %577, i64* %579, align 8
  %580 = load i32*, i32** %4, align 8
  %581 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %582 = load i32, i32* %5, align 4
  %583 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %580, i32 %581, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %582)
  store i32 0, i32* %3, align 4
  br label %584

584:                                              ; preds = %576, %171, %125, %118, %100, %62, %47, %33, %26
  %585 = load i32, i32* %3, align 4
  ret i32 %585
}

declare dso_local %struct.TYPE_13__* @FCPARAM(i32*, i32) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, ...) #1

declare dso_local i32 @TOPO_IS_FABRIC(i32) #1

declare dso_local i32 @FC_SCRATCH_RELEASE(i32*, i32) #1

declare dso_local i64 @IS_24XX(i32*) #1

declare dso_local i32 @isp_getpdb(i32*, i32, i32, i32*) #1

declare dso_local i32 @isp_dump_chip_portdb(i32*, i32) #1

declare dso_local i32 @isp_gid_pt(i32*, i32) #1

declare dso_local i32 @isp_mark_portdb(i32*, i32) #1

declare dso_local i64 @isp_find_pdb_by_portid(i32*, i32, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @FC_PORTDB_TGT(i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @isp_dump_portdb(i32*, i32) #1

declare dso_local i32 @isp_pdb_add_update(i32*, i32, i32*) #1

declare dso_local i32 @isp_gff_id(i32*, i32, i32) #1

declare dso_local i32 @isp_gft_id(i32*, i32, i32) #1

declare dso_local i64 @isp_login_device(i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
