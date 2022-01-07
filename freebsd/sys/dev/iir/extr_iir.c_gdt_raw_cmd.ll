; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_raw_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_raw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdt_ccb = type { i32, i32, %union.ccb*, i32, i32*, i32, i32 }
%struct.gdt_softc = type { i64, i64, i64, i32, i32 (%struct.gdt_softc*)*, i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }
%struct.cam_sim = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GDT_D_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"gdt_raw_cmd(%p, %p)\0A\00", align 1
@GDT_CMD_UNION = common dso_local global i32 0, align 4
@GDT_RAW_SZ = common dso_local global i64 0, align 8
@GDT_DPMEM_COMMAND_OFFSET = common dso_local global i64 0, align 8
@GDT_D_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: gdt_raw_cmd(): DPMEM overflow\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: No free command index found\0A\00", align 1
@GDT_CMD_SZ = common dso_local global i32 0, align 4
@GDT_SCSIRAWSERVICE = common dso_local global i32 0, align 4
@GDT_GCF_SCSI = common dso_local global i32 0, align 4
@GDT_CMD_COMMANDINDEX = common dso_local global i32 0, align 4
@GDT_CMD_OPCODE = common dso_local global i32 0, align 4
@GDT_WRITE = common dso_local global i32 0, align 4
@GDT_RAW_DIRECTION = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@GDT_DATA_IN = common dso_local global i32 0, align 4
@GDT_DATA_OUT = common dso_local global i32 0, align 4
@GDT_RAW_SDLEN = common dso_local global i32 0, align 4
@GDT_RAW_CLEN = common dso_local global i32 0, align 4
@GDT_RAW_CMD = common dso_local global i32 0, align 4
@GDT_RAW_TARGET = common dso_local global i32 0, align 4
@GDT_RAW_LUN = common dso_local global i32 0, align 4
@GDT_RAW_BUS = common dso_local global i32 0, align 4
@GDT_RAW_SENSE_LEN = common dso_local global i32 0, align 4
@GDT_RAW_SENSE_DATA = common dso_local global i32 0, align 4
@gdtexecuteccb = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gdt_ccb* (%struct.gdt_softc*, %union.ccb*)* @gdt_raw_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gdt_ccb* @gdt_raw_cmd(%struct.gdt_softc* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.gdt_ccb*, align 8
  %4 = alloca %struct.gdt_softc*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.gdt_ccb*, align 8
  %7 = alloca %struct.cam_sim*, align 8
  %8 = alloca i32, align 4
  store %struct.gdt_softc* %0, %struct.gdt_softc** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %9 = load i32, i32* @GDT_D_CMD, align 4
  %10 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %11 = load %union.ccb*, %union.ccb** %5, align 8
  %12 = bitcast %union.ccb* %11 to i8*
  %13 = call i32 @GDT_DPRINTF(i32 %9, i8* %12)
  %14 = load i32, i32* @GDT_CMD_UNION, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @GDT_RAW_SZ, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @roundup(i64 %17, i32 4)
  %19 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %20 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load i64, i64* @GDT_DPMEM_COMMAND_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %26 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load i32, i32* @GDT_D_INVALID, align 4
  %31 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %32 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @device_get_nameunit(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @GDT_DPRINTF(i32 %30, i8* %36)
  store %struct.gdt_ccb* null, %struct.gdt_ccb** %3, align 8
  br label %256

38:                                               ; preds = %2
  %39 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %40 = call %struct.gdt_ccb* @gdt_get_ccb(%struct.gdt_softc* %39)
  store %struct.gdt_ccb* %40, %struct.gdt_ccb** %6, align 8
  %41 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %42 = icmp eq %struct.gdt_ccb* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32, i32* @GDT_D_INVALID, align 4
  %45 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %46 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @device_get_nameunit(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @GDT_DPRINTF(i32 %44, i8* %50)
  %52 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  store %struct.gdt_ccb* %52, %struct.gdt_ccb** %3, align 8
  br label %256

53:                                               ; preds = %38
  %54 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %55 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @GDT_CMD_SZ, align 4
  %58 = call i32 @bzero(i32* %56, i32 %57)
  %59 = load %union.ccb*, %union.ccb** %5, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.cam_sim*
  store %struct.cam_sim* %63, %struct.cam_sim** %7, align 8
  %64 = load %union.ccb*, %union.ccb** %5, align 8
  %65 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %66 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %65, i32 0, i32 2
  store %union.ccb* %64, %union.ccb** %66, align 8
  %67 = load i32, i32* @GDT_SCSIRAWSERVICE, align 4
  %68 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %69 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @GDT_GCF_SCSI, align 4
  %71 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %72 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %74 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %53
  %78 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %79 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %78, i32 0, i32 4
  %80 = load i32 (%struct.gdt_softc*)*, i32 (%struct.gdt_softc*)** %79, align 8
  %81 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %82 = call i32 %80(%struct.gdt_softc* %81)
  br label %83

83:                                               ; preds = %77, %53
  %84 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %85 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @GDT_CMD_COMMANDINDEX, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %91 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @gdt_enc32(i32* %89, i32 %92)
  %94 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %95 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @GDT_CMD_OPCODE, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* @GDT_WRITE, align 4
  %101 = call i32 @gdt_enc16(i32* %99, i32 %100)
  %102 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %103 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @GDT_CMD_UNION, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* @GDT_RAW_DIRECTION, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load %union.ccb*, %union.ccb** %5, align 8
  %112 = bitcast %union.ccb* %111 to %struct.TYPE_6__*
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CAM_DIR_MASK, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @CAM_DIR_IN, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %83
  %120 = load i32, i32* @GDT_DATA_IN, align 4
  br label %123

121:                                              ; preds = %83
  %122 = load i32, i32* @GDT_DATA_OUT, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = call i32 @gdt_enc32(i32* %110, i32 %124)
  %126 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %127 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @GDT_CMD_UNION, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* @GDT_RAW_SDLEN, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load %union.ccb*, %union.ccb** %5, align 8
  %136 = bitcast %union.ccb* %135 to %struct.TYPE_5__*
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @gdt_enc32(i32* %134, i32 %138)
  %140 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %141 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* @GDT_CMD_UNION, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* @GDT_RAW_CLEN, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load %union.ccb*, %union.ccb** %5, align 8
  %150 = bitcast %union.ccb* %149 to %struct.TYPE_5__*
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @gdt_enc32(i32* %148, i32 %152)
  %154 = load %union.ccb*, %union.ccb** %5, align 8
  %155 = bitcast %union.ccb* %154 to %struct.TYPE_5__*
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %160 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* @GDT_CMD_UNION, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* @GDT_RAW_CMD, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load %union.ccb*, %union.ccb** %5, align 8
  %169 = bitcast %union.ccb* %168 to %struct.TYPE_5__*
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @bcopy(i32 %158, i32* %167, i32 %171)
  %173 = load %union.ccb*, %union.ccb** %5, align 8
  %174 = bitcast %union.ccb* %173 to %struct.TYPE_6__*
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %178 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* @GDT_CMD_UNION, align 4
  %181 = load i32, i32* @GDT_RAW_TARGET, align 4
  %182 = add nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %179, i64 %183
  store i32 %176, i32* %184, align 4
  %185 = load %union.ccb*, %union.ccb** %5, align 8
  %186 = bitcast %union.ccb* %185 to %struct.TYPE_6__*
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %190 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* @GDT_CMD_UNION, align 4
  %193 = load i32, i32* @GDT_RAW_LUN, align 4
  %194 = add nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %191, i64 %195
  store i32 %188, i32* %196, align 4
  %197 = load %struct.cam_sim*, %struct.cam_sim** %7, align 8
  %198 = call i32 @cam_sim_bus(%struct.cam_sim* %197)
  %199 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %200 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* @GDT_CMD_UNION, align 4
  %203 = load i32, i32* @GDT_RAW_BUS, align 4
  %204 = add nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %201, i64 %205
  store i32 %198, i32* %206, align 4
  %207 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %208 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* @GDT_CMD_UNION, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* @GDT_RAW_SENSE_LEN, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = call i32 @gdt_enc32(i32* %215, i32 4)
  %217 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %218 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %217, i32 0, i32 4
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* @GDT_CMD_UNION, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* @GDT_RAW_SENSE_DATA, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %227 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @gdt_enc32(i32* %225, i32 %228)
  %230 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %231 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %234 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load %union.ccb*, %union.ccb** %5, align 8
  %237 = load i32, i32* @gdtexecuteccb, align 4
  %238 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %239 = call i32 @bus_dmamap_load_ccb(i32 %232, i32 %235, %union.ccb* %236, i32 %237, %struct.gdt_ccb* %238, i32 0)
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* @EINPROGRESS, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %254

243:                                              ; preds = %123
  %244 = load %struct.cam_sim*, %struct.cam_sim** %7, align 8
  %245 = call i32 @xpt_freeze_simq(%struct.cam_sim* %244, i32 1)
  %246 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %247 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %248 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %247, i32 0, i32 2
  %249 = load %union.ccb*, %union.ccb** %248, align 8
  %250 = bitcast %union.ccb* %249 to %struct.TYPE_6__*
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %246
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %243, %123
  %255 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  store %struct.gdt_ccb* %255, %struct.gdt_ccb** %3, align 8
  br label %256

256:                                              ; preds = %254, %43, %29
  %257 = load %struct.gdt_ccb*, %struct.gdt_ccb** %3, align 8
  ret %struct.gdt_ccb* %257
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local %struct.gdt_ccb* @gdt_get_ccb(%struct.gdt_softc*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @gdt_enc32(i32*, i32) #1

declare dso_local i32 @gdt_enc16(i32*, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.gdt_ccb*, i32) #1

declare dso_local i32 @xpt_freeze_simq(%struct.cam_sim*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
