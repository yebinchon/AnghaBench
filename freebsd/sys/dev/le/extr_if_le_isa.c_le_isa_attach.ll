; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_isa.c_le_isa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_isa.c_le_isa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i32 }
%struct.le_isa_softc = type { i32*, i32*, i32*, i32, i32, i32, %struct.TYPE_7__, i32, i8*, i8* }
%struct.TYPE_7__ = type { %struct.lance_softc }
%struct.lance_softc = type { i64, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i8*, i8*, i8*, i8*, i32*, i64, i64, i32 }

@le_isa_ids = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@PCNET_RAP = common dso_local global i8* null, align 8
@PCNET_RDP = common dso_local global i8* null, align 8
@le_isa_params = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"cannot determine chip\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot allocate registers\0A\00", align 1
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot allocate DMA channel\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@BUS_SPACE_MAXADDR_24BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"cannot allocate parent DMA tag\0A\00", align 1
@LE_ISA_MEMSIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"cannot allocate buffer DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"cannot allocate DMA buffer memory\0A\00", align 1
@le_isa_dma_callback = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"cannot load DMA buffer map\0A\00", align 1
@lance_copytobuf_contig = common dso_local global i8* null, align 8
@lance_copyfrombuf_contig = common dso_local global i8* null, align 8
@lance_zerobuf_contig = common dso_local global i32 0, align 4
@le_isa_rdcsr = common dso_local global i32 0, align 4
@le_isa_wrcsr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot attach Am7990\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@am7990_intr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"cannot set up interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @le_isa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_isa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.le_isa_softc*, align 8
  %5 = alloca %struct.lance_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.le_isa_softc* @device_get_softc(i32 %13)
  store %struct.le_isa_softc* %14, %struct.le_isa_softc** %4, align 8
  %15 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %16 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store %struct.lance_softc* %17, %struct.lance_softc** %5, align 8
  %18 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_nameunit(i32 %19)
  %21 = call i32 @LE_LOCK_INIT(%struct.lance_softc* %18, i32 %20)
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_parent(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @le_isa_ids, align 4
  %26 = call i32 @ISA_PNP_PROBE(i32 %23, i32 %24, i32 %25)
  switch i32 %26, label %94 [
    i32 0, label %27
    i32 129, label %37
    i32 128, label %93
  ]

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SYS_RES_IOPORT, align 4
  %30 = load i32, i32* @RF_ACTIVE, align 4
  %31 = call i8* @bus_alloc_resource_any(i32 %28, i32 %29, i32* %11, i32 %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %34 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load i8*, i8** @PCNET_RAP, align 8
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** @PCNET_RDP, align 8
  store i8* %36, i8** %8, align 8
  store i8* null, i8** %6, align 8
  store i32 1, i32* %12, align 4
  br label %97

37:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %89, %37
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @le_isa_params, align 8
  %41 = call i32 @nitems(%struct.TYPE_6__* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %92

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @le_isa_params, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = call i32 @le_isa_probe_legacy(i32 %44, %struct.TYPE_6__* %48)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %43
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SYS_RES_IOPORT, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @le_isa_params, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RF_ACTIVE, align 4
  %61 = call i32* @bus_alloc_resource_anywhere(i32 %52, i32 %53, i32* %11, i32 %59, i32 %60)
  %62 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %63 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @le_isa_params, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %7, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @le_isa_params, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %8, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @le_isa_params, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %6, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @le_isa_params, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %12, align 4
  br label %98

88:                                               ; preds = %43
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %38

92:                                               ; preds = %38
  br label %93

93:                                               ; preds = %1, %92
  br label %94

94:                                               ; preds = %1, %93
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 128, i32* %9, align 4
  br label %389

97:                                               ; preds = %27
  br label %98

98:                                               ; preds = %97, %51
  %99 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %100 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @device_printf(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 128, i32* %9, align 4
  br label %389

106:                                              ; preds = %98
  %107 = load i8*, i8** %7, align 8
  %108 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %109 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %108, i32 0, i32 9
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %112 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %111, i32 0, i32 8
  store i8* %110, i8** %112, align 8
  store i32 0, i32* %10, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @SYS_RES_DRQ, align 4
  %115 = load i32, i32* @RF_ACTIVE, align 4
  %116 = call i8* @bus_alloc_resource_any(i32 %113, i32 %114, i32* %10, i32 %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %119 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %118, i32 0, i32 1
  store i32* %117, i32** %119, align 8
  %120 = icmp eq i32* %117, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %106
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @device_printf(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 128, i32* %9, align 4
  br label %378

124:                                              ; preds = %106
  store i32 0, i32* %10, align 4
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @SYS_RES_IRQ, align 4
  %127 = load i32, i32* @RF_SHAREABLE, align 4
  %128 = load i32, i32* @RF_ACTIVE, align 4
  %129 = or i32 %127, %128
  %130 = call i8* @bus_alloc_resource_any(i32 %125, i32 %126, i32* %10, i32 %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %133 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %132, i32 0, i32 2
  store i32* %131, i32** %133, align 8
  %134 = icmp eq i32* %131, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %124
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @device_printf(i32 %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 128, i32* %9, align 4
  br label %367

138:                                              ; preds = %124
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @bus_get_dma_tag(i32 %139)
  %141 = load i32, i32* @BUS_SPACE_MAXADDR_24BIT, align 4
  %142 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %143 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %144 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %145 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %146 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %145, i32 0, i32 3
  %147 = call i32 @bus_dma_tag_create(i32 %140, i32 1, i32 0, i32 %141, i32 %142, i32* null, i32* null, i32 %143, i32 0, i32 %144, i32 0, i32* null, i32* null, i32* %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %138
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @device_printf(i32 %151, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %356

153:                                              ; preds = %138
  %154 = load i32, i32* @LE_ISA_MEMSIZE, align 4
  %155 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %156 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %155, i32 0, i32 19
  store i32 %154, i32* %156, align 8
  %157 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %158 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @BUS_SPACE_MAXADDR_24BIT, align 4
  %161 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %162 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %163 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %162, i32 0, i32 19
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %166 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %165, i32 0, i32 19
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %169 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %168, i32 0, i32 4
  %170 = call i32 @bus_dma_tag_create(i32 %159, i32 8, i32 0, i32 %160, i32 %161, i32* null, i32* null, i32 %164, i32 1, i32 %167, i32 0, i32* null, i32* null, i32* %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %153
  %174 = load i32, i32* %3, align 4
  %175 = call i32 @device_printf(i32 %174, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %351

176:                                              ; preds = %153
  %177 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %178 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %181 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %180, i32 0, i32 1
  %182 = bitcast i32* %181 to i8**
  %183 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %184 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %187 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %186, i32 0, i32 5
  %188 = call i32 @bus_dmamem_alloc(i32 %179, i8** %182, i32 %185, i32* %187)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %176
  %192 = load i32, i32* %3, align 4
  %193 = call i32 @device_printf(i32 %192, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %346

194:                                              ; preds = %176
  %195 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %196 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  %197 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %198 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %201 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %204 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %207 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %206, i32 0, i32 19
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @le_isa_dma_callback, align 4
  %210 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %211 = call i32 @bus_dmamap_load(i32 %199, i32 %202, i32 %205, i32 %208, i32 %209, %struct.lance_softc* %210, i32 0)
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %194
  %215 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %216 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214, %194
  %220 = load i32, i32* %3, align 4
  %221 = call i32 @device_printf(i32 %220, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %335

222:                                              ; preds = %214
  %223 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %224 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @rman_get_start(i32* %225)
  %227 = call i32 @isa_dmacascade(i32 %226)
  %228 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %229 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %228, i32 0, i32 18
  store i64 0, i64* %229, align 8
  %230 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %231 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %230, i32 0, i32 17
  store i64 0, i64* %231, align 8
  store i32 0, i32* %10, align 4
  br label %232

232:                                              ; preds = %253, %222
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = icmp ult i64 %234, 8
  br i1 %235, label %236, label %256

236:                                              ; preds = %232
  %237 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %238 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i8*, i8** %6, align 8
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* %12, align 4
  %243 = mul nsw i32 %241, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr i8, i8* %240, i64 %244
  %246 = call i32 @bus_read_1(i32* %239, i8* %245)
  %247 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %248 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %247, i32 0, i32 16
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %246, i32* %252, align 4
  br label %253

253:                                              ; preds = %236
  %254 = load i32, i32* %10, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %10, align 4
  br label %232

256:                                              ; preds = %232
  %257 = load i8*, i8** @lance_copytobuf_contig, align 8
  %258 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %259 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %258, i32 0, i32 15
  store i8* %257, i8** %259, align 8
  %260 = load i8*, i8** @lance_copyfrombuf_contig, align 8
  %261 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %262 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %261, i32 0, i32 14
  store i8* %260, i8** %262, align 8
  %263 = load i8*, i8** @lance_copytobuf_contig, align 8
  %264 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %265 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %264, i32 0, i32 13
  store i8* %263, i8** %265, align 8
  %266 = load i8*, i8** @lance_copyfrombuf_contig, align 8
  %267 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %268 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %267, i32 0, i32 12
  store i8* %266, i8** %268, align 8
  %269 = load i32, i32* @lance_zerobuf_contig, align 4
  %270 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %271 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %270, i32 0, i32 11
  store i32 %269, i32* %271, align 8
  %272 = load i32, i32* @le_isa_rdcsr, align 4
  %273 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %274 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %273, i32 0, i32 10
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* @le_isa_wrcsr, align 4
  %276 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %277 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %276, i32 0, i32 9
  store i32 %275, i32* %277, align 8
  %278 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %279 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %278, i32 0, i32 8
  store i32* null, i32** %279, align 8
  %280 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %281 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %280, i32 0, i32 7
  store i32* null, i32** %281, align 8
  %282 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %283 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %282, i32 0, i32 6
  store i32* null, i32** %283, align 8
  %284 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %285 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %284, i32 0, i32 5
  store i32* null, i32** %285, align 8
  %286 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %287 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %286, i32 0, i32 4
  store i32* null, i32** %287, align 8
  %288 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %289 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %288, i32 0, i32 3
  store i32* null, i32** %289, align 8
  %290 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %291 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %290, i32 0, i32 2
  store i32* null, i32** %291, align 8
  %292 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %293 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %292, i32 0, i32 6
  %294 = load i32, i32* %3, align 4
  %295 = call i32 @device_get_name(i32 %294)
  %296 = load i32, i32* %3, align 4
  %297 = call i32 @device_get_unit(i32 %296)
  %298 = call i32 @am7990_config(%struct.TYPE_7__* %293, i32 %295, i32 %297)
  store i32 %298, i32* %9, align 4
  %299 = load i32, i32* %9, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %256
  %302 = load i32, i32* %3, align 4
  %303 = call i32 @device_printf(i32 %302, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %327

304:                                              ; preds = %256
  %305 = load i32, i32* %3, align 4
  %306 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %307 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %306, i32 0, i32 2
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* @INTR_TYPE_NET, align 4
  %310 = load i32, i32* @INTR_MPSAFE, align 4
  %311 = or i32 %309, %310
  %312 = load i32, i32* @am7990_intr, align 4
  %313 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %314 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %315 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %314, i32 0, i32 7
  %316 = call i32 @bus_setup_intr(i32 %305, i32* %308, i32 %311, i32* null, i32 %312, %struct.lance_softc* %313, i32* %315)
  store i32 %316, i32* %9, align 4
  %317 = load i32, i32* %9, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %304
  %320 = load i32, i32* %3, align 4
  %321 = call i32 @device_printf(i32 %320, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %323

322:                                              ; preds = %304
  store i32 0, i32* %2, align 4
  br label %393

323:                                              ; preds = %319
  %324 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %325 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %324, i32 0, i32 6
  %326 = call i32 @am7990_detach(%struct.TYPE_7__* %325)
  br label %327

327:                                              ; preds = %323, %301
  %328 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %329 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %332 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @bus_dmamap_unload(i32 %330, i32 %333)
  br label %335

335:                                              ; preds = %327, %219
  %336 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %337 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %340 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %343 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @bus_dmamem_free(i32 %338, i32 %341, i32 %344)
  br label %346

346:                                              ; preds = %335, %191
  %347 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %348 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @bus_dma_tag_destroy(i32 %349)
  br label %351

351:                                              ; preds = %346, %173
  %352 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %353 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @bus_dma_tag_destroy(i32 %354)
  br label %356

356:                                              ; preds = %351, %150
  %357 = load i32, i32* %3, align 4
  %358 = load i32, i32* @SYS_RES_IRQ, align 4
  %359 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %360 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %359, i32 0, i32 2
  %361 = load i32*, i32** %360, align 8
  %362 = call i32 @rman_get_rid(i32* %361)
  %363 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %364 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %363, i32 0, i32 2
  %365 = load i32*, i32** %364, align 8
  %366 = call i32 @bus_release_resource(i32 %357, i32 %358, i32 %362, i32* %365)
  br label %367

367:                                              ; preds = %356, %135
  %368 = load i32, i32* %3, align 4
  %369 = load i32, i32* @SYS_RES_DRQ, align 4
  %370 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %371 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = call i32 @rman_get_rid(i32* %372)
  %374 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %375 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %374, i32 0, i32 1
  %376 = load i32*, i32** %375, align 8
  %377 = call i32 @bus_release_resource(i32 %368, i32 %369, i32 %373, i32* %376)
  br label %378

378:                                              ; preds = %367, %121
  %379 = load i32, i32* %3, align 4
  %380 = load i32, i32* @SYS_RES_IOPORT, align 4
  %381 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %382 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %381, i32 0, i32 0
  %383 = load i32*, i32** %382, align 8
  %384 = call i32 @rman_get_rid(i32* %383)
  %385 = load %struct.le_isa_softc*, %struct.le_isa_softc** %4, align 8
  %386 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %385, i32 0, i32 0
  %387 = load i32*, i32** %386, align 8
  %388 = call i32 @bus_release_resource(i32 %379, i32 %380, i32 %384, i32* %387)
  br label %389

389:                                              ; preds = %378, %103, %94
  %390 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %391 = call i32 @LE_LOCK_DESTROY(%struct.lance_softc* %390)
  %392 = load i32, i32* %9, align 4
  store i32 %392, i32* %2, align 4
  br label %393

393:                                              ; preds = %389, %322
  %394 = load i32, i32* %2, align 4
  ret i32 %394
}

declare dso_local %struct.le_isa_softc* @device_get_softc(i32) #1

declare dso_local i32 @LE_LOCK_INIT(%struct.lance_softc*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @ISA_PNP_PROBE(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_6__*) #1

declare dso_local i32 @le_isa_probe_legacy(i32, %struct.TYPE_6__*) #1

declare dso_local i32* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.lance_softc*, i32) #1

declare dso_local i32 @isa_dmacascade(i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @bus_read_1(i32*, i8*) #1

declare dso_local i32 @am7990_config(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.lance_softc*, i32*) #1

declare dso_local i32 @am7990_detach(%struct.TYPE_7__*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @LE_LOCK_DESTROY(%struct.lance_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
