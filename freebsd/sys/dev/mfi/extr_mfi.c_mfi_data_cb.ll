; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_data_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_data_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.mfi_frame_header = type { i64, i32, i32 }
%struct.mfi_command = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %union.mfi_sgl*, %struct.mfi_softc* }
%struct.TYPE_8__ = type { %struct.mfi_frame_header }
%union.mfi_sgl = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.mfi_softc = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"error %d in callback\0A\00", align 1
@MFI_CMD_PD_SCSI_IO = common dso_local global i64 0, align 8
@MFI_CMD_LD_READ = common dso_local global i64 0, align 8
@MFI_CMD_LD_WRITE = common dso_local global i64 0, align 8
@MFI_FLAGS_SKINNY = common dso_local global i32 0, align 4
@MFI_FRAME_IEEE_SGL = common dso_local global i32 0, align 4
@MFI_FRAME_SGL64 = common dso_local global i32 0, align 4
@MFI_CMD_STP = common dso_local global i64 0, align 8
@MFI_FLAGS_SG64 = common dso_local global i32 0, align 4
@MFI_CMD_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_READ = common dso_local global i32 0, align 4
@MFI_CMD_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_WRITE = common dso_local global i32 0, align 4
@MFI_CMD_MAPPED = common dso_local global i32 0, align 4
@MFI_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"error %d in callback from mfi_send_frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_11__*, i32, i32)* @mfi_data_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfi_data_cb(i8* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mfi_frame_header*, align 8
  %10 = alloca %struct.mfi_command*, align 8
  %11 = alloca %union.mfi_sgl*, align 8
  %12 = alloca %struct.mfi_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.mfi_command*
  store %struct.mfi_command* %20, %struct.mfi_command** %10, align 8
  %21 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %22 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %21, i32 0, i32 8
  %23 = load %struct.mfi_softc*, %struct.mfi_softc** %22, align 8
  store %struct.mfi_softc* %23, %struct.mfi_softc** %12, align 8
  %24 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %25 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %24, i32 0, i32 6
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store %struct.mfi_frame_header* %27, %struct.mfi_frame_header** %9, align 8
  %28 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %29 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %28, i32 0, i32 7
  %30 = load %union.mfi_sgl*, %union.mfi_sgl** %29, align 8
  store %union.mfi_sgl* %30, %union.mfi_sgl** %11, align 8
  %31 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %32 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %31, i32 0, i32 2
  %33 = call i32 @mtx_owned(i32* %32)
  store i32 %33, i32* %18, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %37 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %36, i32 0, i32 2
  %38 = call i32 @mtx_lock(i32* %37)
  br label %39

39:                                               ; preds = %35, %4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %47 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %49 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %50 = call i32 @mfi_complete(%struct.mfi_softc* %48, %struct.mfi_command* %49)
  br label %381

51:                                               ; preds = %39
  %52 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %53 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %52, i32 0, i32 6
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MFI_CMD_PD_SCSI_IO, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %78, label %60

60:                                               ; preds = %51
  %61 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %62 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %61, i32 0, i32 6
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MFI_CMD_LD_READ, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %78, label %69

69:                                               ; preds = %60
  %70 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %71 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %70, i32 0, i32 6
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MFI_CMD_LD_WRITE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %138

78:                                               ; preds = %69, %60, %51
  %79 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %80 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MFI_FLAGS_SKINNY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %138

85:                                               ; preds = %78
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %124, %85
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %86
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %union.mfi_sgl*, %union.mfi_sgl** %11, align 8
  %98 = bitcast %union.mfi_sgl* %97 to %struct.TYPE_7__**
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  store i64 %96, i64* %103, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %union.mfi_sgl*, %union.mfi_sgl** %11, align 8
  %111 = bitcast %union.mfi_sgl* %110 to %struct.TYPE_7__**
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32 %109, i32* %116, align 8
  %117 = load %union.mfi_sgl*, %union.mfi_sgl** %11, align 8
  %118 = bitcast %union.mfi_sgl* %117 to %struct.TYPE_7__**
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %90
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %86

127:                                              ; preds = %86
  %128 = load i32, i32* @MFI_FRAME_IEEE_SGL, align 4
  %129 = load i32, i32* @MFI_FRAME_SGL64, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %9, align 8
  %132 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  store i32 4, i32* %17, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %9, align 8
  %137 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  br label %304

138:                                              ; preds = %78, %69
  store i32 0, i32* %14, align 4
  %139 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %140 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %139, i32 0, i32 6
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @MFI_CMD_STP, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %200

147:                                              ; preds = %138
  %148 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %149 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %15, align 4
  %151 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %152 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @MFI_FLAGS_SG64, align 4
  %155 = and i32 %153, %154
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %178

157:                                              ; preds = %147
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %union.mfi_sgl*, %union.mfi_sgl** %11, align 8
  %163 = bitcast %union.mfi_sgl* %162 to %struct.TYPE_9__**
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  store i64 %161, i64* %168, align 8
  %169 = load i32, i32* %15, align 4
  %170 = load %union.mfi_sgl*, %union.mfi_sgl** %11, align 8
  %171 = bitcast %union.mfi_sgl* %170 to %struct.TYPE_9__**
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %14, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  store i32 %169, i32* %177, align 8
  br label %199

178:                                              ; preds = %147
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %union.mfi_sgl*, %union.mfi_sgl** %11, align 8
  %184 = bitcast %union.mfi_sgl* %183 to %struct.TYPE_10__**
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  store i64 %182, i64* %189, align 8
  %190 = load i32, i32* %15, align 4
  %191 = load %union.mfi_sgl*, %union.mfi_sgl** %11, align 8
  %192 = bitcast %union.mfi_sgl* %191 to %struct.TYPE_10__**
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %14, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  store i32 %190, i32* %198, align 8
  br label %199

