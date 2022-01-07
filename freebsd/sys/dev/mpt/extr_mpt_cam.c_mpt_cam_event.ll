; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_cam_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_cam_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { %struct.cam_sim*, %struct.cam_sim*, i32, %struct.cam_path* }
%struct.cam_sim = type { i32 }
%struct.cam_path = type { i32 }
%struct.TYPE_12__ = type { i32, i8** }
%union.ccb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.cam_path* }
%struct.ccb_relsim = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i8*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"UNIT ATTENTION: Bus: 0x%02x TargetID: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"IOC Generated Bus Reset Port: %d\0A\00", align 1
@AC_BUS_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"External Bus Reset Detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Rescan Port: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"unable to alloc CCB for rescan\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"unable to create path for rescan\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Port %d: LinkState: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"Port 0x%x: FC LinkEvent: LIP(%02x,%02x) (Loop Initialization)\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Device needs AL_PA\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Device %02x doesn't like FC performance\0A\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"Device had loop failure at its receiver prior to acquiring AL_PA\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"Device %02x detected loop failure at its receiver\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"Device %02x requests that device %02x reset itself\0A\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"Port 0x%x: FC LinkEvent: LPE(%02x,%02x) (Loop Port Enable)\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"Port 0x%x: FC LinkEvent: LPB(%02x,%02x) (Loop Port Bypass)\0A\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"Port 0x%x: FC LinkEvent: Unknown FC event (%02x %02x %02x)\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"FC Logout Port: %d N_PortID: %02x\0A\00", align 1
@bootverbose = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [53 x i8] c"QUEUE FULL EVENT: Bus 0x%02x Target 0x%02x Depth %d\0A\00", align 1
@MPT_MAX_LUNS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [45 x i8] c"unable to create a path to send XPT_REL_SIMQ\00", align 1
@XPT_REL_SIMQ = common dso_local global i32 0, align 4
@CAM_DEV_QFREEZE = common dso_local global i32 0, align 4
@RELSIM_ADJUST_OPENINGS = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"XPT_REL_SIMQ failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"IR resync update %d completed\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"unable to create path for async event\00", align 1
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@MPT_PRT_WARN = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [75 x i8] c"SAS device status change: Bus: 0x%02x TargetID: 0x%02x ReasonCode: 0x%02x\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"SAS discovery error: Port: 0x%02x Status: 0x%08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"mpt_cam_event: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, i32*, %struct.TYPE_12__*)* @mpt_cam_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_cam_event(%struct.mpt_softc* %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ccb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cam_sim*, align 8
  %13 = alloca %struct.cam_path*, align 8
  %14 = alloca %struct.ccb_relsim, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.ccb*, align 8
  %18 = alloca %struct.cam_sim*, align 8
  %19 = alloca %struct.cam_path*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @le32toh(i8* %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @le32toh(i8* %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 255
  switch i32 %39, label %440 [
    i32 128, label %40
    i32 147, label %48
    i32 149, label %59
    i32 139, label %67
    i32 144, label %118
    i32 141, label %129
    i32 143, label %219
    i32 140, label %226
    i32 145, label %323
    i32 138, label %329
    i32 131, label %419
    i32 150, label %439
    i32 148, label %439
    i32 146, label %439
    i32 142, label %439
    i32 132, label %439
    i32 130, label %439
    i32 129, label %439
  ]

40:                                               ; preds = %3
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 255
  %47 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46)
  br label %448

48:                                               ; preds = %3
  %49 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @AC_BUS_RESET, align 4
  %55 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %56 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %55, i32 0, i32 3
  %57 = load %struct.cam_path*, %struct.cam_path** %56, align 8
  %58 = call i32 @xpt_async(i32 %54, %struct.cam_path* %57, i32* null)
  br label %448

59:                                               ; preds = %3
  %60 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %61 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @AC_BUS_RESET, align 4
  %63 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %64 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %63, i32 0, i32 3
  %65 = load %struct.cam_path*, %struct.cam_path** %64, align 8
  %66 = call i32 @xpt_async(i32 %62, %struct.cam_path* %65, i32* null)
  br label %448

67:                                               ; preds = %3
  %68 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %74 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %448

78:                                               ; preds = %67
  %79 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %80 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %79, i32 0, i32 1
  %81 = load %struct.cam_sim*, %struct.cam_sim** %80, align 8
  %82 = icmp ne %struct.cam_sim* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %85 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %84, i32 0, i32 1
  %86 = load %struct.cam_sim*, %struct.cam_sim** %85, align 8
  %87 = call i32 @cam_sim_path(%struct.cam_sim* %86)
  store i32 %87, i32* %11, align 4
  br label %93

88:                                               ; preds = %78
  %89 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %90 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %89, i32 0, i32 0
  %91 = load %struct.cam_sim*, %struct.cam_sim** %90, align 8
  %92 = call i32 @cam_sim_path(%struct.cam_sim* %91)
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %88, %83
  %94 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %94, %union.ccb** %10, align 8
  %95 = load %union.ccb*, %union.ccb** %10, align 8
  %96 = icmp eq %union.ccb* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %99 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %448

100:                                              ; preds = %93
  %101 = load %union.ccb*, %union.ccb** %10, align 8
  %102 = bitcast %union.ccb* %101 to %struct.TYPE_8__*
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %106 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %107 = call i32 @xpt_create_path(%struct.cam_path** %103, i32* null, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* @CAM_REQ_CMP, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %100
  %111 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %112 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %113 = load %union.ccb*, %union.ccb** %10, align 8
  %114 = call i32 @xpt_free_ccb(%union.ccb* %113)
  br label %448

115:                                              ; preds = %100
  %116 = load %union.ccb*, %union.ccb** %10, align 8
  %117 = call i32 @xpt_rescan(%union.ccb* %116)
  br label %448

118:                                              ; preds = %3
  %119 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %120 = load i32, i32* %9, align 4
  %121 = ashr i32 %120, 8
  %122 = and i32 %121, 255
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, 255
  %125 = icmp eq i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)
  %128 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %122, i8* %127)
  br label %448

