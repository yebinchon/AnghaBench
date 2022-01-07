; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_build_srb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_build_srb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandControlBlock = type { i64, i32, i32, %struct.AdapterControlBlock*, %union.ccb*, %struct.ARCMSR_CDB }
%struct.AdapterControlBlock = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i64, i64 }
%struct.ARCMSR_CDB = type { i32, i64, i64, i32, i8*, i32, i8*, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.SG32ENTRY = type { i64, i64 }
%struct.SG64ENTRY = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@ARCMSR_CDB_FLAG_WRITE = common dso_local global i32 0, align 4
@SRB_FLAG_WRITE = common dso_local global i32 0, align 4
@IS_SG64_ADDR = common dso_local global i64 0, align 8
@ARCMSR_CDB_FLAG_SGL_BSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CommandControlBlock*, %struct.TYPE_5__*, i64)* @arcmsr_build_srb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_build_srb(%struct.CommandControlBlock* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca %struct.CommandControlBlock*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ARCMSR_CDB*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.ccb*, align 8
  %12 = alloca %struct.ccb_scsiio*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.AdapterControlBlock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.SG32ENTRY*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.SG64ENTRY*, align 8
  store %struct.CommandControlBlock* %0, %struct.CommandControlBlock** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i64 %2, i64* %6, align 8
  %25 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %26 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %25, i32 0, i32 5
  store %struct.ARCMSR_CDB* %26, %struct.ARCMSR_CDB** %7, align 8
  %27 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %28 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %27, i32 0, i32 10
  %29 = bitcast i32* %28 to i8**
  store i8** %29, i8*** %8, align 8
  %30 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %31 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %30, i32 0, i32 4
  %32 = load %union.ccb*, %union.ccb** %31, align 8
  store %union.ccb* %32, %union.ccb** %11, align 8
  %33 = load %union.ccb*, %union.ccb** %11, align 8
  %34 = bitcast %union.ccb* %33 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %34, %struct.ccb_scsiio** %12, align 8
  store i64 48, i64* %13, align 8
  %35 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %36 = call i32 @memset(%struct.ARCMSR_CDB* %35, i32 0, i32 80)
  %37 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %38 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %37, i32 0, i32 9
  store i64 0, i64* %38, align 8
  %39 = load %union.ccb*, %union.ccb** %11, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %44 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load %union.ccb*, %union.ccb** %11, align 8
  %46 = bitcast %union.ccb* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %50 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %52 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %54 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %58 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %60 = call i32 @scsiio_cdb_ptr(%struct.ccb_scsiio* %59)
  %61 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %62 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %65 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @bcopy(i32 %60, i32 %63, i64 %66)
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %220

70:                                               ; preds = %3
  %71 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %72 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %71, i32 0, i32 3
  %73 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %72, align 8
  store %struct.AdapterControlBlock* %73, %struct.AdapterControlBlock** %14, align 8
  store i64 0, i64* %18, align 8
  %74 = load %union.ccb*, %union.ccb** %11, align 8
  %75 = bitcast %union.ccb* %74 to %struct.TYPE_4__*
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CAM_DIR_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @CAM_DIR_IN, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  store i32 %83, i32* %15, align 4
  br label %96

84:                                               ; preds = %70
  %85 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* @ARCMSR_CDB_FLAG_WRITE, align 4
  %87 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %88 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* @SRB_FLAG_WRITE, align 4
  %92 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %93 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %84, %82
  %97 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %14, align 8
  %98 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %101 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @bus_dmamap_sync(i32 %99, i32 %102, i32 %103)
  store i64 0, i64* %17, align 8
  br label %105

105:                                              ; preds = %198, %96
  %106 = load i64, i64* %17, align 8
  %107 = load i64, i64* %6, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %201

109:                                              ; preds = %105
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = load i64, i64* %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @arcmsr_htole32(i32 %114)
  store i64 %115, i64* %16, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = load i64, i64* %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dma_addr_lo32(i32 %120)
  %122 = call i64 @arcmsr_htole32(i32 %121)
  store i64 %122, i64* %9, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = load i64, i64* %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @dma_addr_hi32(i32 %127)
  %129 = call i64 @arcmsr_htole32(i32 %128)
  store i64 %129, i64* %10, align 8
  %130 = load i64, i64* %10, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %109
  %133 = load i8**, i8*** %8, align 8
  %134 = bitcast i8** %133 to %struct.SG32ENTRY*
  store %struct.SG32ENTRY* %134, %struct.SG32ENTRY** %19, align 8
  %135 = load i64, i64* %9, align 8
  %136 = load %struct.SG32ENTRY*, %struct.SG32ENTRY** %19, align 8
  %137 = getelementptr inbounds %struct.SG32ENTRY, %struct.SG32ENTRY* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load i64, i64* %16, align 8
  %139 = load %struct.SG32ENTRY*, %struct.SG32ENTRY** %19, align 8
  %140 = getelementptr inbounds %struct.SG32ENTRY, %struct.SG32ENTRY* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load i8**, i8*** %8, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 16
  store i8** %142, i8*** %8, align 8
  %143 = load i64, i64* %13, align 8
  %144 = add i64 %143, 16
  store i64 %144, i64* %13, align 8
  br label %195

145:                                              ; preds = %109
  store i64 0, i64* %20, align 8
  %146 = load i64, i64* %16, align 8
  store i64 %146, i64* %21, align 8
  br label %147

147:                                              ; preds = %145, %190
  %148 = load i8**, i8*** %8, align 8
  %149 = bitcast i8** %148 to %struct.SG64ENTRY*
  store %struct.SG64ENTRY* %149, %struct.SG64ENTRY** %24, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* %21, align 8
  %152 = add nsw i64 %150, %151
  store i64 %152, i64* %22, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load %struct.SG64ENTRY*, %struct.SG64ENTRY** %24, align 8
  %155 = getelementptr inbounds %struct.SG64ENTRY, %struct.SG64ENTRY* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load %struct.SG64ENTRY*, %struct.SG64ENTRY** %24, align 8
  %158 = getelementptr inbounds %struct.SG64ENTRY, %struct.SG64ENTRY* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load i64, i64* %22, align 8
  %160 = icmp sgt i64 %159, 4294967296
  br i1 %160, label %161, label %180

161:                                              ; preds = %147
  %162 = load i64, i64* %9, align 8
  %163 = sub nsw i64 4294967296, %162
  store i64 %163, i64* %23, align 8
  %164 = load i64, i64* %23, align 8
  %165 = load i64, i64* @IS_SG64_ADDR, align 8
  %166 = or i64 %164, %165
  %167 = load %struct.SG64ENTRY*, %struct.SG64ENTRY** %24, align 8
  %168 = getelementptr inbounds %struct.SG64ENTRY, %struct.SG64ENTRY* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load i64, i64* %10, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %10, align 8
  store i64 0, i64* %9, align 8
  %171 = load i64, i64* %21, align 8
  %172 = load i64, i64* %23, align 8
  %173 = sub nsw i64 %171, %172
  store i64 %173, i64* %21, align 8
  %174 = load i64, i64* %20, align 8
  %175 = add i64 %174, 24
  store i64 %175, i64* %20, align 8
  %176 = load i8**, i8*** %8, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 24
  store i8** %177, i8*** %8, align 8
  %178 = load i64, i64* %18, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %18, align 8
  br label %190

180:                                              ; preds = %147
  %181 = load i64, i64* %21, align 8
  %182 = load i64, i64* @IS_SG64_ADDR, align 8
  %183 = or i64 %181, %182
  %184 = load %struct.SG64ENTRY*, %struct.SG64ENTRY** %24, align 8
  %185 = getelementptr inbounds %struct.SG64ENTRY, %struct.SG64ENTRY* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  %186 = load i64, i64* %20, align 8
  %187 = add i64 %186, 24
  store i64 %187, i64* %20, align 8
  %188 = load i8**, i8*** %8, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 24
  store i8** %189, i8*** %8, align 8
  br label %191

190:                                              ; preds = %161
  br label %147

191:                                              ; preds = %180
  %192 = load i64, i64* %20, align 8
  %193 = load i64, i64* %13, align 8
  %194 = add nsw i64 %193, %192
  store i64 %194, i64* %13, align 8
  br label %195

195:                                              ; preds = %191, %132
  %196 = load i64, i64* %18, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %18, align 8
  br label %198

198:                                              ; preds = %195
  %199 = load i64, i64* %17, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %17, align 8
  br label %105

201:                                              ; preds = %105
  %202 = load i64, i64* %18, align 8
  %203 = inttoptr i64 %202 to i8*
  %204 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %205 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %204, i32 0, i32 4
  store i8* %203, i8** %205, align 8
  %206 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %207 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %210 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %209, i32 0, i32 2
  store i64 %208, i64* %210, align 8
  %211 = load i64, i64* %13, align 8
  %212 = icmp sgt i64 %211, 256
  br i1 %212, label %213, label %219

213:                                              ; preds = %201
  %214 = load i32, i32* @ARCMSR_CDB_FLAG_SGL_BSIZE, align 4
  %215 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %216 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %213, %201
  br label %223

220:                                              ; preds = %3
  %221 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %222 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %221, i32 0, i32 2
  store i64 0, i64* %222, align 8
  br label %223

223:                                              ; preds = %220, %219
  %224 = load i64, i64* %13, align 8
  %225 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %226 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %225, i32 0, i32 0
  store i64 %224, i64* %226, align 8
  %227 = load i64, i64* %13, align 8
  %228 = sdiv i64 %227, 256
  %229 = load i64, i64* %13, align 8
  %230 = srem i64 %229, 256
  %231 = icmp ne i64 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 1, i32 0
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %228, %234
  %236 = load %struct.ARCMSR_CDB*, %struct.ARCMSR_CDB** %7, align 8
  %237 = getelementptr inbounds %struct.ARCMSR_CDB, %struct.ARCMSR_CDB* %236, i32 0, i32 1
  store i64 %235, i64* %237, align 8
  ret void
}

declare dso_local i32 @memset(%struct.ARCMSR_CDB*, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i64) #1

declare dso_local i32 @scsiio_cdb_ptr(%struct.ccb_scsiio*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @arcmsr_htole32(i32) #1

declare dso_local i32 @dma_addr_lo32(i32) #1

declare dso_local i32 @dma_addr_hi32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
