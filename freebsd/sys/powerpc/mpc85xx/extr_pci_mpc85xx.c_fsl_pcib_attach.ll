; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pcib_softc = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32*, i64, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not map I/O memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@REG_PEX_IP_BLK_REV1 = common dso_local global i32 0, align 4
@IP_MN_M = common dso_local global i32 0, align 4
@IP_MN_S = common dso_local global i32 0, align 4
@IP_MJ_M = common dso_local global i32 0, align 4
@IP_MJ_S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"pcicfg\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_CAP_PTR = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_SERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@PCIR_BRIDGECTL_1 = common dso_local global i32 0, align 4
@PCIB_BCR_SECBUS_RESET = common dso_local global i32 0, align 4
@PCIR_LTSSM = common dso_local global i32 0, align 4
@LTSSM_STAT_L0 = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"PCI %d: no PCIE link, skipping\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Detach of the driver failed with error %d\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@fsl_pcib_err_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsl_pcib_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pcib_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_pcib_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.fsl_pcib_softc* @device_get_softc(i32 %13)
  store %struct.fsl_pcib_softc* %14, %struct.fsl_pcib_softc** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %17 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %19 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %23 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %22, i32 0, i32 0
  %24 = load i32, i32* @RF_ACTIVE, align 4
  %25 = call i8* @bus_alloc_resource_any(i32 %20, i32 %21, i32* %23, i32 %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %28 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %27, i32 0, i32 9
  store i32* %26, i32** %28, align 8
  %29 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %30 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %29, i32 0, i32 9
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %254

37:                                               ; preds = %1
  %38 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %39 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %38, i32 0, i32 9
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @rman_get_bustag(i32* %40)
  %42 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %43 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %42, i32 0, i32 12
  store i32 %41, i32* %43, align 4
  %44 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %45 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %44, i32 0, i32 9
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @rman_get_bushandle(i32* %46)
  %48 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %49 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %48, i32 0, i32 11
  store i32 %47, i32* %49, align 8
  %50 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %51 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %50, i32 0, i32 10
  store i64 0, i64* %51, align 8
  %52 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %53 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %52, i32 0, i32 9
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @REG_PEX_IP_BLK_REV1, align 4
  %56 = call i32 @bus_read_4(i32* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @IP_MN_M, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @IP_MN_S, align 4
  %61 = ashr i32 %59, %60
  %62 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %63 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @IP_MJ_M, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @IP_MJ_S, align 4
  %68 = ashr i32 %66, %67
  %69 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %70 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %72 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %71, i32 0, i32 8
  %73 = load i32, i32* @MTX_SPIN, align 4
  %74 = call i32 @mtx_init(i32* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %73)
  %75 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %76 = load i32, i32* @PCIR_VENDOR, align 4
  %77 = call i8* @fsl_pcib_cfgread(%struct.fsl_pcib_softc* %75, i32 0, i32 0, i32 0, i32 %76, i32 2)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 4183
  br i1 %80, label %81, label %85

81:                                               ; preds = %37
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 6487
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %252

85:                                               ; preds = %81, %37
  %86 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %87 = load i32, i32* @PCIR_CAP_PTR, align 4
  %88 = call i8* @fsl_pcib_cfgread(%struct.fsl_pcib_softc* %86, i32 0, i32 0, i32 0, i32 %87, i32 1)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %107, %85
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i8* @fsl_pcib_cfgread(%struct.fsl_pcib_softc* %94, i32 0, i32 0, i32 0, i32 %95, i32 2)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, 255
  switch i32 %99, label %107 [
    i32 128, label %100
    i32 129, label %101
  ]

100:                                              ; preds = %93
  br label %107

101:                                              ; preds = %93
  %102 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %103 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %102, i32 0, i32 3
  store i32 1, i32* %103, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %106 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %93, %101, %100
  %108 = load i32, i32* %6, align 4
  %109 = ashr i32 %108, 8
  %110 = and i32 %109, 255
  store i32 %110, i32* %12, align 4
  br label %90

111:                                              ; preds = %90
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @ofw_bus_get_node(i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @ofw_pci_init(i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %2, align 4
  br label %254

120:                                              ; preds = %111
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %123 = call i64 @fsl_pcib_decode_win(i32 %121, %struct.fsl_pcib_softc* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %252

126:                                              ; preds = %120
  %127 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %128 = load i32, i32* @PCIR_COMMAND, align 4
  %129 = call i8* @fsl_pcib_cfgread(%struct.fsl_pcib_softc* %127, i32 0, i32 0, i32 0, i32 %128, i32 2)
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* @PCIM_CMD_SERRESPEN, align 4
  %132 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %6, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %6, align 4
  %140 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %141 = load i32, i32* @PCIR_COMMAND, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @fsl_pcib_cfgwrite(%struct.fsl_pcib_softc* %140, i32 0, i32 0, i32 0, i32 %141, i32 %142, i32 2)
  %144 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %145 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %148 = call i32 @fsl_pcib_read_config(i32 %146, i32 0, i32 0, i32 0, i32 %147, i32 1)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* @PCIB_BCR_SECBUS_RESET, align 4
  %150 = load i32, i32* %7, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %7, align 4
  %152 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %153 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @fsl_pcib_write_config(i32 %154, i32 0, i32 0, i32 0, i32 %155, i32 %156, i32 1)
  %158 = call i32 @DELAY(i32 100000)
  %159 = load i32, i32* @PCIB_BCR_SECBUS_RESET, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %7, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %7, align 4
  %163 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %164 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @fsl_pcib_write_config(i32 %165, i32 0, i32 0, i32 0, i32 %166, i32 %167, i32 1)
  %169 = call i32 @DELAY(i32 100000)
  %170 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %171 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %126
  %175 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %176 = load i32, i32* @PCIR_LTSSM, align 4
  %177 = call i8* @fsl_pcib_cfgread(%struct.fsl_pcib_softc* %175, i32 0, i32 0, i32 0, i32 %176, i32 1)
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @LTSSM_STAT_L0, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %174
  %183 = load i64, i64* @bootverbose, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @device_get_unit(i32 %186)
  %188 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %185, %182
  store i32 0, i32* %2, align 4
  br label %254

190:                                              ; preds = %174
  br label %191

191:                                              ; preds = %190, %126
  store i32 0, i32* %10, align 4
  %192 = load i32, i32* %3, align 4
  %193 = load i32, i32* @SYS_RES_IRQ, align 4
  %194 = load i32, i32* @RF_ACTIVE, align 4
  %195 = load i32, i32* @RF_SHAREABLE, align 4
  %196 = or i32 %194, %195
  %197 = call i8* @bus_alloc_resource_any(i32 %192, i32 %193, i32* %10, i32 %196)
  %198 = bitcast i8* %197 to i32*
  %199 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %200 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %199, i32 0, i32 6
  store i32* %198, i32** %200, align 8
  %201 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %202 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %201, i32 0, i32 6
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %216

205:                                              ; preds = %191
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @fsl_pcib_detach(i32 %206)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* %9, align 4
  %213 = call i32 (i32, i8*, ...) @device_printf(i32 %211, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %210, %205
  %215 = load i32, i32* @ENXIO, align 4
  store i32 %215, i32* %2, align 4
  br label %254

216:                                              ; preds = %191
  %217 = load i32, i32* %3, align 4
  %218 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %219 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %218, i32 0, i32 6
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* @INTR_TYPE_MISC, align 4
  %222 = load i32, i32* @INTR_MPSAFE, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @fsl_pcib_err_intr, align 4
  %225 = load i32, i32* %3, align 4
  %226 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %227 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %226, i32 0, i32 5
  %228 = call i32 @bus_setup_intr(i32 %217, i32* %220, i32 %223, i32* null, i32 %224, i32 %225, i32** %227)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %247

231:                                              ; preds = %216
  %232 = load i32, i32* %3, align 4
  %233 = load i32, i32* %9, align 4
  %234 = call i32 (i32, i8*, ...) @device_printf(i32 %232, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %233)
  %235 = load %struct.fsl_pcib_softc*, %struct.fsl_pcib_softc** %4, align 8
  %236 = getelementptr inbounds %struct.fsl_pcib_softc, %struct.fsl_pcib_softc* %235, i32 0, i32 5
  store i32* null, i32** %236, align 8
  %237 = load i32, i32* %3, align 4
  %238 = call i32 @fsl_pcib_detach(i32 %237)
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %231
  %242 = load i32, i32* %3, align 4
  %243 = load i32, i32* %9, align 4
  %244 = call i32 (i32, i8*, ...) @device_printf(i32 %242, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %241, %231
  %246 = load i32, i32* @ENXIO, align 4
  store i32 %246, i32* %2, align 4
  br label %254

247:                                              ; preds = %216
  %248 = load i32, i32* %3, align 4
  %249 = call i32 @fsl_pcib_err_init(i32 %248)
  %250 = load i32, i32* %3, align 4
  %251 = call i32 @ofw_pci_attach(i32 %250)
  store i32 %251, i32* %2, align 4
  br label %254

252:                                              ; preds = %125, %84
  %253 = load i32, i32* @ENXIO, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %252, %247, %245, %214, %189, %118, %33
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local %struct.fsl_pcib_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @bus_read_4(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i8* @fsl_pcib_cfgread(%struct.fsl_pcib_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @ofw_pci_init(i32) #1

declare dso_local i64 @fsl_pcib_decode_win(i32, %struct.fsl_pcib_softc*) #1

declare dso_local i32 @fsl_pcib_cfgwrite(%struct.fsl_pcib_softc*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fsl_pcib_read_config(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fsl_pcib_write_config(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @fsl_pcib_detach(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, i32, i32**) #1

declare dso_local i32 @fsl_pcib_err_init(i32) #1

declare dso_local i32 @ofw_pci_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
