; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_scsi_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_scsi_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.vscsi_xfer = type { i32, i32, %struct.TYPE_10__*, %union.ccb* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i32, i32 }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.srp_cmd = type { i32, i32, i32, i32*, i32, i32*, i32 }
%struct.vscsi_crq = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"DMA error %d\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@M_BESTFIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error during VMEM allocation (%d)\00", align 1
@SRP_CMD = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Does not support bidirectional commands (%d)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SRP IU command length\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@H_SEND_CRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"CRQ send failure (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_11__*, i32, i32)* @vscsi_scsi_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vscsi_scsi_command(i8* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vscsi_xfer*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %union.ccb*, align 8
  %12 = alloca %struct.srp_cmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.vscsi_crq, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.vscsi_xfer*
  store %struct.vscsi_xfer* %19, %struct.vscsi_xfer** %9, align 8
  %20 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %21 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %20, i32 0, i32 3
  %22 = load %union.ccb*, %union.ccb** %21, align 8
  store %union.ccb* %22, %union.ccb** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %25, i8* %28)
  %30 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %31 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 6
  %34 = load i32, i32* @MA_OWNED, align 4
  %35 = call i32 @mtx_assert(i32* %33, i32 %34)
  %36 = load %union.ccb*, %union.ccb** %11, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_8__*
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CAM_CDB_POINTER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %4
  %44 = load %union.ccb*, %union.ccb** %11, align 8
  %45 = bitcast %union.ccb* %44 to %struct.TYPE_9__*
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  br label %55

49:                                               ; preds = %4
  %50 = load %union.ccb*, %union.ccb** %11, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_9__*
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  br label %55

