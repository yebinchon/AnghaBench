; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_iop_message_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_iop_message_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i64, i64, i32*, i32, i32, i32, i32*, i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i32, i32 }
%struct.CMD_MESSAGE_FIELD = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8* }
%struct.QBUFFER = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CAM_DATA_MASK = common dso_local global i32 0, align 4
@CAM_DATA_VADDR = common dso_local global i32 0, align 4
@ARCMSR_MESSAGE_FAIL = common dso_local global i32 0, align 4
@ARCMSR_MAX_QBUFFER = common dso_local global i32 0, align 4
@ACB_F_IOPDATA_OVERFLOW = common dso_local global i32 0, align 4
@ARCMSR_MESSAGE_RETURNCODE_OK = common dso_local global i8* null, align 8
@ARCMSR_MESSAGE_SUCCESS = common dso_local global i32 0, align 4
@ACB_F_MESSAGE_WQBUFFER_CLEARED = common dso_local global i32 0, align 4
@ACB_F_MESSAGE_RQBUFFER_CLEARED = common dso_local global i32 0, align 4
@ACB_F_MESSAGE_WQBUFFER_READ = common dso_local global i32 0, align 4
@ARCMSR_MESSAGE_RETURNCODE_3F = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Hello! I am ARCMSR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AdapterControlBlock*, %union.ccb*)* @arcmsr_iop_message_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_iop_message_xfer(%struct.AdapterControlBlock* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.CMD_MESSAGE_FIELD*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.QBUFFER*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %25 = load %union.ccb*, %union.ccb** %4, align 8
  %26 = bitcast %union.ccb* %25 to %struct.TYPE_6__*
  %27 = call i64* @scsiio_cdb_ptr(%struct.TYPE_6__* %26)
  store i64* %27, i64** %9, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 5
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 %31, 24
  %33 = load i64*, i64** %9, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 6
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 16
  %38 = or i32 %32, %37
  %39 = load i64*, i64** %9, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 7
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %42, 8
  %44 = or i32 %38, %43
  %45 = load i64*, i64** %9, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 8
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = or i32 %44, %48
  store i32 %49, i32* %10, align 4
  %50 = load %union.ccb*, %union.ccb** %4, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CAM_DATA_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @CAM_DATA_VADDR, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %2
  %59 = load %union.ccb*, %union.ccb** %4, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %8, align 8
  %63 = load %union.ccb*, %union.ccb** %4, align 8
  %64 = bitcast %union.ccb* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %7, align 4
  br label %69

67:                                               ; preds = %2
  %68 = load i32, i32* @ARCMSR_MESSAGE_FAIL, align 4
  store i32 %68, i32* %6, align 4
  br label %464

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ugt i64 %71, 24
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @ARCMSR_MESSAGE_FAIL, align 4
  store i32 %74, i32* %6, align 4
  br label %464

75:                                               ; preds = %69
  %76 = load i8*, i8** %8, align 8
  %77 = bitcast i8* %76 to %struct.CMD_MESSAGE_FIELD*
  store %struct.CMD_MESSAGE_FIELD* %77, %struct.CMD_MESSAGE_FIELD** %5, align 8
  %78 = load i32, i32* %10, align 4
  switch i32 %78, label %461 [
    i32 132, label %79
    i32 128, label %164
    i32 135, label %298
    i32 134, label %340
    i32 136, label %384
    i32 131, label %438
    i32 129, label %443
    i32 130, label %455
    i32 133, label %458
  ]

79:                                               ; preds = %75
  %80 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %5, align 8
  %81 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %83 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %84 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %83, i32 0, i32 7
  %85 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %84)
  br label %86

86:                                               ; preds = %99, %79
  %87 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %88 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %91 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %95, 1031
  br label %97

97:                                               ; preds = %94, %86
  %98 = phi i1 [ false, %86 ], [ %96, %94 ]
  br i1 %98, label %99, label %124

99:                                               ; preds = %97
  %100 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %101 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %104 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32* %106, i32** %11, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %12, align 8
  store i32 %108, i32* %109, align 4
  %110 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %111 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %111, align 8
  %114 = load i32, i32* @ARCMSR_MAX_QBUFFER, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %117 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = urem i64 %118, %115
  store i64 %119, i64* %117, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %12, align 8
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %86