129:                                              ; preds = %3
  %130 = load i32, i32* %8, align 4
  %131 = ashr i32 %130, 16
  %132 = and i32 %131, 255
  switch i32 %132, label %204 [
    i32 1, label %133
    i32 2, label %182
    i32 3, label %193
  ]

133:                                              ; preds = %129
  %134 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %135 = load i32, i32* %9, align 4
  %136 = ashr i32 %135, 8
  %137 = and i32 %136, 255
  %138 = load i32, i32* %8, align 4
  %139 = ashr i32 %138, 8
  %140 = and i32 %139, 255
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, 255
  %143 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %134, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 %137, i32 %140, i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = ashr i32 %144, 8
  %146 = and i32 %145, 255
  switch i32 %146, label %173 [
    i32 247, label %147
    i32 248, label %160
  ]

147:                                              ; preds = %133
  %148 = load i32, i32* %8, align 4
  %149 = and i32 %148, 255
  %150 = icmp eq i32 %149, 247
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %153 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %159

154:                                              ; preds = %147
  %155 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %156 = load i32, i32* %8, align 4
  %157 = and i32 %156, 255
  %158 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %155, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %154, %151
  br label %181

160:                                              ; preds = %133
  %161 = load i32, i32* %8, align 4
  %162 = and i32 %161, 255
  %163 = icmp eq i32 %162, 247
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %166 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %165, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0))
  br label %172

167:                                              ; preds = %160
  %168 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %169 = load i32, i32* %8, align 4
  %170 = and i32 %169, 255
  %171 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %168, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %167, %164
  br label %181

173:                                              ; preds = %133
  %174 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %175 = load i32, i32* %8, align 4
  %176 = and i32 %175, 255
  %177 = load i32, i32* %8, align 4
  %178 = ashr i32 %177, 8
  %179 = and i32 %178, 255
  %180 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %174, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0), i32 %176, i32 %179)
  br label %181

