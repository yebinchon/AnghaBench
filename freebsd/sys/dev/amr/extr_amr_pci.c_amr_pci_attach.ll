; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32 }
%struct.amr_ident = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@AMR_ID_QUARTZ = common dso_local global i32 0, align 4
@AMR_TYPE_QUARTZ = common dso_local global i32 0, align 4
@amr_force_sg32 = common dso_local global i64 0, align 8
@AMR_ID_DO_SG64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Using 64-bit DMA\0A\00", align 1
@AMR_TYPE_SG64 = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't allocate register window\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"can't allocate interrupt\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@amr_pci_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"can't set up interrupt\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"interrupt attached\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"can't allocate parent DMA tag\0A\00", align 1
@DFLTPHYS = common dso_local global i32 0, align 4
@AMR_NSEG = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"can't allocate buffer DMA tag\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"dma tag done\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"AMR List Lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"AMR HW Lock\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"mailbox setup\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"s/g list mapped\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"ccb mapped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amr_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.amr_softc*, align 8
  %5 = alloca %struct.amr_ident*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = call i32 @debug_called(i32 1)
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.amr_softc* @device_get_softc(i32 %10)
  store %struct.amr_softc* %11, %struct.amr_softc** %4, align 8
  %12 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %13 = call i32 @bzero(%struct.amr_softc* %12, i32 64)
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %16 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.amr_ident* @amr_find_ident(i32 %18)
  store %struct.amr_ident* %19, %struct.amr_ident** %5, align 8
  %20 = icmp eq %struct.amr_ident* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %245

