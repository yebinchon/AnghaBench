; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_begin_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_begin_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i32, i32, i64, i32, i64, i32, %struct.TYPE_10__, i32*, i32, i32*, i32, %struct.fsl_sata_slot*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.fsl_sata_slot = type { %struct.TYPE_11__, i32, i64, %union.ccb* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%union.ccb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"fsl_sata_begin_transaction func_code=0x%x\0A\00", align 1
@FSL_SATA_MAX_SLOTS = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@FSL_SATA_SLOT_LOADING = common dso_local global i32 0, align 4
@fsl_sata_dmasetprd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fsl_sata_begin_transaction exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_channel*, %union.ccb*)* @fsl_sata_begin_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_begin_transaction(%struct.fsl_sata_channel* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.fsl_sata_channel*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.fsl_sata_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %8 = load %union.ccb*, %union.ccb** %4, align 8
  %9 = bitcast %union.ccb* %8 to %struct.TYPE_12__*
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %13 = load %union.ccb*, %union.ccb** %4, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_12__*
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @CAM_DEBUG(i32 %11, i32 %12, i8* %17)
  %19 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %union.ccb*, %union.ccb** %4, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_12__*
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XPT_ATA_IO, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %2
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_9__*
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %37 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %36, i32 0, i32 12
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load %union.ccb*, %union.ccb** %4, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_12__*
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %35, %26, %2
  %47 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %48 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %55 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %58 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  %61 = ashr i32 %56, %60
  %62 = xor i32 %61, -1
  %63 = call i32 @ffs(i32 %62)
  store i32 %63, i32* %6, align 4
  br label %65

64:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %53
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %71 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %69, %72
  %74 = load i32, i32* %7, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %68, %65
  %77 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %78 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, -1
  %81 = call i32 @ffs(i32 %80)
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %89

83:                                               ; preds = %68
  %84 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %85 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %83, %76
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %92 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %94 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %93, i32 0, i32 11
  %95 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %95, i64 %97
  store %struct.fsl_sata_slot* %98, %struct.fsl_sata_slot** %5, align 8
  %99 = load %union.ccb*, %union.ccb** %4, align 8
  %100 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %5, align 8
  %101 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %100, i32 0, i32 3
  store %union.ccb* %99, %union.ccb** %101, align 8
  %102 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %5, align 8
  %103 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %105 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %89
  %109 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %110 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 3
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %115 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %114, i32 0, i32 10
  %116 = call i32 @callout_stop(i32* %115)
  br label %117

117:                                              ; preds = %113, %108, %89
  %118 = load i32, i32* %6, align 4
  %119 = shl i32 1, %118
  %120 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %121 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %125 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  %128 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %129 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %128, i32 0, i32 9
  %130 = load i32*, i32** %129, align 8
  %131 = load %union.ccb*, %union.ccb** %4, align 8
  %132 = bitcast %union.ccb* %131 to %struct.TYPE_12__*
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load %union.ccb*, %union.ccb** %4, align 8
  %139 = bitcast %union.ccb* %138 to %struct.TYPE_12__*
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @XPT_ATA_IO, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %174

144:                                              ; preds = %117
  %145 = load %union.ccb*, %union.ccb** %4, align 8
  %146 = bitcast %union.ccb* %145 to %struct.TYPE_9__*
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %174

153:                                              ; preds = %144
  %154 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %155 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  %158 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %159 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %158, i32 0, i32 7
  %160 = load i32*, i32** %159, align 8
  %161 = load %union.ccb*, %union.ccb** %4, align 8
  %162 = bitcast %union.ccb* %161 to %struct.TYPE_12__*
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load %union.ccb*, %union.ccb** %4, align 8
  %169 = bitcast %union.ccb* %168 to %struct.TYPE_12__*
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %173 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %172, i32 0, i32 4
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %153, %144, %117
  %175 = load %union.ccb*, %union.ccb** %4, align 8
  %176 = bitcast %union.ccb* %175 to %struct.TYPE_12__*
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @XPT_ATA_IO, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %199

181:                                              ; preds = %174
  %182 = load %union.ccb*, %union.ccb** %4, align 8
  %183 = bitcast %union.ccb* %182 to %struct.TYPE_9__*
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %188 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %189 = or i32 %187, %188
  %190 = and i32 %186, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %181
  %193 = load i32, i32* %6, align 4
  %194 = shl i32 1, %193
  %195 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %196 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %192, %181, %174
  %200 = load %union.ccb*, %union.ccb** %4, align 8
  %201 = bitcast %union.ccb* %200 to %struct.TYPE_12__*
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @CAM_DIR_MASK, align 4
  %205 = and i32 %203, %204
  %206 = load i32, i32* @CAM_DIR_NONE, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %224

208:                                              ; preds = %199
  %209 = load i32, i32* @FSL_SATA_SLOT_LOADING, align 4
  %210 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %5, align 8
  %211 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 8
  %212 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %213 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %5, align 8
  %217 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %union.ccb*, %union.ccb** %4, align 8
  %221 = load i32, i32* @fsl_sata_dmasetprd, align 4
  %222 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %5, align 8
  %223 = call i32 @bus_dmamap_load_ccb(i32 %215, i32 %219, %union.ccb* %220, i32 %221, %struct.fsl_sata_slot* %222, i32 0)
  br label %230

224:                                              ; preds = %199
  %225 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %5, align 8
  %226 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  store i64 0, i64* %227, align 8
  %228 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %5, align 8
  %229 = call i32 @fsl_sata_execute_transaction(%struct.fsl_sata_slot* %228)
  br label %230

230:                                              ; preds = %224, %208
  %231 = load %union.ccb*, %union.ccb** %4, align 8
  %232 = bitcast %union.ccb* %231 to %struct.TYPE_12__*
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %236 = call i32 @CAM_DEBUG(i32 %234, i32 %235, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.fsl_sata_slot*, i32) #1

declare dso_local i32 @fsl_sata_execute_transaction(%struct.fsl_sata_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