181:                                              ; preds = %173, %172, %159
  br label %218

182:                                              ; preds = %129
  %183 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %184 = load i32, i32* %9, align 4
  %185 = ashr i32 %184, 8
  %186 = and i32 %185, 255
  %187 = load i32, i32* %8, align 4
  %188 = ashr i32 %187, 8
  %189 = and i32 %188, 255
  %190 = load i32, i32* %8, align 4
  %191 = and i32 %190, 255
  %192 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %183, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i64 0, i64 0), i32 %186, i32 %189, i32 %191)
  br label %218

193:                                              ; preds = %129
  %194 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %195 = load i32, i32* %9, align 4
  %196 = ashr i32 %195, 8
  %197 = and i32 %196, 255
  %198 = load i32, i32* %8, align 4
  %199 = ashr i32 %198, 8
  %200 = and i32 %199, 255
  %201 = load i32, i32* %8, align 4
  %202 = and i32 %201, 255
  %203 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %194, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0), i32 %197, i32 %200, i32 %202)
  br label %218

204:                                              ; preds = %129
  %205 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %206 = load i32, i32* %9, align 4
  %207 = ashr i32 %206, 8
  %208 = and i32 %207, 255
  %209 = load i32, i32* %8, align 4
  %210 = ashr i32 %209, 16
  %211 = and i32 %210, 255
  %212 = load i32, i32* %8, align 4
  %213 = ashr i32 %212, 8
  %214 = and i32 %213, 255
  %215 = load i32, i32* %8, align 4
  %216 = and i32 %215, 255
  %217 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %205, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i64 0, i64 0), i32 %208, i32 %211, i32 %214, i32 %216)
  br label %218

218:                                              ; preds = %204, %193, %182, %181
  br label %448

219:                                              ; preds = %3
  %220 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %221 = load i32, i32* %9, align 4
  %222 = ashr i32 %221, 8
  %223 = and i32 %222, 255
  %224 = load i32, i32* %8, align 4
  %225 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %220, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 %223, i32 %224)
  br label %448

226:                                              ; preds = %3
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 1
  %229 = load i8**, i8*** %228, align 8
  %230 = bitcast i8** %229 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %230, %struct.TYPE_10__** %15, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @le16toh(i32 %233)
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* @bootverbose, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %226
  %240 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %240, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i64 0, i64 0), i32 %243, i32 %246, i32 %249)
  br label %251

251:                                              ; preds = %239, %226
  %252 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %253 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %252, i32 0, i32 1
  %254 = load %struct.cam_sim*, %struct.cam_sim** %253, align 8
  %255 = icmp ne %struct.cam_sim* %254, null
  br i1 %255, label %256, label %267

256:                                              ; preds = %251
  %257 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @mpt_is_raid_member(%struct.mpt_softc* %257, i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %256
  %264 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %265 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %264, i32 0, i32 1
  %266 = load %struct.cam_sim*, %struct.cam_sim** %265, align 8
  store %struct.cam_sim* %266, %struct.cam_sim** %12, align 8
  br label %271

267:                                              ; preds = %256, %251
  %268 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %269 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %268, i32 0, i32 0
  %270 = load %struct.cam_sim*, %struct.cam_sim** %269, align 8
  store %struct.cam_sim* %270, %struct.cam_sim** %12, align 8
  br label %271

271:                                              ; preds = %267, %263
  store i32 0, i32* %16, align 4
  br label %272

272:                                              ; preds = %319, %271
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* @MPT_MAX_LUNS, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %322

276:                                              ; preds = %272
  %277 = load %struct.cam_sim*, %struct.cam_sim** %12, align 8
  %278 = call i32 @cam_sim_path(%struct.cam_sim* %277)
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %16, align 4
  %283 = call i32 @xpt_create_path(%struct.cam_path** %13, i32* null, i32 %278, i32 %281, i32 %282)
  %284 = load i32, i32* @CAM_REQ_CMP, align 4
  %285 = icmp ne i32 %283, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %276
  %287 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %288 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %287, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0))
  br label %322