55:                                               ; preds = %49, %43
  %56 = phi i32* [ %48, %43 ], [ %54, %49 ]
  store i32* %56, i32** %10, align 8
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 1
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 20, i32 16
  %61 = add nsw i32 48, %60
  %62 = load %union.ccb*, %union.ccb** %11, align 8
  %63 = bitcast %union.ccb* %62 to %struct.TYPE_9__*
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 16
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load %union.ccb*, %union.ccb** %11, align 8
  %69 = bitcast %union.ccb* %68 to %struct.TYPE_9__*
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 16
  br label %74

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73, %67
  %75 = phi i32 [ %72, %67 ], [ 0, %73 ]
  %76 = add nsw i32 %61, %75
  %77 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %17, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %17, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %81 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 %85, 16
  %87 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %88 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %84, %74
  %92 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %93 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @roundup(i32 %94, i32 16)
  %96 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %97 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %99 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %98, i32 0, i32 2
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %104 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @M_BESTFIT, align 4
  %107 = load i32, i32* @M_NOWAIT, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %110 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %109, i32 0, i32 1
  %111 = call i32 @vmem_alloc(i32 %102, i32 %105, i32 %108, i32* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %91
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %114, %91
  %118 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %119 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %118, i32 0, i32 2
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i32*
  %124 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %125 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = bitcast i32* %128 to %struct.srp_cmd*
  store %struct.srp_cmd* %129, %struct.srp_cmd** %12, align 8
  %130 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %131 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %132 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @bzero(%struct.srp_cmd* %130, i32 %133)
  %135 = load i32, i32* @SRP_CMD, align 4
  %136 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %137 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 8
  %138 = load %union.ccb*, %union.ccb** %11, align 8
  %139 = bitcast %union.ccb* %138 to %struct.TYPE_9__*
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp sgt i32 %141, 16
  br i1 %142, label %143, label %152

143:                                              ; preds = %117
  %144 = load %union.ccb*, %union.ccb** %11, align 8
  %145 = bitcast %union.ccb* %144 to %struct.TYPE_9__*
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %147, 16
  %149 = shl i32 %148, 2
  %150 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %151 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %143, %117
  %153 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %154 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %153, i32 0, i32 5
  %155 = load i32*, i32** %154, align 8
  %156 = load i32*, i32** %10, align 8
  %157 = load %union.ccb*, %union.ccb** %11, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_9__*
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @memcpy(i32* %155, i32* %156, i32 %160)
  %162 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %163 = ptrtoint %struct.vscsi_xfer* %162 to i32
  %164 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %165 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %union.ccb*, %union.ccb** %11, align 8
  %167 = bitcast %union.ccb* %166 to %struct.TYPE_8__*
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @CAM_EXTLUN_BYTE_SWIZZLE(i32 %169)
  %171 = call i32 @htobe64(i32 %170)
  %172 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %173 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %7, align 4
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %176, label %313

176:                                              ; preds = %152
  %177 = load %union.ccb*, %union.ccb** %11, align 8
  %178 = bitcast %union.ccb* %177 to %struct.TYPE_8__*
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @CAM_DIR_MASK, align 4
  %182 = and i32 %180, %181
  switch i32 %182, label %189 [
    i32 128, label %183
    i32 129, label %186
  ]

183:                                              ; preds = %176
  %184 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %185 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %184, i32 0, i32 2
  store i32 32, i32* %185, align 8
  br label %197

186:                                              ; preds = %176
  %187 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %188 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %187, i32 0, i32 2
  store i32 2, i32* %188, align 8
  br label %197

189:                                              ; preds = %176
  %190 = load %union.ccb*, %union.ccb** %11, align 8
  %191 = bitcast %union.ccb* %190 to %struct.TYPE_8__*
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @CAM_DIR_MASK, align 4
  %195 = and i32 %193, %194
  %196 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %189, %186, %183
  %198 = load %union.ccb*, %union.ccb** %11, align 8
  %199 = bitcast %union.ccb* %198 to %struct.TYPE_9__*
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp sgt i32 %201, 16
  br i1 %202, label %203, label %209

203:                                              ; preds = %197
  %204 = load %union.ccb*, %union.ccb** %11, align 8
  %205 = bitcast %union.ccb* %204 to %struct.TYPE_9__*
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sub nsw i32 %207, 16
  br label %210

209:                                              ; preds = %197
  br label %210

210:                                              ; preds = %209, %203
  %211 = phi i32 [ %208, %203 ], [ 0, %209 ]
  store i32 %211, i32* %15, align 4
  %212 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %213 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %212, i32 0, i32 2
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %218 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %216, %219
  %221 = add nsw i32 %220, 20
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  %225 = add i64 %224, 48
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %13, align 4
  %227 = load i32, i32* %7, align 4
  %228 = mul nsw i32 16, %227
  store i32 %228, i32* %14, align 4
  %229 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %230 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %15, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = call i32 @memcpy(i32* %234, i32* %13, i32 8)
  %236 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %237 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %15, align 4
  %240 = add nsw i32 %239, 12
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  %243 = call i32 @memcpy(i32* %242, i32* %14, i32 4)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %244

244:                                              ; preds = %257, %210
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %260

248:                                              ; preds = %244
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %250 = load i32, i32* %16, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %14, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %14, align 4
  br label %257

257:                                              ; preds = %248
  %258 = load i32, i32* %16, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %16, align 4
  br label %244

260:                                              ; preds = %244
  %261 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %262 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %261, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %15, align 4
  %265 = add nsw i32 %264, 16
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = call i32 @memcpy(i32* %267, i32* %14, i32 4)
  %269 = load i32, i32* %15, align 4
  %270 = add nsw i32 %269, 20
  store i32 %270, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %271

271:                                              ; preds = %309, %260
  %272 = load i32, i32* %16, align 4
  %273 = load i32, i32* %7, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %312

275:                                              ; preds = %271
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %277 = load i32, i32* %16, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %13, align 4
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %283 = load i32, i32* %16, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %14, align 4
  %288 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %289 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %288, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %16, align 4
  %293 = mul nsw i32 16, %292
  %294 = add nsw i32 %291, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %290, i64 %295
  %297 = call i32 @memcpy(i32* %296, i32* %13, i32 8)
  %298 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %299 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %298, i32 0, i32 3
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %15, align 4
  %302 = load i32, i32* %16, align 4
  %303 = mul nsw i32 16, %302
  %304 = add nsw i32 %301, %303
  %305 = add nsw i32 %304, 12
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %300, i64 %306
  %308 = call i32 @memcpy(i32* %307, i32* %14, i32 4)
  br label %309

309:                                              ; preds = %275
  %310 = load i32, i32* %16, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %16, align 4
  br label %271

312:                                              ; preds = %271
  br label %399

313:                                              ; preds = %152
  %314 = load i32, i32* %7, align 4
  %315 = icmp eq i32 %314, 1
  br i1 %315, label %316, label %395

316:                                              ; preds = %313
  %317 = load %union.ccb*, %union.ccb** %11, align 8
  %318 = bitcast %union.ccb* %317 to %struct.TYPE_8__*
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @CAM_DIR_MASK, align 4
  %322 = and i32 %320, %321
  switch i32 %322, label %329 [
    i32 128, label %323
    i32 129, label %326
  ]

323:                                              ; preds = %316
  %324 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %325 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %324, i32 0, i32 2
  store i32 16, i32* %325, align 8
  br label %337

326:                                              ; preds = %316
  %327 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %328 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %327, i32 0, i32 2
  store i32 1, i32* %328, align 8
  br label %337

329:                                              ; preds = %316
  %330 = load %union.ccb*, %union.ccb** %11, align 8
  %331 = bitcast %union.ccb* %330 to %struct.TYPE_8__*
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @CAM_DIR_MASK, align 4
  %335 = and i32 %333, %334
  %336 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %335)
  br label %337

