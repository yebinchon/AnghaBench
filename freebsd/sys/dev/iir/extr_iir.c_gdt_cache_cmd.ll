; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_cache_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_cache_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdt_ccb = type { i32, %union.ccb*, i32, i64, i32, i32 }
%struct.gdt_softc = type { i64, i64, i64, i32, i32, i32 (%struct.gdt_softc*)*, i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.cam_sim = type { i32 }
%struct.scsi_rw_6 = type { i32, i32 }
%struct.scsi_rw_10 = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@GDT_D_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"gdt_cache_cmd(%p, %p)\0A\00", align 1
@GDT_CMD_UNION = common dso_local global i64 0, align 8
@GDT_CACHE_SZ = common dso_local global i64 0, align 8
@GDT_DPMEM_COMMAND_OFFSET = common dso_local global i64 0, align 8
@GDT_D_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: gdt_cache_cmd(): DPMEM overflow\0A\00", align 1
@GDT_D_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: No free command index found\0A\00", align 1
@GDT_CMD_SZ = common dso_local global i32 0, align 4
@GDT_CACHESERVICE = common dso_local global i32 0, align 4
@GDT_GCF_SCSI = common dso_local global i32 0, align 4
@GDT_CMD_COMMANDINDEX = common dso_local global i64 0, align 8
@WRITE_6 = common dso_local global i64 0, align 8
@WRITE_10 = common dso_local global i64 0, align 8
@GDT_WRITE = common dso_local global i64 0, align 8
@GDT_READ = common dso_local global i64 0, align 8
@GDT_SHUTDOWN = common dso_local global i32 0, align 4
@GDT_WRITE_THR = common dso_local global i64 0, align 8
@GDT_CMD_OPCODE = common dso_local global i64 0, align 8
@GDT_CACHE_DEVICENO = common dso_local global i64 0, align 8
@SRW_TOPADDR = common dso_local global i32 0, align 4
@GDT_CACHE_BLOCKNO = common dso_local global i64 0, align 8
@GDT_CACHE_BLOCKCNT = common dso_local global i64 0, align 8
@gdtexecuteccb = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gdt_ccb* (%struct.gdt_softc*, %union.ccb*)* @gdt_cache_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gdt_ccb* @gdt_cache_cmd(%struct.gdt_softc* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.gdt_ccb*, align 8
  %4 = alloca %struct.gdt_softc*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.gdt_ccb*, align 8
  %7 = alloca %struct.cam_sim*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_rw_6*, align 8
  %14 = alloca %struct.scsi_rw_10*, align 8
  store %struct.gdt_softc* %0, %struct.gdt_softc** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %15 = load i32, i32* @GDT_D_CMD, align 4
  %16 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %17 = load %union.ccb*, %union.ccb** %5, align 8
  %18 = bitcast %union.ccb* %17 to i8*
  %19 = call i32 @GDT_DPRINTF(i32 %15, i8* %18)
  %20 = load i64, i64* @GDT_CMD_UNION, align 8
  %21 = load i64, i64* @GDT_CACHE_SZ, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @roundup(i64 %22, i32 4)
  %24 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %25 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load i64, i64* @GDT_DPMEM_COMMAND_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %31 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load i32, i32* @GDT_D_INVALID, align 4
  %36 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %37 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @device_get_nameunit(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @GDT_DPRINTF(i32 %35, i8* %41)
  store %struct.gdt_ccb* null, %struct.gdt_ccb** %3, align 8
  br label %233

43:                                               ; preds = %2
  %44 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %45 = call %struct.gdt_ccb* @gdt_get_ccb(%struct.gdt_softc* %44)
  store %struct.gdt_ccb* %45, %struct.gdt_ccb** %6, align 8
  %46 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %47 = icmp eq %struct.gdt_ccb* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i32, i32* @GDT_D_DEBUG, align 4
  %50 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %51 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @device_get_nameunit(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @GDT_DPRINTF(i32 %49, i8* %55)
  %57 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  store %struct.gdt_ccb* %57, %struct.gdt_ccb** %3, align 8
  br label %233

58:                                               ; preds = %43
  %59 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %60 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @GDT_CMD_SZ, align 4
  %63 = call i32 @bzero(i64 %61, i32 %62)
  %64 = load %union.ccb*, %union.ccb** %5, align 8
  %65 = bitcast %union.ccb* %64 to %struct.TYPE_6__*
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.cam_sim*
  store %struct.cam_sim* %68, %struct.cam_sim** %7, align 8
  %69 = load %union.ccb*, %union.ccb** %5, align 8
  %70 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %71 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %70, i32 0, i32 1
  store %union.ccb* %69, %union.ccb** %71, align 8
  %72 = load i32, i32* @GDT_CACHESERVICE, align 4
  %73 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %74 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @GDT_GCF_SCSI, align 4
  %76 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %77 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %79 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %58
  %83 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %84 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %83, i32 0, i32 5
  %85 = load i32 (%struct.gdt_softc*)*, i32 (%struct.gdt_softc*)** %84, align 8
  %86 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %87 = call i32 %85(%struct.gdt_softc* %86)
  br label %88

88:                                               ; preds = %82, %58
  %89 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %90 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @GDT_CMD_COMMANDINDEX, align 8
  %93 = add nsw i64 %91, %92
  %94 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %95 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @gdt_enc32(i64 %93, i32 %96)
  %98 = load %union.ccb*, %union.ccb** %5, align 8
  %99 = bitcast %union.ccb* %98 to %struct.TYPE_5__*
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  store i64* %102, i64** %8, align 8
  %103 = load i64*, i64** %8, align 8
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @WRITE_6, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %88
  %108 = load i64*, i64** %8, align 8
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @WRITE_10, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %107, %88
  %113 = load i64, i64* @GDT_WRITE, align 8
  br label %116

114:                                              ; preds = %107
  %115 = load i64, i64* @GDT_READ, align 8
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i64 [ %113, %112 ], [ %115, %114 ]
  store i64 %117, i64* %9, align 8
  %118 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %119 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @GDT_SHUTDOWN, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* @GDT_WRITE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i64, i64* @GDT_WRITE_THR, align 8
  store i64 %129, i64* %9, align 8
  br label %130

130:                                              ; preds = %128, %124, %116
  %131 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %132 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @GDT_CMD_OPCODE, align 8
  %135 = add nsw i64 %133, %134
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @gdt_enc16(i64 %135, i64 %136)
  %138 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %139 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @GDT_CMD_UNION, align 8
  %142 = add nsw i64 %140, %141
  %143 = load i64, i64* @GDT_CACHE_DEVICENO, align 8
  %144 = add nsw i64 %142, %143
  %145 = load %union.ccb*, %union.ccb** %5, align 8
  %146 = bitcast %union.ccb* %145 to %struct.TYPE_6__*
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @gdt_enc16(i64 %144, i64 %148)
  %150 = load %union.ccb*, %union.ccb** %5, align 8
  %151 = bitcast %union.ccb* %150 to %struct.TYPE_5__*
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 6
  br i1 %154, label %155, label %177

155:                                              ; preds = %130
  %156 = load i64*, i64** %8, align 8
  %157 = bitcast i64* %156 to %struct.scsi_rw_6*
  store %struct.scsi_rw_6* %157, %struct.scsi_rw_6** %13, align 8
  %158 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %13, align 8
  %159 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @scsi_3btoul(i32 %160)
  %162 = load i32, i32* @SRW_TOPADDR, align 4
  %163 = shl i32 %162, 16
  %164 = or i32 %163, 65535
  %165 = and i32 %161, %164
  store i32 %165, i32* %10, align 4
  %166 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %13, align 8
  %167 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %155
  %171 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %13, align 8
  %172 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  br label %175

174:                                              ; preds = %155
  br label %175

175:                                              ; preds = %174, %170
  %176 = phi i32 [ %173, %170 ], [ 256, %174 ]
  store i32 %176, i32* %11, align 4
  br label %188

177:                                              ; preds = %130
  %178 = load i64*, i64** %8, align 8
  %179 = bitcast i64* %178 to %struct.scsi_rw_10*
  store %struct.scsi_rw_10* %179, %struct.scsi_rw_10** %14, align 8
  %180 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %14, align 8
  %181 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @scsi_4btoul(i32 %182)
  store i32 %183, i32* %10, align 4
  %184 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %14, align 8
  %185 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @scsi_2btoul(i32 %186)
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %177, %175
  %189 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %190 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @GDT_CMD_UNION, align 8
  %193 = add nsw i64 %191, %192
  %194 = load i64, i64* @GDT_CACHE_BLOCKNO, align 8
  %195 = add nsw i64 %193, %194
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @gdt_enc32(i64 %195, i32 %196)
  %198 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %199 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @GDT_CMD_UNION, align 8
  %202 = add nsw i64 %200, %201
  %203 = load i64, i64* @GDT_CACHE_BLOCKCNT, align 8
  %204 = add nsw i64 %202, %203
  %205 = load i32, i32* %11, align 4
  %206 = call i32 @gdt_enc32(i64 %204, i32 %205)
  %207 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %208 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %211 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %union.ccb*, %union.ccb** %5, align 8
  %214 = load i32, i32* @gdtexecuteccb, align 4
  %215 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %216 = call i32 @bus_dmamap_load_ccb(i32 %209, i32 %212, %union.ccb* %213, i32 %214, %struct.gdt_ccb* %215, i32 0)
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* @EINPROGRESS, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %231

220:                                              ; preds = %188
  %221 = load %struct.cam_sim*, %struct.cam_sim** %7, align 8
  %222 = call i32 @xpt_freeze_simq(%struct.cam_sim* %221, i32 1)
  %223 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %224 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %225 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %224, i32 0, i32 1
  %226 = load %union.ccb*, %union.ccb** %225, align 8
  %227 = bitcast %union.ccb* %226 to %struct.TYPE_6__*
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %223
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %220, %188
  %232 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  store %struct.gdt_ccb* %232, %struct.gdt_ccb** %3, align 8
  br label %233

233:                                              ; preds = %231, %48, %34
  %234 = load %struct.gdt_ccb*, %struct.gdt_ccb** %3, align 8
  ret %struct.gdt_ccb* %234
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local %struct.gdt_ccb* @gdt_get_ccb(%struct.gdt_softc*) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @gdt_enc32(i64, i32) #1

declare dso_local i32 @gdt_enc16(i64, i64) #1

declare dso_local i32 @scsi_3btoul(i32) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.gdt_ccb*, i32) #1

declare dso_local i32 @xpt_freeze_simq(%struct.cam_sim*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