289:                                              ; preds = %276
  %290 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %14, i32 0, i32 0
  %291 = load %struct.cam_path*, %struct.cam_path** %13, align 8
  %292 = call i32 @xpt_setup_ccb(%struct.TYPE_13__* %290, %struct.cam_path* %291, i32 5)
  %293 = load i32, i32* @XPT_REL_SIMQ, align 4
  %294 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %14, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 4
  %296 = load i32, i32* @CAM_DEV_QFREEZE, align 4
  %297 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %14, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 1
  store i32 %296, i32* %298, align 4
  %299 = load i32, i32* @RELSIM_ADJUST_OPENINGS, align 4
  %300 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %14, i32 0, i32 2
  store i32 %299, i32* %300, align 4
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = sub nsw i32 %303, 1
  %305 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %14, i32 0, i32 1
  store i32 %304, i32* %305, align 4
  %306 = bitcast %struct.ccb_relsim* %14 to %union.ccb*
  %307 = call i32 @xpt_action(%union.ccb* %306)
  %308 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %14, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @CAM_REQ_CMP, align 4
  %312 = icmp ne i32 %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %289
  %314 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %315 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  br label %316

316:                                              ; preds = %313, %289
  %317 = load %struct.cam_path*, %struct.cam_path** %13, align 8
  %318 = call i32 @xpt_free_path(%struct.cam_path* %317)
  br label %319

319:                                              ; preds = %316
  %320 = load i32, i32* %16, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %16, align 4
  br label %272

322:                                              ; preds = %286, %272
  br label %448

323:                                              ; preds = %3
  %324 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %325 = load i32, i32* %8, align 4
  %326 = ashr i32 %325, 16
  %327 = and i32 %326, 255
  %328 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %324, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i32 %327)
  br label %448

329:                                              ; preds = %3
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 1
  %332 = load i8**, i8*** %331, align 8
  %333 = bitcast i8** %332 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %333, %struct.TYPE_9__** %20, align 8
  %334 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %335 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %334, i32 0, i32 1
  %336 = load %struct.cam_sim*, %struct.cam_sim** %335, align 8
  %337 = icmp ne %struct.cam_sim* %336, null
  br i1 %337, label %338, label %349

338:                                              ; preds = %329
  %339 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @mpt_is_raid_member(%struct.mpt_softc* %339, i32 %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %338
  %346 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %347 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %346, i32 0, i32 1
  %348 = load %struct.cam_sim*, %struct.cam_sim** %347, align 8
  store %struct.cam_sim* %348, %struct.cam_sim** %18, align 8
  br label %353

349:                                              ; preds = %338, %329
  %350 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %351 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %350, i32 0, i32 0
  %352 = load %struct.cam_sim*, %struct.cam_sim** %351, align 8
  store %struct.cam_sim* %352, %struct.cam_sim** %18, align 8
  br label %353

353:                                              ; preds = %349, %345
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  switch i32 %356, label %405 [
    i32 137, label %357
    i32 133, label %385
    i32 136, label %404
    i32 135, label %404
    i32 134, label %404
  ]

357:                                              ; preds = %353
  %358 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %358, %union.ccb** %17, align 8
  %359 = load %union.ccb*, %union.ccb** %17, align 8
  %360 = icmp eq %union.ccb* %359, null
  br i1 %360, label %361, label %364

361:                                              ; preds = %357
  %362 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %363 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %362, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %418

364:                                              ; preds = %357
  %365 = load %union.ccb*, %union.ccb** %17, align 8
  %366 = bitcast %union.ccb* %365 to %struct.TYPE_8__*
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 0
  %368 = load %struct.cam_sim*, %struct.cam_sim** %18, align 8
  %369 = call i32 @cam_sim_path(%struct.cam_sim* %368)
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %374 = call i32 @xpt_create_path(%struct.cam_path** %367, i32* null, i32 %369, i32 %372, i32 %373)
  %375 = load i32, i32* @CAM_REQ_CMP, align 4
  %376 = icmp ne i32 %374, %375
  br i1 %376, label %377, label %382

377:                                              ; preds = %364
  %378 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %379 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %378, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %380 = load %union.ccb*, %union.ccb** %17, align 8
  %381 = call i32 @xpt_free_ccb(%union.ccb* %380)
  br label %418

382:                                              ; preds = %364
  %383 = load %union.ccb*, %union.ccb** %17, align 8
  %384 = call i32 @xpt_rescan(%union.ccb* %383)
  br label %418

385:                                              ; preds = %353
  %386 = load %struct.cam_sim*, %struct.cam_sim** %18, align 8
  %387 = call i32 @cam_sim_path(%struct.cam_sim* %386)
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %392 = call i32 @xpt_create_path(%struct.cam_path** %19, i32* null, i32 %387, i32 %390, i32 %391)
  %393 = load i32, i32* @CAM_REQ_CMP, align 4
  %394 = icmp ne i32 %392, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %385
  %396 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %397 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %396, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0))
  br label %418

