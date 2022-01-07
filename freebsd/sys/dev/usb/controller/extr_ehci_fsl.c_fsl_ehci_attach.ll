; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_fsl.c_fsl_ehci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_fsl.c_fsl_ehci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__, i32, i32*, i32*, i32*, i32, i32*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }

@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Detach of the driver failed with error %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@FSL_EHCI_REG_OFF = common dso_local global i32 0, align 4
@FSL_EHCI_REG_SIZE = common dso_local global i32 0, align 4
@bs_le_tag = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ehci_interrupt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Freescale\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Could not reset the controller\0A\00", align 1
@EHCI_SCFLG_DONTRESET = common dso_local global i32 0, align 4
@EHCI_SCFLG_NORESTERM = common dso_local global i32 0, align 4
@EHCI_SCFLG_DONEINIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"USB init failed err=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsl_ehci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_ehci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.TYPE_10__* @device_get_softc(i32 %9)
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  store i32 %11, i32* %14, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @EHCI_MAX_DEVICES, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 32, i32* %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @USB_GET_DMA_TAG(i32 %30)
  %32 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_11__* %29, i32 %31, i32* @ehci_iterate_hw_softc)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %2, align 4
  br label %255

36:                                               ; preds = %1
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SYS_RES_MEMORY, align 4
  %39 = load i32, i32* @RF_ACTIVE, align 4
  %40 = call i8* @bus_alloc_resource_any(i32 %37, i32 %38, i32* %5, i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 8
  store i32* %41, i32** %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %36
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @fsl_ehci_detach(i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  br label %255

59:                                               ; preds = %36
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 8
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @rman_get_bustag(i32* %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 8
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @rman_get_bushandle(i32* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @FSL_EHCI_REG_OFF, align 4
  %71 = load i32, i32* @FSL_EHCI_REG_SIZE, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 7
  %74 = call i32 @bus_space_subregion(i32 %68, i32 %69, i32 %70, i32 %71, i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %59
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @fsl_ehci_detach(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i32, i32* @ENXIO, align 4
  store i32 %87, i32* %2, align 4
  br label %255

88:                                               ; preds = %59
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 6
  store i32* @bs_le_tag, i32** %90, align 8
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @SYS_RES_IRQ, align 4
  %93 = load i32, i32* @RF_ACTIVE, align 4
  %94 = call i8* @bus_alloc_resource_any(i32 %91, i32 %92, i32* %5, i32 %93)
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 5
  store i32* %95, i32** %97, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %88
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @fsl_ehci_detach(i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i32, i32* @ENXIO, align 4
  store i32 %112, i32* %2, align 4
  br label %255

113:                                              ; preds = %88
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @INTR_TYPE_BIO, align 4
  %119 = load i32, i32* @INTR_MPSAFE, align 4
  %120 = or i32 %118, %119
  %121 = load i64, i64* @ehci_interrupt, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 4
  %126 = call i32 @bus_setup_intr(i32 %114, i32* %117, i32 %120, i32* null, i32* %122, %struct.TYPE_10__* %123, i32** %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %113
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 4
  store i32* null, i32** %134, align 8
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @fsl_ehci_detach(i32 %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 (i32, i8*, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %139, %129
  %144 = load i32, i32* @ENXIO, align 4
  store i32 %144, i32* %2, align 4
  br label %255

145:                                              ; preds = %113
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @device_add_child(i32 %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %169, label %156

156:                                              ; preds = %145
  %157 = load i32, i32* %3, align 4
  %158 = call i32 (i32, i8*, ...) @device_printf(i32 %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @fsl_ehci_detach(i32 %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 (i32, i8*, ...) @device_printf(i32 %164, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %163, %156
  %168 = load i32, i32* @ENOMEM, align 4
  store i32 %168, i32* %2, align 4
  br label %255

169:                                              ; preds = %145
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 2
  %176 = call i32 @device_set_ivars(i32 %173, %struct.TYPE_11__* %175)
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  store i32 4660, i32* %178, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @strlcpy(i32 %181, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %184 = call i32 @ehci_reset(%struct.TYPE_10__* %183)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %169
  %188 = load i32, i32* %3, align 4
  %189 = call i32 (i32, i8*, ...) @device_printf(i32 %188, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @fsl_ehci_detach(i32 %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* %6, align 4
  %197 = call i32 (i32, i8*, ...) @device_printf(i32 %195, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %194, %187
  %199 = load i32, i32* @ENXIO, align 4
  store i32 %199, i32* %2, align 4
  br label %255

200:                                              ; preds = %169
  %201 = load i32, i32* %3, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @enable_usb(i32 %201, i32 %202, i32 %203)
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @set_snooping(i32 %205, i32 %206)
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %209 = call i32 @set_to_host_mode(%struct.TYPE_10__* %208)
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @set_32b_prefetch(i32 %210, i32 %211)
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %214 = call i32 @clear_port_power(%struct.TYPE_10__* %213)
  %215 = load i32, i32* @EHCI_SCFLG_DONTRESET, align 4
  %216 = load i32, i32* @EHCI_SCFLG_NORESTERM, align 4
  %217 = or i32 %215, %216
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 4
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %223 = call i32 @ehci_init(%struct.TYPE_10__* %222)
  store i32 %223, i32* %6, align 4
  %224 = load i32, i32* %6, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %237, label %226

226:                                              ; preds = %200
  %227 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 4
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @device_probe_and_attach(i32 %235)
  store i32 %236, i32* %6, align 4
  br label %237

237:                                              ; preds = %226, %200
  %238 = load i32, i32* %6, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %237
  %241 = load i32, i32* %3, align 4
  %242 = load i32, i32* %6, align 4
  %243 = call i32 (i32, i8*, ...) @device_printf(i32 %241, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* %3, align 4
  %245 = call i32 @fsl_ehci_detach(i32 %244)
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %240
  %249 = load i32, i32* %3, align 4
  %250 = load i32, i32* %6, align 4
  %251 = call i32 (i32, i8*, ...) @device_printf(i32 %249, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %248, %240
  %253 = load i32, i32* @EIO, align 4
  store i32 %253, i32* %2, align 4
  br label %255

254:                                              ; preds = %237
  store i32 0, i32* %2, align 4
  br label %255

255:                                              ; preds = %254, %252, %198, %167, %143, %111, %86, %57, %34
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local %struct.TYPE_10__* @device_get_softc(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @fsl_ehci_detach(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @bus_space_subregion(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.TYPE_10__*, i32**) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ehci_reset(%struct.TYPE_10__*) #1

declare dso_local i32 @enable_usb(i32, i32, i32) #1

declare dso_local i32 @set_snooping(i32, i32) #1

declare dso_local i32 @set_to_host_mode(%struct.TYPE_10__*) #1

declare dso_local i32 @set_32b_prefetch(i32, i32) #1

declare dso_local i32 @clear_port_power(%struct.TYPE_10__*) #1

declare dso_local i32 @ehci_init(%struct.TYPE_10__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
