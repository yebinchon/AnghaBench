; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_pci.c_esp_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_pci.c_esp_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_pci_softc = type { i32*, i32, i32, i32, i32, i32, %struct.ncr53c9x_softc }
%struct.ncr53c9x_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@esp_pci_glue = common dso_local global i32 0, align 4
@esp_pci_res_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to allocate resources\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot create parent DMA tag\0A\00", align 1
@NCRCFG1_PARENB = common dso_local global i32 0, align 4
@NCRCFG2_SCSI2 = common dso_local global i32 0, align 4
@NCRCFG2_FE = common dso_local global i32 0, align 4
@NCRAMDCFG3_IDM = common dso_local global i32 0, align 4
@NCRAMDCFG3_FCLK = common dso_local global i32 0, align 4
@NCRAMDCFG4_GE12NS = common dso_local global i32 0, align 4
@NCRAMDCFG4_RADE = common dso_local global i32 0, align 4
@NCR_VARIANT_AM53C974 = common dso_local global i32 0, align 4
@NCR_F_FASTSCSI = common dso_local global i32 0, align 4
@NCR_F_DMASELECT = common dso_local global i32 0, align 4
@NCRAMDCFG3_FSCSI = common dso_local global i32 0, align 4
@DFLTPHYS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot create transfer DMA tag\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"cannot create transfer DMA map\0A\00", align 1
@ESP_PCI_RES_INTR = common dso_local global i64 0, align 8
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@ncr53c9x_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot set up interrupt\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"ncr53c9x_attach failed\0A\00", align 1
@MDL_SEG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @esp_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.esp_pci_softc*, align 8
  %5 = alloca %struct.ncr53c9x_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.esp_pci_softc* @device_get_softc(i32 %7)
  store %struct.esp_pci_softc* %8, %struct.esp_pci_softc** %4, align 8
  %9 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %9, i32 0, i32 6
  store %struct.ncr53c9x_softc* %10, %struct.ncr53c9x_softc** %5, align 8
  %11 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %12 = call i32 @NCR_LOCK_INIT(%struct.ncr53c9x_softc* %11)
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %15 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %16, i32 0, i32 15
  store i32* @esp_pci_glue, i32** %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @pci_enable_busmaster(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @esp_pci_res_spec, align 4
  %22 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %23 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @bus_alloc_resources(i32 %20, i32 %21, i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @esp_pci_res_spec, align 4
  %33 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %34 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_release_resources(i32 %31, i32 %32, i32* %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %214

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @bus_get_dma_tag(i32 %39)
  %41 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %42 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %43 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %44 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %45 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %46 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %47 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %46, i32 0, i32 1
  %48 = call i32 @bus_dma_tag_create(i32 %40, i32 1, i32 0, i32 %41, i32 %42, i32* null, i32* null, i32 %43, i32 %44, i32 %45, i32 0, i32* null, i32* null, i32* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %204

54:                                               ; preds = %38
  %55 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %56 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %55, i32 0, i32 0
  store i32 7, i32* %56, align 8
  %57 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %58 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NCRCFG1_PARENB, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %63 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @NCRCFG2_SCSI2, align 4
  %65 = load i32, i32* @NCRCFG2_FE, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %68 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @NCRAMDCFG3_IDM, align 4
  %70 = load i32, i32* @NCRAMDCFG3_FCLK, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %73 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @NCRAMDCFG4_GE12NS, align 4
  %75 = load i32, i32* @NCRAMDCFG4_RADE, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %78 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @NCR_VARIANT_AM53C974, align 4
  %80 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %81 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %80, i32 0, i32 14
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @NCR_F_FASTSCSI, align 4
  %83 = load i32, i32* @NCR_F_DMASELECT, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %86 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @NCRAMDCFG3_FSCSI, align 4
  %88 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %89 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %88, i32 0, i32 13
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %91 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %90, i32 0, i32 6
  store i32 40, i32* %91, align 8
  %92 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %93 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = sdiv i32 1000, %94
  %96 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %97 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @DFLTPHYS, align 4
  %99 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %100 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %99, i32 0, i32 12
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %102 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %101, i32 0, i32 8
  store i32 15, i32* %102, align 8
  %103 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %104 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %103, i32 0, i32 9
  store i32 1, i32* %104, align 4
  %105 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %106 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %110 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %111 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %112 = load i32*, i32** @busdma_lock_mutex, align 8
  %113 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %114 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %113, i32 0, i32 11
  %115 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %116 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %115, i32 0, i32 2
  %117 = call i32 @bus_dma_tag_create(i32 %107, i32 %108, i32 0, i32 %109, i32 %110, i32* null, i32* null, i32 4096, i32 1, i32 4096, i32 %111, i32* %112, i32* %114, i32* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %54
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @device_printf(i32 %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %199

123:                                              ; preds = %54
  %124 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %125 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %128 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %127, i32 0, i32 3
  %129 = call i32 @bus_dmamap_create(i32 %126, i32 0, i32* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @device_printf(i32 %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %194

135:                                              ; preds = %123
  %136 = load i32, i32* %3, align 4
  %137 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %138 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @ESP_PCI_RES_INTR, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @INTR_MPSAFE, align 4
  %144 = load i32, i32* @INTR_TYPE_CAM, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @ncr53c9x_intr, align 4
  %147 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %148 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %149 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %148, i32 0, i32 4
  %150 = call i32 @bus_setup_intr(i32 %136, i32 %142, i32 %145, i32* null, i32 %146, %struct.ncr53c9x_softc* %147, i32* %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %135
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @device_printf(i32 %154, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %186

156:                                              ; preds = %135
  %157 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %158 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %161 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %160, i32 0, i32 10
  store i32 %159, i32* %161, align 8
  %162 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %163 = call i32 @ncr53c9x_attach(%struct.ncr53c9x_softc* %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %156
  %167 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %168 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @device_printf(i32 %169, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %172

171:                                              ; preds = %156
  store i32 0, i32* %2, align 4
  br label %214

172:                                              ; preds = %166
  %173 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %174 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %177 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @ESP_PCI_RES_INTR, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %183 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @bus_teardown_intr(i32 %175, i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %172, %153
  %187 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %188 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %191 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @bus_dmamap_destroy(i32 %189, i32 %192)
  br label %194

194:                                              ; preds = %186, %132
  %195 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %196 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @bus_dma_tag_destroy(i32 %197)
  br label %199

199:                                              ; preds = %194, %120
  %200 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %201 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @bus_dma_tag_destroy(i32 %202)
  br label %204

204:                                              ; preds = %199, %51
  %205 = load i32, i32* %3, align 4
  %206 = load i32, i32* @esp_pci_res_spec, align 4
  %207 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %208 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @bus_release_resources(i32 %205, i32 %206, i32* %209)
  %211 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %212 = call i32 @NCR_LOCK_DESTROY(%struct.ncr53c9x_softc* %211)
  %213 = load i32, i32* %6, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %204, %171, %28
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.esp_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @NCR_LOCK_INIT(%struct.ncr53c9x_softc*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.ncr53c9x_softc*, i32*) #1

declare dso_local i32 @ncr53c9x_attach(%struct.ncr53c9x_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @NCR_LOCK_DESTROY(%struct.ncr53c9x_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
