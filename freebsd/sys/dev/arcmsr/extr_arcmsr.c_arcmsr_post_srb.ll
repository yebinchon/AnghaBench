; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_post_srb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_post_srb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i64, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.CommandControlBlock = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ARCMSR_CDB = type { i32, i32 }
%struct.HBB_MessageUnit = type { i32, i32*, i32 }
%struct.HBD_MessageUnit0 = type { i32, i32* }
%struct.InBound_SRB = type { i32, i32, i32 }

@SRB_FLAG_WRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@ARCMSR_SRB_START = common dso_local global i32 0, align 4
@ARCMSR_CDB_FLAG_SGL_BSIZE = common dso_local global i32 0, align 4
@HBA_MessageUnit = common dso_local global i32 0, align 4
@inbound_queueport = common dso_local global i32 0, align 4
@ARCMSR_SRBPOST_FLAG_SGL_BSIZE = common dso_local global i32 0, align 4
@ARCMSR_MAX_HBB_POSTQUEUE = common dso_local global i32 0, align 4
@ARCMSR_DRV2IOP_CDB_POSTED = common dso_local global i32 0, align 4
@HBC_MessageUnit = common dso_local global i32 0, align 4
@inbound_queueport_high = common dso_local global i32 0, align 4
@inbound_queueport_low = common dso_local global i32 0, align 4
@ARCMSR_MAX_HBD_POSTQUEUE = common dso_local global i32 0, align 4
@HBD_MessageUnit = common dso_local global i32 0, align 4
@inboundlist_write_pointer = common dso_local global i32 0, align 4
@HBE_MessageUnit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*, %struct.CommandControlBlock*)* @arcmsr_post_srb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_post_srb(%struct.AdapterControlBlock* %0, %struct.CommandControlBlock* %1) #0 {
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca %struct.CommandControlBlock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ARCMSR_CDB*, align 8
  %7 = alloca %struct.HBB_MessageUnit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.HBD_MessageUnit0*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.InBound_SRB*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store %struct.CommandControlBlock* %1, %struct.CommandControlBlock** %4, align 8
  %19 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %20 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %23 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %22, i32 0, i32 6
  %24 = bitcast i32* %23 to %struct.ARCMSR_CDB*
  store %struct.ARCMSR_CDB* %24, %struct.ARCMSR_CDB** %6, align 8
  %25 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %26 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %29 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %32 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SRB_FLAG_WRITE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  br label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @bus_dmamap_sync(i32 %27, i32 %30, i32 %42)
  %44 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %45 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %44, i32 0, i32 4
  %46 = call i32 @atomic_add_int(i32* %45, i32 1)
  %47 = load i32, i32* @ARCMSR_SRB_START, align 4
  %48 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %49 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %51 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %283 [
    i32 132, label %53
    i32 131, label %73
    i32 130, label %129
    i32 129, label %169
    i32 128, label %257
  ]

53:                                               ; preds = %41
  %54 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %6, align 8
  %55 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ARCMSR_CDB_FLAG_SGL_BSIZE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load i32, i32* @HBA_MessageUnit, align 4
  %62 = load i32, i32* @inbound_queueport, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @ARCMSR_SRBPOST_FLAG_SGL_BSIZE, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @CHIP_REG_WRITE32(i32 %61, i32 0, i32 %62, i32 %65)
  br label %72

67:                                               ; preds = %53
  %68 = load i32, i32* @HBA_MessageUnit, align 4
  %69 = load i32, i32* @inbound_queueport, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @CHIP_REG_WRITE32(i32 %68, i32 0, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %60
  br label %283

73:                                               ; preds = %41
  %74 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %75 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %77, %struct.HBB_MessageUnit** %7, align 8
  %78 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %7, align 8
  %79 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* @ARCMSR_MAX_HBB_POSTQUEUE, align 4
  %84 = srem i32 %82, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %7, align 8
  %86 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 0, i32* %90, align 4
  %91 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %6, align 8
  %92 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ARCMSR_CDB_FLAG_SGL_BSIZE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %73
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @ARCMSR_SRBPOST_FLAG_SGL_BSIZE, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %7, align 8
  %102 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  br label %115

107:                                              ; preds = %73
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %7, align 8
  %110 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  br label %115

115:                                              ; preds = %107, %97
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* @ARCMSR_MAX_HBB_POSTQUEUE, align 4
  %119 = load i32, i32* %9, align 4
  %120 = srem i32 %119, %118
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %7, align 8
  %123 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %7, align 8
  %125 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @ARCMSR_DRV2IOP_CDB_POSTED, align 4
  %128 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %126, i32 %127)
  br label %283

129:                                              ; preds = %41
  %130 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %131 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %132, 768
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %139

135:                                              ; preds = %129
  %136 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %137 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  br label %139

139:                                              ; preds = %135, %134
  %140 = phi i32 [ 768, %134 ], [ %138, %135 ]
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %11, align 4
  %143 = sub nsw i32 %142, 1
  %144 = ashr i32 %143, 6
  %145 = or i32 %141, %144
  %146 = or i32 %145, 1
  store i32 %146, i32* %10, align 4
  %147 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %148 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %139
  %155 = load i32, i32* @HBC_MessageUnit, align 4
  %156 = load i32, i32* @inbound_queueport_high, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @CHIP_REG_WRITE32(i32 %155, i32 0, i32 %156, i32 %157)
  %159 = load i32, i32* @HBC_MessageUnit, align 4
  %160 = load i32, i32* @inbound_queueport_low, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @CHIP_REG_WRITE32(i32 %159, i32 0, i32 %160, i32 %161)
  br label %168

