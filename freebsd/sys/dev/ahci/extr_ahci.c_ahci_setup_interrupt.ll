; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_setup_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_setup_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, %struct.ahci_controller* }

@AHCI_GHC = common dso_local global i32 0, align 4
@AHCI_GHC_MRSM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Falling back to one MSI\0A\00", align 1
@AHCI_MAX_IRQS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Too many irqs %d > %d (clamping)\0A\00", align 1
@AHCI_IRQ_MODE_ONE = common dso_local global i64 0, align 8
@AHCI_IRQ_MODE_ALL = common dso_local global i64 0, align 8
@AHCI_IRQ_MODE_AFTER = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ATA_INTR_FLAGS = common dso_local global i32 0, align 4
@ahci_intr = common dso_local global i32 0, align 4
@AHCI_Q_EDGEIS = common dso_local global i32 0, align 4
@ahci_intr_one_edge = common dso_local global i32 0, align 4
@ahci_intr_one = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"unable to setup interrupt\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ch%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahci_setup_interrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_controller*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ahci_controller* @device_get_softc(i32 %6)
  store %struct.ahci_controller* %7, %struct.ahci_controller** %4, align 8
  %8 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %9 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %14 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @AHCI_GHC, align 4
  %17 = call i32 @ATA_INL(i32 %15, i32 %16)
  %18 = load i32, i32* @AHCI_GHC_MRSM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %25 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %21, %12, %1
  %27 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %28 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AHCI_MAX_IRQS, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %35 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AHCI_MAX_IRQS, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* @AHCI_MAX_IRQS, align 4
  %40 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %41 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %32, %26
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %283, %42
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %46 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %286

49:                                               ; preds = %43
  %50 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %51 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %52 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  store %struct.ahci_controller* %50, %struct.ahci_controller** %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %60 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = add nsw i32 %58, %64
  %66 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %67 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %65, i32* %72, align 8
  %73 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %74 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %96

77:                                               ; preds = %49
  %78 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %79 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %77
  %83 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %84 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i64, i64* @AHCI_IRQ_MODE_ONE, align 8
  %89 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %90 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %89, i32 0, i32 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i64 %88, i64* %95, align 8
  br label %162

96:                                               ; preds = %82, %77, %49
  %97 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %98 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %118, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %104 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %102, %105
  br i1 %106, label %118, label %107

107:                                              ; preds = %101
  %108 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %109 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %107
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %115 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %112, %101, %96
  %119 = load i64, i64* @AHCI_IRQ_MODE_ALL, align 8
  %120 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %121 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %120, i32 0, i32 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  store i64 %119, i64* %126, align 8
  br label %161

127:                                              ; preds = %112, %107
  %128 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %129 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %132 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %130, %133
  br i1 %134, label %135, label %151

135:                                              ; preds = %127
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %138 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 1
  %141 = icmp eq i32 %136, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %135
  %143 = load i64, i64* @AHCI_IRQ_MODE_AFTER, align 8
  %144 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %145 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %144, i32 0, i32 4
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  store i64 %143, i64* %150, align 8
  br label %160

151:                                              ; preds = %135, %127
  %152 = load i64, i64* @AHCI_IRQ_MODE_ONE, align 8
  %153 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %154 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %153, i32 0, i32 4
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  store i64 %152, i64* %159, align 8
  br label %160

160:                                              ; preds = %151, %142
  br label %161

161:                                              ; preds = %160, %118
  br label %162

162:                                              ; preds = %161, %87
  %163 = load i32, i32* %3, align 4
  %164 = load i32, i32* @SYS_RES_IRQ, align 4
  %165 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %166 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %165, i32 0, i32 4
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* @RF_SHAREABLE, align 4
  %173 = load i32, i32* @RF_ACTIVE, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @bus_alloc_resource_any(i32 %163, i32 %164, i32* %171, i32 %174)
  %176 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %177 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %176, i32 0, i32 4
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  store i32 %175, i32* %182, align 4
  %183 = icmp ne i32 %175, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %162
  %185 = load i32, i32* %3, align 4
  %186 = call i32 (i32, i8*, ...) @device_printf(i32 %185, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %187 = load i32, i32* @ENXIO, align 4
  store i32 %187, i32* %2, align 4
  br label %287

188:                                              ; preds = %162
  %189 = load i32, i32* %3, align 4
  %190 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %191 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %190, i32 0, i32 4
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @ATA_INTR_FLAGS, align 4
  %199 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %200 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %199, i32 0, i32 4
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @AHCI_IRQ_MODE_ONE, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %188
  %210 = load i32, i32* @ahci_intr, align 4
  br label %224

211:                                              ; preds = %188
  %212 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %213 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @AHCI_Q_EDGEIS, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %211
  %219 = load i32, i32* @ahci_intr_one_edge, align 4
  br label %222

220:                                              ; preds = %211
  %221 = load i32, i32* @ahci_intr_one, align 4
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi i32 [ %219, %218 ], [ %221, %220 ]
  br label %224

224:                                              ; preds = %222, %209
  %225 = phi i32 [ %210, %209 ], [ %223, %222 ]
  %226 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %227 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %226, i32 0, i32 4
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i64 %230
  %232 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %233 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %232, i32 0, i32 4
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 2
  %239 = call i64 @bus_setup_intr(i32 %189, i32 %197, i32 %198, i32* null, i32 %225, %struct.TYPE_2__* %231, i32* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %224
  %242 = load i32, i32* %3, align 4
  %243 = call i32 (i32, i8*, ...) @device_printf(i32 %242, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %244 = load i32, i32* @ENXIO, align 4
  store i32 %244, i32* %2, align 4
  br label %287

245:                                              ; preds = %224
  %246 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %247 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp sgt i32 %248, 1
  br i1 %249, label %250, label %282

250:                                              ; preds = %245
  %251 = load i32, i32* %3, align 4
  %252 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %253 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %252, i32 0, i32 4
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %253, align 8
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %261 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %260, i32 0, i32 4
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %261, align 8
  %263 = load i32, i32* %5, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %269 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %268, i32 0, i32 4
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** %269, align 8
  %271 = load i32, i32* %5, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @AHCI_IRQ_MODE_ONE, align 8
  %277 = icmp eq i64 %275, %276
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %280 = load i32, i32* %5, align 4
  %281 = call i32 @bus_describe_intr(i32 %251, i32 %259, i32 %267, i8* %279, i32 %280)
  br label %282

282:                                              ; preds = %250, %245
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %5, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %5, align 4
  br label %43

286:                                              ; preds = %43
  store i32 0, i32* %2, align 4
  br label %287

287:                                              ; preds = %286, %241, %184
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @bus_describe_intr(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