124:                                              ; preds = %97
  %125 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %126 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %124
  %132 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %135 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %139 = call %struct.QBUFFER* @arcmsr_get_iop_rqbuffer(%struct.AdapterControlBlock* %138)
  store %struct.QBUFFER* %139, %struct.QBUFFER** %14, align 8
  %140 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %141 = load %struct.QBUFFER*, %struct.QBUFFER** %14, align 8
  %142 = call i32 @arcmsr_Read_iop_rqbuffer_data(%struct.AdapterControlBlock* %140, %struct.QBUFFER* %141)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %131
  %145 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %146 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %147 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %131
  br label %151

151:                                              ; preds = %150, %124
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %5, align 8
  %154 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  %156 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_OK, align 8
  %157 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %5, align 8
  %158 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store i8* %156, i8** %159, align 8
  %160 = load i32, i32* @ARCMSR_MESSAGE_SUCCESS, align 4
  store i32 %160, i32* %6, align 4
  %161 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %162 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %161, i32 0, i32 7
  %163 = call i32 @ARCMSR_LOCK_RELEASE(i32* %162)
  br label %463

164:                                              ; preds = %75
  %165 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %5, align 8
  %166 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  store i32* %167, i32** %20, align 8
  %168 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %5, align 8
  %169 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %16, align 4
  %172 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %173 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %172, i32 0, i32 7
  %174 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %173)
  %175 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %176 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %18, align 4
  %178 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %179 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %17, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %211

184:                                              ; preds = %164
  %185 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %186 = call i32 @arcmsr_Write_data_2iop_wqbuffer(%struct.AdapterControlBlock* %185)
  %187 = load %union.ccb*, %union.ccb** %4, align 8
  %188 = bitcast %union.ccb* %187 to %struct.TYPE_6__*
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %209

192:                                              ; preds = %184
  %193 = load %union.ccb*, %union.ccb** %4, align 8
  %194 = bitcast %union.ccb* %193 to %struct.TYPE_6__*
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  store i32 240, i32* %196, align 4
  %197 = load %union.ccb*, %union.ccb** %4, align 8
  %198 = bitcast %union.ccb* %197 to %struct.TYPE_6__*
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 2
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  store i32 5, i32* %200, align 4
  %201 = load %union.ccb*, %union.ccb** %4, align 8
  %202 = bitcast %union.ccb* %201 to %struct.TYPE_6__*
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = getelementptr inbounds i32, i32* %203, i64 7
  store i32 10, i32* %204, align 4
  %205 = load %union.ccb*, %union.ccb** %4, align 8
  %206 = bitcast %union.ccb* %205 to %struct.TYPE_6__*
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = getelementptr inbounds i32, i32* %207, i64 12
  store i32 32, i32* %208, align 4
  br label %209

209:                                              ; preds = %192, %184
  %210 = load i32, i32* @ARCMSR_MESSAGE_FAIL, align 4
  store i32 %210, i32* %6, align 4
  br label %294

211:                                              ; preds = %164
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* %18, align 4
  %214 = sub nsw i32 %212, %213
  %215 = sub nsw i32 %214, 1
  %216 = load i32, i32* @ARCMSR_MAX_QBUFFER, align 4
  %217 = sub nsw i32 %216, 1
  %218 = and i32 %215, %217
  store i32 %218, i32* %15, align 4
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* %16, align 4
  %221 = icmp sge i32 %219, %220
  br i1 %221, label %222, label %268

222:                                              ; preds = %211
  br label %223

223:                                              ; preds = %226, %222
  %224 = load i32, i32* %16, align 4
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %251

226:                                              ; preds = %223
  %227 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %228 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %227, i32 0, i32 6
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %231 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %229, i64 %233
  store i32* %234, i32** %19, align 8
  %235 = load i32*, i32** %20, align 8
  %236 = load i32, i32* %235, align 4
  %237 = load i32*, i32** %19, align 8
  store i32 %236, i32* %237, align 4
  %238 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %239 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  %242 = load i32, i32* @ARCMSR_MAX_QBUFFER, align 4
  %243 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %244 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = srem i32 %245, %242
  store i32 %246, i32* %244, align 4
  %247 = load i32*, i32** %20, align 8
  %248 = getelementptr inbounds i32, i32* %247, i32 1
  store i32* %248, i32** %20, align 8
  %249 = load i32, i32* %16, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %16, align 4
  br label %223

251:                                              ; preds = %223
  %252 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %253 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_CLEARED, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %251
  %259 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_CLEARED, align 4
  %260 = xor i32 %259, -1
  %261 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %262 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = and i32 %263, %260
  store i32 %264, i32* %262, align 8
  %265 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %266 = call i32 @arcmsr_Write_data_2iop_wqbuffer(%struct.AdapterControlBlock* %265)
  br label %267