163:                                              ; preds = %139
  %164 = load i32, i32* @HBC_MessageUnit, align 4
  %165 = load i32, i32* @inbound_queueport_low, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @CHIP_REG_WRITE32(i32 %164, i32 0, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %163, %154
  br label %283

169:                                              ; preds = %41
  %170 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %171 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to %struct.HBD_MessageUnit0*
  store %struct.HBD_MessageUnit0* %173, %struct.HBD_MessageUnit0** %13, align 8
  %174 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %175 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %174, i32 0, i32 1
  %176 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %175)
  %177 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %13, align 8
  %178 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %15, align 4
  %180 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %13, align 8
  %181 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %15, align 4
  %184 = and i32 %183, 255
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = bitcast i32* %186 to %struct.InBound_SRB*
  store %struct.InBound_SRB* %187, %struct.InBound_SRB** %16, align 8
  %188 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %189 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.InBound_SRB*, %struct.InBound_SRB** %16, align 8
  %192 = getelementptr inbounds %struct.InBound_SRB, %struct.InBound_SRB* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 4
  %193 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %194 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.InBound_SRB*, %struct.InBound_SRB** %16, align 8
  %197 = getelementptr inbounds %struct.InBound_SRB, %struct.InBound_SRB* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %199 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = ashr i32 %200, 2
  %202 = load %struct.InBound_SRB*, %struct.InBound_SRB** %16, align 8
  %203 = getelementptr inbounds %struct.InBound_SRB, %struct.InBound_SRB* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %205 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %6, align 8
  %208 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* %15, align 4
  %210 = and i32 %209, 16384
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %231

212:                                              ; preds = %169
  %213 = load i32, i32* %15, align 4
  %214 = and i32 %213, 255
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %14, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* @ARCMSR_MAX_HBD_POSTQUEUE, align 4
  %218 = load i32, i32* %14, align 4
  %219 = srem i32 %218, %217
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %212
  %223 = load i32, i32* %14, align 4
  %224 = or i32 %223, 16384
  br label %227

225:                                              ; preds = %212
  %226 = load i32, i32* %14, align 4
  br label %227

227:                                              ; preds = %225, %222
  %228 = phi i32 [ %224, %222 ], [ %226, %225 ]
  %229 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %13, align 8
  %230 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  br label %249

231:                                              ; preds = %169
  %232 = load i32, i32* %15, align 4
  store i32 %232, i32* %14, align 4
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %14, align 4
  %235 = load i32, i32* @ARCMSR_MAX_HBD_POSTQUEUE, align 4
  %236 = load i32, i32* %14, align 4
  %237 = srem i32 %236, %235
  store i32 %237, i32* %14, align 4
  %238 = load i32, i32* %14, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %231
  %241 = load i32, i32* %14, align 4
  br label %245

242:                                              ; preds = %231
  %243 = load i32, i32* %14, align 4
  %244 = or i32 %243, 16384
  br label %245

245:                                              ; preds = %242, %240
  %246 = phi i32 [ %241, %240 ], [ %244, %242 ]
  %247 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %13, align 8
  %248 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %245, %227
  %250 = load i32, i32* @HBD_MessageUnit, align 4
  %251 = load i32, i32* @inboundlist_write_pointer, align 4
  %252 = load i32, i32* %15, align 4
  %253 = call i32 @CHIP_REG_WRITE32(i32 %250, i32 0, i32 %251, i32 %252)
  %254 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %255 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %254, i32 0, i32 1
  %256 = call i32 @ARCMSR_LOCK_RELEASE(i32* %255)
  br label %283

257:                                              ; preds = %41
  %258 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %259 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp sgt i32 %260, 768
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  br label %267

263:                                              ; preds = %257
  %264 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %265 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  br label %267

267:                                              ; preds = %263, %262
  %268 = phi i32 [ 768, %262 ], [ %266, %263 ]
  store i32 %268, i32* %18, align 4
  %269 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %270 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %18, align 4
  %273 = sub nsw i32 %272, 1
  %274 = ashr i32 %273, 6
  %275 = or i32 %271, %274
  store i32 %275, i32* %17, align 4
  %276 = load i32, i32* @HBE_MessageUnit, align 4
  %277 = load i32, i32* @inbound_queueport_high, align 4
  %278 = call i32 @CHIP_REG_WRITE32(i32 %276, i32 0, i32 %277, i32 0)
  %279 = load i32, i32* @HBE_MessageUnit, align 4
  %280 = load i32, i32* @inbound_queueport_low, align 4
  %281 = load i32, i32* %17, align 4
  %282 = call i32 @CHIP_REG_WRITE32(i32 %279, i32 0, i32 %280, i32 %281)
  br label %283

283:                                              ; preds = %41, %267, %249, %168, %115, %72
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @WRITE_CHIP_REG32(i32, i32, i32) #1

declare dso_local i32 @ARCMSR_LOCK_ACQUIRE(i32*) #1

declare dso_local i32 @ARCMSR_LOCK_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