337:                                              ; preds = %329, %326, %323
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i64 0
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* %13, align 4
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i64 0
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  store i32 %345, i32* %14, align 4
  %346 = load %union.ccb*, %union.ccb** %11, align 8
  %347 = bitcast %union.ccb* %346 to %struct.TYPE_9__*
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = icmp sgt i32 %349, 16
  br i1 %350, label %351, label %357

351:                                              ; preds = %337
  %352 = load %union.ccb*, %union.ccb** %11, align 8
  %353 = bitcast %union.ccb* %352 to %struct.TYPE_9__*
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = sub nsw i32 %355, 16
  br label %358

357:                                              ; preds = %337
  br label %358

358:                                              ; preds = %357, %351
  %359 = phi i32 [ %356, %351 ], [ 0, %357 ]
  store i32 %359, i32* %15, align 4
  %360 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %361 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %360, i32 0, i32 3
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %15, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = call i32 @memcpy(i32* %365, i32* %13, i32 8)
  %367 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %368 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %367, i32 0, i32 3
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %15, align 4
  %371 = add nsw i32 %370, 12
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  %374 = call i32 @memcpy(i32* %373, i32* %14, i32 4)
  %375 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %376 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load %union.ccb*, %union.ccb** %11, align 8
  %379 = bitcast %union.ccb* %378 to %struct.TYPE_9__*
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = icmp sgt i32 %381, 16
  br i1 %382, label %383, label %388

383:                                              ; preds = %358
  %384 = load %union.ccb*, %union.ccb** %11, align 8
  %385 = bitcast %union.ccb* %384 to %struct.TYPE_9__*
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  br label %389

388:                                              ; preds = %358
  br label %389

389:                                              ; preds = %388, %383
  %390 = phi i32 [ %387, %383 ], [ 16, %388 ]
  %391 = add nsw i32 48, %390
  %392 = icmp sge i32 %377, %391
  %393 = zext i1 %392 to i32
  %394 = call i32 @KASSERT(i32 %393, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %398

395:                                              ; preds = %313
  %396 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %397 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %396, i32 0, i32 2
  store i32 0, i32* %397, align 8
  br label %398

398:                                              ; preds = %395, %389
  br label %399

399:                                              ; preds = %398, %312
  %400 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %401 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %400, i32 0, i32 2
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %406 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %405, i32 0, i32 2
  %407 = load %struct.TYPE_10__*, %struct.TYPE_10__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %411 = call i32 @bus_dmamap_sync(i32 %404, i32 %409, i32 %410)
  %412 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %17, i32 0, i32 1
  store i32 128, i32* %412, align 4
  %413 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %17, i32 0, i32 2
  store i32 1, i32* %413, align 4
  %414 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %415 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %414, i32 0, i32 2
  %416 = load %struct.TYPE_10__*, %struct.TYPE_10__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %420 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = add nsw i32 %418, %421
  %423 = getelementptr inbounds %struct.vscsi_crq, %struct.vscsi_crq* %17, i32 0, i32 3
  store i32 %422, i32* %423, align 4
  %424 = load i32, i32* @H_SEND_CRQ, align 4
  %425 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %9, align 8
  %426 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %425, i32 0, i32 2
  %427 = load %struct.TYPE_10__*, %struct.TYPE_10__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = bitcast %struct.vscsi_crq* %17 to i32*
  %431 = getelementptr inbounds i32, i32* %430, i64 0
  %432 = load i32, i32* %431, align 4
  %433 = bitcast %struct.vscsi_crq* %17 to i32*
  %434 = getelementptr inbounds i32, i32* %433, i64 1
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @phyp_hcall(i32 %424, i32 %429, i32 %432, i32 %435)
  store i32 %436, i32* %8, align 4
  %437 = load i32, i32* %8, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %399
  %440 = load i32, i32* %8, align 4
  %441 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %440)
  br label %442

442:                                              ; preds = %439, %399
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @vmem_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @bzero(%struct.srp_cmd*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i32 @CAM_EXTLUN_BYTE_SWIZZLE(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @phyp_hcall(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