199:                                              ; preds = %178, %157
  br label %201

200:                                              ; preds = %138
  store i32 0, i32* %15, align 4
  br label %201

201:                                              ; preds = %200, %199
  %202 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %203 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @MFI_FLAGS_SG64, align 4
  %206 = and i32 %204, %205
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %250

208:                                              ; preds = %201
  store i32 0, i32* %13, align 4
  br label %209

209:                                              ; preds = %246, %208
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %249

213:                                              ; preds = %209
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i32, i32* %15, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %219, %221
  %223 = load %union.mfi_sgl*, %union.mfi_sgl** %11, align 8
  %224 = bitcast %union.mfi_sgl* %223 to %struct.TYPE_9__**
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %224, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  store i64 %222, i64* %229, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %15, align 4
  %237 = sub nsw i32 %235, %236
  %238 = load %union.mfi_sgl*, %union.mfi_sgl** %11, align 8
  %239 = bitcast %union.mfi_sgl* %238 to %struct.TYPE_9__**
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %239, align 8
  %241 = load i32, i32* %14, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %14, align 4
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  store i32 %237, i32* %245, align 8
  store i32 0, i32* %15, align 4
  br label %246

246:                                              ; preds = %213
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %13, align 4
  br label %209

249:                                              ; preds = %209
  br label %297

250:                                              ; preds = %201
  store i32 0, i32* %13, align 4
  br label %251

251:                                              ; preds = %288, %250
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* %7, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %291

255:                                              ; preds = %251
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* %15, align 4
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %261, %263
  %265 = load %union.mfi_sgl*, %union.mfi_sgl** %11, align 8
  %266 = bitcast %union.mfi_sgl* %265 to %struct.TYPE_10__**
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %266, align 8
  %268 = load i32, i32* %14, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  store i64 %264, i64* %271, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %15, align 4
  %279 = sub nsw i32 %277, %278
  %280 = load %union.mfi_sgl*, %union.mfi_sgl** %11, align 8
  %281 = bitcast %union.mfi_sgl* %280 to %struct.TYPE_10__**
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %281, align 8
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %14, align 4
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  store i32 %279, i32* %287, align 8
  store i32 0, i32* %15, align 4
  br label %288

288:                                              ; preds = %255
  %289 = load i32, i32* %13, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %13, align 4
  br label %251

291:                                              ; preds = %251
  %292 = load i32, i32* @MFI_FRAME_SGL64, align 4
  %293 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %9, align 8
  %294 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  br label %297

297:                                              ; preds = %291, %249
  %298 = load i32, i32* %14, align 4
  %299 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %9, align 8
  %300 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %299, i32 0, i32 2
  store i32 %298, i32* %300, align 4
  %301 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %302 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  store i32 %303, i32* %17, align 4
  br label %304

304:                                              ; preds = %297, %127
  store i32 0, i32* %16, align 4
  %305 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %306 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %320

311:                                              ; preds = %304
  %312 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %313 = load i32, i32* %16, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %16, align 4
  %315 = load i32, i32* @MFI_FRAME_DIR_READ, align 4
  %316 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %9, align 8
  %317 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = or i32 %318, %315
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %311, %304
  %321 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %322 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @MFI_CMD_DATAOUT, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %336

327:                                              ; preds = %320
  %328 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %329 = load i32, i32* %16, align 4
  %330 = or i32 %329, %328
  store i32 %330, i32* %16, align 4
  %331 = load i32, i32* @MFI_FRAME_DIR_WRITE, align 4
  %332 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %9, align 8
  %333 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = or i32 %334, %331
  store i32 %335, i32* %333, align 8
  br label %336

336:                                              ; preds = %327, %320
  %337 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %338 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %341 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %16, align 4
  %344 = call i32 @bus_dmamap_sync(i32 %339, i32 %342, i32 %343)
  %345 = load i32, i32* @MFI_CMD_MAPPED, align 4
  %346 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %347 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = or i32 %348, %345
  store i32 %349, i32* %347, align 8
  %350 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %351 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %7, align 4
  %354 = mul nsw i32 %352, %353
  %355 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %356 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = add nsw i32 %357, %354
  store i32 %358, i32* %356, align 4
  %359 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %360 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = sub nsw i32 %361, 1
  %363 = load i32, i32* @MFI_FRAME_SIZE, align 4
  %364 = sdiv i32 %362, %363
  %365 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %366 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %365, i32 0, i32 4
  store i32 %364, i32* %366, align 8
  %367 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %368 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %369 = call i32 @mfi_send_frame(%struct.mfi_softc* %367, %struct.mfi_command* %368)
  store i32 %369, i32* %8, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %380

371:                                              ; preds = %336
  %372 = load i32, i32* %8, align 4
  %373 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %372)
  %374 = load i32, i32* %8, align 4
  %375 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %376 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %375, i32 0, i32 0
  store i32 %374, i32* %376, align 8
  %377 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %378 = load %struct.mfi_command*, %struct.mfi_command** %10, align 8
  %379 = call i32 @mfi_complete(%struct.mfi_softc* %377, %struct.mfi_command* %378)
  br label %381

380:                                              ; preds = %336
  br label %381

381:                                              ; preds = %380, %371, %42
  %382 = load i32, i32* %18, align 4
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %381
  %385 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %386 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %385, i32 0, i32 2
  %387 = call i32 @mtx_unlock(i32* %386)
  br label %388

388:                                              ; preds = %384, %381
  ret void
}

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @mfi_complete(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @mfi_send_frame(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