267:                                              ; preds = %258, %251
  br label %293

268:                                              ; preds = %211
  %269 = load %union.ccb*, %union.ccb** %4, align 8
  %270 = bitcast %union.ccb* %269 to %struct.TYPE_6__*
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %291

274:                                              ; preds = %268
  %275 = load %union.ccb*, %union.ccb** %4, align 8
  %276 = bitcast %union.ccb* %275 to %struct.TYPE_6__*
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 2
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  store i32 240, i32* %278, align 4
  %279 = load %union.ccb*, %union.ccb** %4, align 8
  %280 = bitcast %union.ccb* %279 to %struct.TYPE_6__*
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 2
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  store i32 5, i32* %282, align 4
  %283 = load %union.ccb*, %union.ccb** %4, align 8
  %284 = bitcast %union.ccb* %283 to %struct.TYPE_6__*
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 2
  %286 = getelementptr inbounds i32, i32* %285, i64 7
  store i32 10, i32* %286, align 4
  %287 = load %union.ccb*, %union.ccb** %4, align 8
  %288 = bitcast %union.ccb* %287 to %struct.TYPE_6__*
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 2
  %290 = getelementptr inbounds i32, i32* %289, i64 12
  store i32 32, i32* %290, align 4
  br label %291

291:                                              ; preds = %274, %268
  %292 = load i32, i32* @ARCMSR_MESSAGE_FAIL, align 4
  store i32 %292, i32* %6, align 4
  br label %293

293:                                              ; preds = %291, %267
  br label %294

294:                                              ; preds = %293, %209
  %295 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %296 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %295, i32 0, i32 7
  %297 = call i32 @ARCMSR_LOCK_RELEASE(i32* %296)
  br label %463

298:                                              ; preds = %75
  %299 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %300 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  store i32* %301, i32** %21, align 8
  %302 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %303 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %302, i32 0, i32 7
  %304 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %303)
  %305 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %306 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %320

311:                                              ; preds = %298
  %312 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %313 = xor i32 %312, -1
  %314 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %315 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = and i32 %316, %313
  store i32 %317, i32* %315, align 8
  %318 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %319 = call i32 @arcmsr_iop_message_read(%struct.AdapterControlBlock* %318)
  br label %320

320:                                              ; preds = %311, %298
  %321 = load i32, i32* @ACB_F_MESSAGE_RQBUFFER_CLEARED, align 4
  %322 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %323 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = or i32 %324, %321
  store i32 %325, i32* %323, align 8
  %326 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %327 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %326, i32 0, i32 0
  store i64 0, i64* %327, align 8
  %328 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %329 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %328, i32 0, i32 1
  store i64 0, i64* %329, align 8
  %330 = load i32*, i32** %21, align 8
  %331 = load i32, i32* @ARCMSR_MAX_QBUFFER, align 4
  %332 = call i32 @memset(i32* %330, i32 0, i32 %331)
  %333 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_OK, align 8
  %334 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %5, align 8
  %335 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 1
  store i8* %333, i8** %336, align 8
  %337 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %338 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %337, i32 0, i32 7
  %339 = call i32 @ARCMSR_LOCK_RELEASE(i32* %338)
  br label %463

340:                                              ; preds = %75
  %341 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %342 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %341, i32 0, i32 6
  %343 = load i32*, i32** %342, align 8
  store i32* %343, i32** %22, align 8
  %344 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %345 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %344, i32 0, i32 7
  %346 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %345)
  %347 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %348 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %340
  %354 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %355 = xor i32 %354, -1
  %356 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %357 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 8
  %359 = and i32 %358, %355
  store i32 %359, i32* %357, align 8
  %360 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %361 = call i32 @arcmsr_iop_message_read(%struct.AdapterControlBlock* %360)
  br label %362

362:                                              ; preds = %353, %340
  %363 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_CLEARED, align 4
  %364 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_READ, align 4
  %365 = or i32 %363, %364
  %366 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %367 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 8
  %369 = or i32 %368, %365
  store i32 %369, i32* %367, align 8
  %370 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %371 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %370, i32 0, i32 5
  store i32 0, i32* %371, align 8
  %372 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %373 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %372, i32 0, i32 4
  store i32 0, i32* %373, align 4
  %374 = load i32*, i32** %22, align 8
  %375 = load i32, i32* @ARCMSR_MAX_QBUFFER, align 4
  %376 = call i32 @memset(i32* %374, i32 0, i32 %375)
  %377 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_OK, align 8
  %378 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %5, align 8
  %379 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 1
  store i8* %377, i8** %380, align 8
  %381 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %382 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %381, i32 0, i32 7
  %383 = call i32 @ARCMSR_LOCK_RELEASE(i32* %382)
  br label %463