398:                                              ; preds = %385
  %399 = load i32, i32* @AC_LOST_DEVICE, align 4
  %400 = load %struct.cam_path*, %struct.cam_path** %19, align 8
  %401 = call i32 @xpt_async(i32 %399, %struct.cam_path* %400, i32* null)
  %402 = load %struct.cam_path*, %struct.cam_path** %19, align 8
  %403 = call i32 @xpt_free_path(%struct.cam_path* %402)
  br label %418

404:                                              ; preds = %353, %353, %353
  br label %418

405:                                              ; preds = %353
  %406 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %407 = load i32, i32* @MPT_PRT_WARN, align 4
  %408 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %409 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = call i32 (%struct.mpt_softc*, i32, i8*, i32, ...) @mpt_lprt(%struct.mpt_softc* %406, i32 %407, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i32 %410, i32 %413, i32 %416)
  br label %418

418:                                              ; preds = %405, %404, %398, %395, %382, %377, %361
  br label %448

419:                                              ; preds = %3
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 1
  %422 = load i8**, i8*** %421, align 8
  %423 = bitcast i8** %422 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %423, %struct.TYPE_11__** %21, align 8
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %425 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i32 0, i32 0
  %426 = load i8*, i8** %425, align 8
  %427 = call i8* @le32toh(i8* %426)
  %428 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %428, i32 0, i32 0
  store i8* %427, i8** %429, align 8
  %430 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %431 = load i32, i32* @MPT_PRT_WARN, align 4
  %432 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 8
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 0
  %437 = load i8*, i8** %436, align 8
  %438 = call i32 (%struct.mpt_softc*, i32, i8*, i32, ...) @mpt_lprt(%struct.mpt_softc* %430, i32 %431, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 %434, i8* %437)
  br label %448

439:                                              ; preds = %3, %3, %3, %3, %3, %3, %3
  br label %448

440:                                              ; preds = %3
  %441 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %442 = load i32, i32* @MPT_PRT_WARN, align 4
  %443 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = and i32 %445, 255
  %447 = call i32 (%struct.mpt_softc*, i32, i8*, i32, ...) @mpt_lprt(%struct.mpt_softc* %441, i32 %442, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 %446)
  store i32 0, i32* %4, align 4
  br label %449

448:                                              ; preds = %439, %419, %418, %323, %322, %219, %218, %118, %115, %110, %97, %77, %59, %48, %40
  store i32 1, i32* %4, align 4
  br label %449

449:                                              ; preds = %448, %440
  %450 = load i32, i32* %4, align 4
  ret i32 %450
}

declare dso_local i8* @le32toh(i8*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @xpt_async(i32, %struct.cam_path*, i32*) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @mpt_is_raid_member(%struct.mpt_softc*, i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_13__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
