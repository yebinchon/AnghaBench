; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_pci.c_sdhci_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_pci.c_sdhci_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sdhci_pci_softc = type { i32, i64, %struct.sdhci_slot*, i32, i32*, i32** }
%struct.sdhci_slot = type { i32 }

@sdhci_devices = common dso_local global %struct.TYPE_2__* null, align 8
@sdhci_quirk_clear = common dso_local global i32 0, align 4
@sdhci_quirk_set = common dso_local global i32 0, align 4
@SDHCI_QUIRK_LOWER_FREQUENCY = common dso_local global i32 0, align 4
@PCI_SLOT_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Incorrect slots information (%d, %d).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sdhci_enable_msi = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Can't allocate IRQ\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for slot %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%d slot(s) allocated\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@sdhci_pci_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Can't setup IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sdhci_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_pci_softc*, align 8
  %5 = alloca %struct.sdhci_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.sdhci_pci_softc* @device_get_softc(i32 %13)
  store %struct.sdhci_pci_softc* %14, %struct.sdhci_pci_softc** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @pci_get_device(i32 %15)
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @pci_get_vendor(i32 %19)
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 65535
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pci_get_subvendor(i32 %25)
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %71, %1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdhci_devices, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %27
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdhci_devices, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %35
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdhci_devices, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 65535
  br i1 %51, label %61, label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdhci_devices, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %52, %44
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdhci_devices, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %69 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %74

70:                                               ; preds = %52, %35
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %27

74:                                               ; preds = %61, %27
  %75 = load i32, i32* @sdhci_quirk_clear, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %78 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* @sdhci_quirk_set, align 4
  %82 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %83 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %87 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SDHCI_QUIRK_LOWER_FREQUENCY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @sdhci_lower_frequency(i32 %93)
  br label %95

95:                                               ; preds = %92, %74
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @PCI_SLOT_INFO, align 4
  %98 = call i32 @pci_read_config(i32 %96, i32 %97, i32 1)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @PCI_SLOT_INFO_FIRST_BAR(i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @PCI_SLOT_INFO_SLOTS(i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp sgt i32 %103, 6
  br i1 %104, label %108, label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %106, 5
  br i1 %107, label %108, label %114

108:                                              ; preds = %105, %95
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i32, i8*, ...) @device_printf(i32 %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %2, align 4
  br label %253

114:                                              ; preds = %105
  store i32 1, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %115 = load i64, i64* @sdhci_enable_msi, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32, i32* %3, align 4
  %119 = call i64 @pci_alloc_msi(i32 %118, i32* %12)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 1, i32* %10, align 4
  br label %122

122:                                              ; preds = %121, %117, %114
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @SYS_RES_IRQ, align 4
  %125 = load i32, i32* @RF_ACTIVE, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %131

129:                                              ; preds = %122
  %130 = load i32, i32* @RF_SHAREABLE, align 4
  br label %131

131:                                              ; preds = %129, %128
  %132 = phi i32 [ 0, %128 ], [ %130, %129 ]
  %133 = or i32 %125, %132
  %134 = call i8* @bus_alloc_resource_any(i32 %123, i32 %124, i32* %10, i32 %133)
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %137 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %136, i32 0, i32 4
  store i32* %135, i32** %137, align 8
  %138 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %139 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %131
  %143 = load i32, i32* %3, align 4
  %144 = call i32 (i32, i8*, ...) @device_printf(i32 %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @pci_release_msi(i32 %145)
  %147 = load i32, i32* @ENOMEM, align 4
  store i32 %147, i32* %2, align 4
  br label %253

148:                                              ; preds = %131
  store i32 0, i32* %12, align 4
  br label %149

149:                                              ; preds = %205, %148
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %208

153:                                              ; preds = %149
  %154 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %155 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %154, i32 0, i32 2
  %156 = load %struct.sdhci_slot*, %struct.sdhci_slot** %155, align 8
  %157 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %158 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %156, i64 %159
  store %struct.sdhci_slot* %160, %struct.sdhci_slot** %5, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %161, %162
  %164 = call i32 @PCIR_BAR(i32 %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @SYS_RES_MEMORY, align 4
  %167 = load i32, i32* @RF_ACTIVE, align 4
  %168 = call i8* @bus_alloc_resource_any(i32 %165, i32 %166, i32* %10, i32 %167)
  %169 = bitcast i8* %168 to i32*
  %170 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %171 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %170, i32 0, i32 5
  %172 = load i32**, i32*** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %172, i64 %174
  store i32* %169, i32** %175, align 8
  %176 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %177 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %176, i32 0, i32 5
  %178 = load i32**, i32*** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = icmp eq i32* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %153
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i32 (i32, i8*, ...) @device_printf(i32 %185, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %186)
  br label %205

188:                                              ; preds = %153
  %189 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %190 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %193 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %3, align 4
  %195 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %196 = load i32, i32* %12, align 4
  %197 = call i64 @sdhci_init_slot(i32 %194, %struct.sdhci_slot* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %188
  br label %205

200:                                              ; preds = %188
  %201 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %202 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %202, align 8
  br label %205

205:                                              ; preds = %200, %199, %184
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %149

208:                                              ; preds = %149
  %209 = load i32, i32* %3, align 4
  %210 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %211 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i32 (i32, i8*, ...) @device_printf(i32 %209, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %212)
  %214 = load i32, i32* %3, align 4
  %215 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %216 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* @INTR_TYPE_MISC, align 4
  %219 = load i32, i32* @INTR_MPSAFE, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @sdhci_pci_intr, align 4
  %222 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %223 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %224 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %223, i32 0, i32 3
  %225 = call i32 @bus_setup_intr(i32 %214, i32* %217, i32 %220, i32* null, i32 %221, %struct.sdhci_pci_softc* %222, i32* %224)
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %208
  %229 = load i32, i32* %3, align 4
  %230 = call i32 (i32, i8*, ...) @device_printf(i32 %229, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %231

231:                                              ; preds = %228, %208
  %232 = load i32, i32* %3, align 4
  %233 = call i32 @pci_enable_busmaster(i32 %232)
  store i32 0, i32* %12, align 4
  br label %234

234:                                              ; preds = %249, %231
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %238 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ult i64 %236, %239
  br i1 %240, label %241, label %252

241:                                              ; preds = %234
  %242 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %4, align 8
  %243 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %242, i32 0, i32 2
  %244 = load %struct.sdhci_slot*, %struct.sdhci_slot** %243, align 8
  %245 = load i32, i32* %12, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %244, i64 %246
  %248 = call i32 @sdhci_start_slot(%struct.sdhci_slot* %247)
  br label %249

249:                                              ; preds = %241
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %12, align 4
  br label %234

252:                                              ; preds = %234
  store i32 0, i32* %2, align 4
  br label %253

253:                                              ; preds = %252, %142, %108
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local %struct.sdhci_pci_softc* @device_get_softc(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @sdhci_lower_frequency(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @PCI_SLOT_INFO_FIRST_BAR(i32) #1

declare dso_local i32 @PCI_SLOT_INFO_SLOTS(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i64 @sdhci_init_slot(i32, %struct.sdhci_slot*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.sdhci_pci_softc*, i32*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @sdhci_start_slot(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