23:                                               ; preds = %1
  %24 = load %struct.amr_ident*, %struct.amr_ident** %5, align 8
  %25 = getelementptr inbounds %struct.amr_ident, %struct.amr_ident* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AMR_ID_QUARTZ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* @AMR_TYPE_QUARTZ, align 4
  %32 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %33 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %23
  %37 = load i64, i64* @amr_force_sg32, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.amr_ident*, %struct.amr_ident** %5, align 8
  %41 = getelementptr inbounds %struct.amr_ident, %struct.amr_ident* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AMR_ID_DO_SG64, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  br i1 false, label %47, label %55

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @AMR_TYPE_SG64, align 4
  %51 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %52 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %47, %46, %39, %36
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @pci_enable_busmaster(i32 %56)
  %58 = call i32 @PCIR_BAR(i32 0)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %60 = call i64 @AMR_IS_QUARTZ(%struct.amr_softc* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @SYS_RES_MEMORY, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @SYS_RES_IOPORT, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @RF_ACTIVE, align 4
  %71 = call i8* @bus_alloc_resource_any(i32 %68, i32 %69, i32* %6, i32 %70)
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %74 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %73, i32 0, i32 8
  store i32* %72, i32** %74, align 8
  %75 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %76 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %75, i32 0, i32 8
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %66
  %80 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %81 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %237

84:                                               ; preds = %66
  %85 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %86 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %85, i32 0, i32 8
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @rman_get_bustag(i32* %87)
  %89 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %90 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 4
  %91 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %92 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %91, i32 0, i32 8
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @rman_get_bushandle(i32* %93)
  %95 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %96 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 8
  store i32 0, i32* %6, align 4
  %97 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %98 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @SYS_RES_IRQ, align 4
  %101 = load i32, i32* @RF_SHAREABLE, align 4
  %102 = load i32, i32* @RF_ACTIVE, align 4
  %103 = or i32 %101, %102
  %104 = call i8* @bus_alloc_resource_any(i32 %99, i32 %100, i32* %6, i32 %103)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %107 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %106, i32 0, i32 7
  store i32* %105, i32** %107, align 8
  %108 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %109 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %108, i32 0, i32 7
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %84
  %113 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %114 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @device_printf(i32 %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %237

117:                                              ; preds = %84
  %118 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %119 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %122 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %121, i32 0, i32 7
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @INTR_TYPE_BIO, align 4
  %125 = load i32, i32* @INTR_ENTROPY, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @INTR_MPSAFE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @amr_pci_intr, align 4
  %130 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %131 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %132 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %131, i32 0, i32 6
  %133 = call i64 @bus_setup_intr(i32 %120, i32* %123, i32 %128, i32* null, i32 %129, %struct.amr_softc* %130, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %117
  %136 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %137 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @device_printf(i32 %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %237

140:                                              ; preds = %117
  %141 = call i32 @debug(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %142 = load i32, i32* @ENOMEM, align 4
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @bus_get_dma_tag(i32 %143)
  %145 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %146 = call i64 @AMR_IS_SG64(%struct.amr_softc* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %140
  %149 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  br label %152

150:                                              ; preds = %140
  %151 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  %154 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %155 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %156 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %157 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %158 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %159 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %158, i32 0, i32 4
  %160 = call i64 @bus_dma_tag_create(i32 %144, i32 1, i32 0, i32 %153, i32 %154, i32* null, i32* null, i32 %155, i32 %156, i32 %157, i32 0, i32* null, i32* null, i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %152
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @device_printf(i32 %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %237

165:                                              ; preds = %152
  %166 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %167 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %170 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %171 = load i32, i32* @DFLTPHYS, align 4
  %172 = load i32, i32* @AMR_NSEG, align 4
  %173 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %174 = load i32*, i32** @busdma_lock_mutex, align 8
  %175 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %176 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %175, i32 0, i32 1
  %177 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %178 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %177, i32 0, i32 5
  %179 = call i64 @bus_dma_tag_create(i32 %168, i32 1, i32 0, i32 %169, i32 %170, i32* null, i32* null, i32 %171, i32 %172, i32 %173, i32 0, i32* %174, i32* %176, i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %165
  %182 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %183 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @device_printf(i32 %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %237

186:                                              ; preds = %165
  %187 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %188 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %191 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %192 = load i32, i32* @DFLTPHYS, align 4
  %193 = load i32, i32* @AMR_NSEG, align 4
  %194 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %195 = load i32*, i32** @busdma_lock_mutex, align 8
  %196 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %197 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %196, i32 0, i32 1
  %198 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %199 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %198, i32 0, i32 3
  %200 = call i64 @bus_dma_tag_create(i32 %189, i32 1, i32 0, i32 %190, i32 %191, i32* null, i32* null, i32 %192, i32 %193, i32 %194, i32 0, i32* %195, i32* %197, i32* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %186
  %203 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %204 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @device_printf(i32 %205, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %237

207:                                              ; preds = %186
  %208 = call i32 @debug(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %209 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %210 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %209, i32 0, i32 1
  %211 = load i32, i32* @MTX_DEF, align 4
  %212 = call i32 @mtx_init(i32* %210, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32* null, i32 %211)
  %213 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %214 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %213, i32 0, i32 0
  %215 = load i32, i32* @MTX_DEF, align 4
  %216 = call i32 @mtx_init(i32* %214, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 %215)
  %217 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %218 = call i32 @amr_setup_mbox(%struct.amr_softc* %217)
  store i32 %218, i32* %8, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %207
  br label %237

221:                                              ; preds = %207
  %222 = call i32 @debug(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %223 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %224 = call i32 @amr_sglist_map(%struct.amr_softc* %223)
  store i32 %224, i32* %8, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %237

227:                                              ; preds = %221
  %228 = call i32 @debug(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %229 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %230 = call i32 @amr_ccb_map(%struct.amr_softc* %229)
  store i32 %230, i32* %8, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  br label %237

233:                                              ; preds = %227
  %234 = call i32 @debug(i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %235 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %236 = call i32 @amr_attach(%struct.amr_softc* %235)
  store i32 %236, i32* %8, align 4
  br label %237

237:                                              ; preds = %233, %232, %226, %220, %202, %181, %162, %135, %112, %79
  %238 = load i32, i32* %8, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %242 = call i32 @amr_pci_free(%struct.amr_softc* %241)
  br label %243

243:                                              ; preds = %240, %237
  %244 = load i32, i32* %8, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %243, %21
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.amr_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.amr_softc*, i32) #1

declare dso_local %struct.amr_ident* @amr_find_ident(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i64 @AMR_IS_QUARTZ(%struct.amr_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.amr_softc*, i32*) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @AMR_IS_SG64(%struct.amr_softc*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @amr_setup_mbox(%struct.amr_softc*) #1

declare dso_local i32 @amr_sglist_map(%struct.amr_softc*) #1

declare dso_local i32 @amr_ccb_map(%struct.amr_softc*) #1

declare dso_local i32 @amr_attach(%struct.amr_softc*) #1

declare dso_local i32 @amr_pci_free(%struct.amr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
