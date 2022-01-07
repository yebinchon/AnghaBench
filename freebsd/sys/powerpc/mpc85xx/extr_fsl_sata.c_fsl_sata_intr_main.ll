; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_intr_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_intr_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i64, %struct.TYPE_8__*, %union.ccb*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@FSL_SATA_P_CCR = common dso_local global i32 0, align 4
@FSL_SATA_MAX_SLOTS = common dso_local global i32 0, align 4
@FSL_SATA_ERR_NONE = common dso_local global i32 0, align 4
@FSL_SATA_P_HSTS_SNTFU = common dso_local global i32 0, align 4
@FSL_SATA_P_SNTF = common dso_local global i32 0, align 4
@FSL_SATA_P_SERR = common dso_local global i32 0, align 4
@FSL_SATA_P_HSTS_PR = common dso_local global i32 0, align 4
@FSL_SATA_P_HSTS_FE = common dso_local global i32 0, align 4
@FSL_SATA_P_HSTS_DE = common dso_local global i32 0, align 4
@FSL_SATA_P_CER = common dso_local global i32 0, align 4
@FSL_SATA_P_DER = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@FSL_SATA_ERR_TFE = common dso_local global i32 0, align 4
@FSL_SATA_ERR_SATA = common dso_local global i32 0, align 4
@FSL_SATA_ERR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_channel*, i32)* @fsl_sata_intr_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_intr_main(%struct.fsl_sata_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_sata_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.ccb*, align 8
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FSL_SATA_P_CCR, align 4
  %18 = call i32 @ATA_INL(i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %20 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FSL_SATA_P_CCR, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @ATA_OUTL(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %26 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %12, align 4
  %40 = ashr i32 %38, %39
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %45 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %55 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %58
  %60 = load i32, i32* @FSL_SATA_ERR_NONE, align 4
  %61 = call i32 @fsl_sata_end_transaction(%struct.TYPE_8__* %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %43, %37
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %33

66:                                               ; preds = %33
  br label %67

67:                                               ; preds = %66, %29, %2
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @FSL_SATA_P_HSTS_SNTFU, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %74 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @FSL_SATA_P_SNTF, align 4
  %77 = call i32 @ATA_INL(i32 %75, i32 %76)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %80 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @FSL_SATA_P_SERR, align 4
  %83 = call i32 @ATA_INL(i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %85 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @FSL_SATA_P_SERR, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @ATA_OUTL(i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @FSL_SATA_P_HSTS_PR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %78
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @fsl_sata_phy_check_events(%struct.fsl_sata_channel* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %94
  br label %102

102:                                              ; preds = %101, %78
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @FSL_SATA_P_HSTS_FE, align 4
  %105 = load i32, i32* @FSL_SATA_P_HSTS_DE, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  store i32 %107, i32* %10, align 4
  %108 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %109 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @FSL_SATA_P_CER, align 4
  %112 = call i32 @ATA_INL(i32 %110, i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %114 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @FSL_SATA_P_CER, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @ATA_OUTL(i32 %115, i32 %116, i32 %117)
  %119 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %120 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @FSL_SATA_P_DER, align 4
  %123 = call i32 @ATA_INL(i32 %121, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %125 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @FSL_SATA_P_DER, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @ATA_OUTL(i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %230

132:                                              ; preds = %102
  %133 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %134 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %133, i32 0, i32 2
  %135 = load %union.ccb*, %union.ccb** %134, align 8
  %136 = icmp ne %union.ccb* %135, null
  br i1 %136, label %137, label %172

137:                                              ; preds = %132
  %138 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %139 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %138, i32 0, i32 2
  %140 = load %union.ccb*, %union.ccb** %139, align 8
  store %union.ccb* %140, %union.ccb** %13, align 8
  %141 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %142 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %141, i32 0, i32 2
  store %union.ccb* null, %union.ccb** %142, align 8
  %143 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %144 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %145 = or i32 %143, %144
  %146 = load %union.ccb*, %union.ccb** %13, align 8
  %147 = bitcast %union.ccb* %146 to %struct.TYPE_5__*
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 4
  %149 = load %union.ccb*, %union.ccb** %13, align 8
  %150 = bitcast %union.ccb* %149 to %struct.TYPE_5__*
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %137
  %157 = load %union.ccb*, %union.ccb** %13, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_5__*
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @xpt_freeze_devq(i32 %160, i32 1)
  %162 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %163 = load %union.ccb*, %union.ccb** %13, align 8
  %164 = bitcast %union.ccb* %163 to %struct.TYPE_5__*
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %162
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %156, %137
  %169 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %170 = load %union.ccb*, %union.ccb** %13, align 8
  %171 = call i32 @fsl_sata_done(%struct.fsl_sata_channel* %169, %union.ccb* %170)
  br label %172

172:                                              ; preds = %168, %132
  store i32 0, i32* %12, align 4
  br label %173

173:                                              ; preds = %226, %172
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %229

177:                                              ; preds = %173
  %178 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %179 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %178, i32 0, i32 1
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = icmp eq %struct.TYPE_7__* %185, null
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  br label %226

188:                                              ; preds = %177
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* %12, align 4
  %191 = shl i32 1, %190
  %192 = and i32 %189, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = load i32, i32* @FSL_SATA_ERR_TFE, align 4
  store i32 %195, i32* %11, align 4
  br label %217

196:                                              ; preds = %188
  %197 = load i32, i32* %6, align 4
  %198 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %199 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %198, i32 0, i32 1
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 1, %208
  %210 = and i32 %197, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %196
  %213 = load i32, i32* @FSL_SATA_ERR_SATA, align 4
  store i32 %213, i32* %11, align 4
  br label %216

214:                                              ; preds = %196
  %215 = load i32, i32* @FSL_SATA_ERR_INVALID, align 4
  store i32 %215, i32* %11, align 4
  br label %216

216:                                              ; preds = %214, %212
  br label %217

217:                                              ; preds = %216, %194
  %218 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %219 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %218, i32 0, i32 1
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i64 %222
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @fsl_sata_end_transaction(%struct.TYPE_8__* %223, i32 %224)
  br label %226

226:                                              ; preds = %217, %187
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %12, align 4
  br label %173

229:                                              ; preds = %173
  br label %230

230:                                              ; preds = %229, %102
  %231 = load i32, i32* %8, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @fsl_sata_notify_events(%struct.fsl_sata_channel* %234, i32 %235)
  br label %237

237:                                              ; preds = %233, %230
  ret void
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @fsl_sata_end_transaction(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @fsl_sata_phy_check_events(%struct.fsl_sata_channel*, i32) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @fsl_sata_done(%struct.fsl_sata_channel*, %union.ccb*) #1

declare dso_local i32 @fsl_sata_notify_events(%struct.fsl_sata_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