384:                                              ; preds = %75
  %385 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %386 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %385, i32 0, i32 7
  %387 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %386)
  %388 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %389 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %403

394:                                              ; preds = %384
  %395 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %396 = xor i32 %395, -1
  %397 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %398 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 8
  %400 = and i32 %399, %396
  store i32 %400, i32* %398, align 8
  %401 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %402 = call i32 @arcmsr_iop_message_read(%struct.AdapterControlBlock* %401)
  br label %403

403:                                              ; preds = %394, %384
  %404 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_CLEARED, align 4
  %405 = load i32, i32* @ACB_F_MESSAGE_RQBUFFER_CLEARED, align 4
  %406 = or i32 %404, %405
  %407 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_READ, align 4
  %408 = or i32 %406, %407
  %409 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %410 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = or i32 %411, %408
  store i32 %412, i32* %410, align 8
  %413 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %414 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %413, i32 0, i32 0
  store i64 0, i64* %414, align 8
  %415 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %416 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %415, i32 0, i32 1
  store i64 0, i64* %416, align 8
  %417 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %418 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %417, i32 0, i32 5
  store i32 0, i32* %418, align 8
  %419 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %420 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %419, i32 0, i32 4
  store i32 0, i32* %420, align 4
  %421 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %422 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %421, i32 0, i32 2
  %423 = load i32*, i32** %422, align 8
  store i32* %423, i32** %23, align 8
  %424 = load i32*, i32** %23, align 8
  %425 = call i32 @memset(i32* %424, i32 0, i32 4)
  %426 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %427 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %426, i32 0, i32 6
  %428 = load i32*, i32** %427, align 8
  store i32* %428, i32** %23, align 8
  %429 = load i32*, i32** %23, align 8
  %430 = call i32 @memset(i32* %429, i32 0, i32 4)
  %431 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_OK, align 8
  %432 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %5, align 8
  %433 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 1
  store i8* %431, i8** %434, align 8
  %435 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %436 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %435, i32 0, i32 7
  %437 = call i32 @ARCMSR_LOCK_RELEASE(i32* %436)
  br label %463

438:                                              ; preds = %75
  %439 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_3F, align 8
  %440 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %5, align 8
  %441 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i32 0, i32 1
  store i8* %439, i8** %442, align 8
  br label %463

443:                                              ; preds = %75
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %444 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %5, align 8
  %445 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %444, i32 0, i32 0
  %446 = load i32*, i32** %445, align 8
  %447 = load i8*, i8** %24, align 8
  %448 = load i8*, i8** %24, align 8
  %449 = call i32 @strlen(i8* %448)
  %450 = call i32 @memcpy(i32* %446, i8* %447, i32 %449)
  %451 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_OK, align 8
  %452 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %5, align 8
  %453 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %453, i32 0, i32 1
  store i8* %451, i8** %454, align 8
  br label %463

455:                                              ; preds = %75
  %456 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %457 = call i32 @arcmsr_iop_parking(%struct.AdapterControlBlock* %456)
  br label %463

458:                                              ; preds = %75
  %459 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %460 = call i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock* %459)
  br label %463

461:                                              ; preds = %75
  %462 = load i32, i32* @ARCMSR_MESSAGE_FAIL, align 4
  store i32 %462, i32* %6, align 4
  br label %463

463:                                              ; preds = %461, %458, %455, %443, %438, %403, %362, %320, %294, %151
  br label %464

464:                                              ; preds = %463, %73, %67
  %465 = load i32, i32* %6, align 4
  ret i32 %465
}

declare dso_local i64* @scsiio_cdb_ptr(%struct.TYPE_6__*) #1

declare dso_local i32 @ARCMSR_LOCK_ACQUIRE(i32*) #1

declare dso_local %struct.QBUFFER* @arcmsr_get_iop_rqbuffer(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_Read_iop_rqbuffer_data(%struct.AdapterControlBlock*, %struct.QBUFFER*) #1

declare dso_local i32 @ARCMSR_LOCK_RELEASE(i32*) #1

declare dso_local i32 @arcmsr_Write_data_2iop_wqbuffer(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_iop_message_read(%struct.AdapterControlBlock*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @arcmsr_iop_parking(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
