; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ismt/extr_ismt.c_ismt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ismt/extr_ismt.c_ismt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ismt_softc = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"smbus\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"no smbus child found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot allocate mmio region\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to attach child: %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@DESC_SIZE = common dso_local global i32 0, align 4
@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@ismt_single_map = common dso_local global i32 0, align 4
@ISMT_MSTR_MDBA = common dso_local global i64 0, align 8
@ISMT_MSTR_MCTRL = common dso_local global i64 0, align 8
@ISMT_MCTRL_MEIE = common dso_local global i32 0, align 4
@ISMT_MSTR_MSTS = common dso_local global i64 0, align 8
@ISMT_MSTR_MDS = common dso_local global i64 0, align 8
@ISMT_MDS_MASK = common dso_local global i32 0, align 4
@ISMT_DESC_ENTRIES = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"cannot allocate irq\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"using_msi = %d\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ismt_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"cannot setup interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ismt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ismt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ismt_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ismt_softc* @device_get_softc(i32 %8)
  store %struct.ismt_softc* %9, %struct.ismt_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %11, i32 0, i32 17
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @pci_enable_busmaster(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32* @device_add_child(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1)
  %17 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %17, i32 0, i32 16
  store i32* %16, i32** %18, align 8
  %19 = icmp eq i32* %16, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %5, align 4
  br label %288

24:                                               ; preds = %1
  %25 = call i32 @PCIR_BAR(i32 0)
  %26 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SYS_RES_MEMORY, align 4
  %30 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %30, i32 0, i32 0
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i8* @bus_alloc_resource_any(i32 %28, i32 %29, i32* %31, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %35, i32 0, i32 7
  store i32* %34, i32** %36, align 8
  %37 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %38 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %5, align 4
  br label %288

45:                                               ; preds = %24
  %46 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %47 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %46, i32 0, i32 7
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @rman_get_bustag(i32* %48)
  %50 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %51 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %50, i32 0, i32 15
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %53 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %52, i32 0, i32 7
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @rman_get_bushandle(i32* %54)
  %56 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %56, i32 0, i32 14
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @bus_generic_attach(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %45
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %5, align 4
  br label %288

66:                                               ; preds = %45
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @bus_get_dma_tag(i32 %67)
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %71 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %72 = load i32, i32* @DESC_SIZE, align 4
  %73 = load i32, i32* @DESC_SIZE, align 4
  %74 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %75 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %74, i32 0, i32 13
  %76 = call i32 @bus_dma_tag_create(i32 %68, i32 4, i32 %69, i32 %70, i32 %71, i32* null, i32* null, i32 %72, i32 1, i32 %73, i32 0, i32* null, i32* null, i32* %75)
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @bus_get_dma_tag(i32 %77)
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %81 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %82 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %83 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %84 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %85 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %84, i32 0, i32 10
  %86 = call i32 @bus_dma_tag_create(i32 %78, i32 4, i32 %79, i32 %80, i32 %81, i32* null, i32* null, i32 %82, i32 1, i32 %83, i32 0, i32* null, i32* null, i32* %85)
  %87 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %88 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %87, i32 0, i32 13
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %91 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %90, i32 0, i32 12
  %92 = call i32 @bus_dmamap_create(i32 %89, i32 0, i32* %91)
  %93 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %94 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %93, i32 0, i32 10
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %97 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %96, i32 0, i32 9
  %98 = call i32 @bus_dmamap_create(i32 %95, i32 0, i32* %97)
  %99 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %100 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %99, i32 0, i32 13
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %103 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %102, i32 0, i32 11
  %104 = bitcast i32* %103 to i8**
  %105 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %106 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %107 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %106, i32 0, i32 12
  %108 = call i32 @bus_dmamem_alloc(i32 %101, i8** %104, i32 %105, i32* %107)
  %109 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %110 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %113 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %112, i32 0, i32 8
  %114 = bitcast i32* %113 to i8**
  %115 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %116 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %117 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %116, i32 0, i32 9
  %118 = call i32 @bus_dmamem_alloc(i32 %111, i8** %114, i32 %115, i32* %117)
  %119 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %120 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %119, i32 0, i32 13
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %123 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %122, i32 0, i32 12
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %126 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %125, i32 0, i32 11
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @DESC_SIZE, align 4
  %129 = load i32, i32* @ismt_single_map, align 4
  %130 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %131 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %130, i32 0, i32 1
  %132 = call i32 @bus_dmamap_load(i32 %121, i32 %124, i32 %127, i32 %128, i32 %129, i32* %131, i32 0)
  %133 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %134 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %137 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %140 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %143 = load i32, i32* @ismt_single_map, align 4
  %144 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %145 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %144, i32 0, i32 2
  %146 = call i32 @bus_dmamap_load(i32 %135, i32 %138, i32 %141, i32 %142, i32 %143, i32* %145, i32 0)
  %147 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %148 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %147, i32 0, i32 7
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* @ISMT_MSTR_MDBA, align 8
  %151 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %152 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = and i64 %154, 4294967295
  %156 = trunc i64 %155 to i32
  %157 = call i32 @bus_write_4(i32* %149, i64 %150, i32 %156)
  %158 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %159 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %158, i32 0, i32 7
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* @ISMT_MSTR_MDBA, align 8
  %162 = add nsw i64 %161, 4
  %163 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %164 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = ashr i32 %165, 32
  %167 = call i32 @bus_write_4(i32* %160, i64 %162, i32 %166)
  %168 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %169 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %168, i32 0, i32 7
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @ISMT_MSTR_MCTRL, align 8
  %172 = load i32, i32* @ISMT_MCTRL_MEIE, align 4
  %173 = call i32 @bus_write_4(i32* %170, i64 %171, i32 %172)
  %174 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %175 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %174, i32 0, i32 7
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @ISMT_MSTR_MSTS, align 8
  %178 = call i32 @bus_write_4(i32* %176, i64 %177, i32 0)
  %179 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %180 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %179, i32 0, i32 7
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @ISMT_MSTR_MDS, align 8
  %183 = call i32 @bus_read_4(i32* %181, i64 %182)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* @ISMT_MDS_MASK, align 4
  %185 = xor i32 %184, -1
  %186 = load i32, i32* %7, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* @ISMT_DESC_ENTRIES, align 4
  %189 = sub nsw i32 %188, 1
  %190 = load i32, i32* %7, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %7, align 4
  %192 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %193 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %192, i32 0, i32 7
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* @ISMT_MSTR_MDS, align 8
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @bus_write_4(i32* %194, i64 %195, i32 %196)
  %198 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %199 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %198, i32 0, i32 3
  store i32 1, i32* %199, align 4
  %200 = load i32, i32* %3, align 4
  %201 = call i64 @pci_msi_count(i32 %200)
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %66
  %204 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %205 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %204, i32 0, i32 3
  store i32 0, i32* %205, align 4
  br label %235

206:                                              ; preds = %66
  store i32 1, i32* %6, align 4
  %207 = load i32, i32* %3, align 4
  %208 = call i64 @pci_alloc_msi(i32 %207, i32* %6)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %212 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %211, i32 0, i32 3
  store i32 0, i32* %212, align 4
  br label %235

213:                                              ; preds = %206
  %214 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %215 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %214, i32 0, i32 4
  store i32 1, i32* %215, align 8
  %216 = load i32, i32* %3, align 4
  %217 = load i32, i32* @SYS_RES_IRQ, align 4
  %218 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %219 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %218, i32 0, i32 4
  %220 = load i32, i32* @RF_ACTIVE, align 4
  %221 = call i8* @bus_alloc_resource_any(i32 %216, i32 %217, i32* %219, i32 %220)
  %222 = bitcast i8* %221 to i32*
  %223 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %224 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %223, i32 0, i32 6
  store i32* %222, i32** %224, align 8
  %225 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %226 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %225, i32 0, i32 6
  %227 = load i32*, i32** %226, align 8
  %228 = icmp eq i32* %227, null
  br i1 %228, label %229, label %234

229:                                              ; preds = %213
  %230 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %231 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %230, i32 0, i32 3
  store i32 0, i32* %231, align 4
  %232 = load i32, i32* %3, align 4
  %233 = call i32 @pci_release_msi(i32 %232)
  br label %234

234:                                              ; preds = %229, %213
  br label %235

235:                                              ; preds = %234, %210, %203
  %236 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %237 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %263

240:                                              ; preds = %235
  %241 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %242 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %241, i32 0, i32 4
  store i32 0, i32* %242, align 8
  %243 = load i32, i32* %3, align 4
  %244 = load i32, i32* @SYS_RES_IRQ, align 4
  %245 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %246 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %245, i32 0, i32 4
  %247 = load i32, i32* @RF_SHAREABLE, align 4
  %248 = load i32, i32* @RF_ACTIVE, align 4
  %249 = or i32 %247, %248
  %250 = call i8* @bus_alloc_resource_any(i32 %243, i32 %244, i32* %246, i32 %249)
  %251 = bitcast i8* %250 to i32*
  %252 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %253 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %252, i32 0, i32 6
  store i32* %251, i32** %253, align 8
  %254 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %255 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %254, i32 0, i32 6
  %256 = load i32*, i32** %255, align 8
  %257 = icmp eq i32* %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %240
  %259 = load i32, i32* %3, align 4
  %260 = call i32 (i32, i8*, ...) @device_printf(i32 %259, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %261 = load i32, i32* @ENXIO, align 4
  store i32 %261, i32* %5, align 4
  br label %288

262:                                              ; preds = %240
  br label %263

263:                                              ; preds = %262, %235
  %264 = load i32, i32* %3, align 4
  %265 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %266 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @ISMT_DEBUG(i32 %264, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* %3, align 4
  %270 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %271 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %270, i32 0, i32 6
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* @INTR_TYPE_MISC, align 4
  %274 = load i32, i32* @INTR_MPSAFE, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* @ismt_intr, align 4
  %277 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %278 = load %struct.ismt_softc*, %struct.ismt_softc** %4, align 8
  %279 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %278, i32 0, i32 5
  %280 = call i32 @bus_setup_intr(i32 %269, i32* %272, i32 %275, i32* null, i32 %276, %struct.ismt_softc* %277, i32* %279)
  store i32 %280, i32* %5, align 4
  %281 = load i32, i32* %5, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %263
  %284 = load i32, i32* %3, align 4
  %285 = call i32 (i32, i8*, ...) @device_printf(i32 %284, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %286 = load i32, i32* @ENXIO, align 4
  store i32 %286, i32* %5, align 4
  br label %288

287:                                              ; preds = %263
  store i32 0, i32* %2, align 4
  br label %292

288:                                              ; preds = %283, %258, %61, %41, %20
  %289 = load i32, i32* %3, align 4
  %290 = call i32 @ismt_detach(i32 %289)
  %291 = load i32, i32* %5, align 4
  store i32 %291, i32* %2, align 4
  br label %292

292:                                              ; preds = %288, %287
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

declare dso_local %struct.ismt_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_write_4(i32*, i64, i32) #1

declare dso_local i32 @bus_read_4(i32*, i64) #1

declare dso_local i64 @pci_msi_count(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @ISMT_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ismt_softc*, i32*) #1

declare dso_local i32 @ismt_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
