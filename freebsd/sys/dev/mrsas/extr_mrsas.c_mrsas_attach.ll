; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32, i32, i32, i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.mrsas_softc*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Adapter is in configurable secure mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Adapter is in non-secure mode\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot allocate PCI registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"mrsas_sim_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"mrsas_pci_lock\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"mrsas_io_lock\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"mrsas_aen_lock\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"mrsas_ioctl_lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"mrsas_mpt_cmd_pool_lock\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"mrsas_mfi_cmd_pool_lock\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"mrsas_raidmap_lock\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"mrsas_stream_lock\00", align 1
@MRSAS_HBA_OPERATIONAL = common dso_local global i32 0, align 4
@mrsas_ocr_thread = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"mrsas_ocr%d\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Error %d starting OCR thread\0A\00", align 1
@mrsas_ich_startup = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [36 x i8] c"Config hook is already established\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mrsas_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.mrsas_softc* @device_get_softc(i32 %7)
  store %struct.mrsas_softc* %8, %struct.mrsas_softc** %4, align 8
  %9 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %10 = call i32 @memset(%struct.mrsas_softc* %9, i32 0, i32 176)
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %13 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @pci_get_device(i32 %14)
  %16 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %17 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %37 [
    i32 131, label %21
    i32 135, label %21
    i32 133, label %21
    i32 132, label %21
    i32 137, label %21
    i32 136, label %21
    i32 129, label %24
    i32 139, label %24
    i32 134, label %24
    i32 130, label %24
    i32 128, label %24
    i32 138, label %24
    i32 146, label %27
    i32 142, label %27
    i32 145, label %30
    i32 141, label %30
    i32 147, label %33
    i32 144, label %33
    i32 143, label %33
    i32 140, label %33
  ]

21:                                               ; preds = %1, %1, %1, %1, %1, %1
  %22 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %23 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  br label %37

24:                                               ; preds = %1, %1, %1, %1, %1, %1
  %25 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %25, i32 0, i32 2
  store i32 1, i32* %26, align 8
  br label %37

27:                                               ; preds = %1, %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %1, %1, %27
  %31 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  br label %37

33:                                               ; preds = %1, %1, %1, %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @SUCCESS, align 4
  store i32 %36, i32* %2, align 4
  br label %295

37:                                               ; preds = %1, %30, %24, %21
  %38 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %39 = call i32 @mrsas_get_tunables(%struct.mrsas_softc* %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @PCIR_COMMAND, align 4
  %42 = call i32 @pci_read_config(i32 %40, i32 %41, i32 2)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %295

49:                                               ; preds = %37
  %50 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @PCIR_COMMAND, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @pci_write_config(i32 %53, i32 %54, i32 %55, i32 2)
  %57 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %58 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %49
  %62 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %63 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61, %49
  %67 = call i8* @PCIR_BAR(i32 0)
  %68 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %69 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  br label %74

70:                                               ; preds = %61
  %71 = call i8* @PCIR_BAR(i32 1)
  %72 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %73 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %72, i32 0, i32 6
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @SYS_RES_MEMORY, align 4
  %77 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %78 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %77, i32 0, i32 6
  %79 = load i32, i32* @RF_ACTIVE, align 4
  %80 = call i32* @bus_alloc_resource_any(i32 %75, i32 %76, i8** %78, i32 %79)
  %81 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %82 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %81, i32 0, i32 5
  store i32* %80, i32** %82, align 8
  %83 = icmp eq i32* %80, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i32, i32* %3, align 4
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %276

87:                                               ; preds = %74
  %88 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %89 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @rman_get_bustag(i32* %90)
  %92 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %93 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %92, i32 0, i32 31
  store i32 %91, i32* %93, align 4
  %94 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %95 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @rman_get_bushandle(i32* %96)
  %98 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %99 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %98, i32 0, i32 30
  store i32 %97, i32* %99, align 8
  %100 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %101 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %100, i32 0, i32 16
  %102 = load i32, i32* @MTX_DEF, align 4
  %103 = call i32 @mtx_init(i32* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %102)
  %104 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %105 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %104, i32 0, i32 14
  %106 = load i32, i32* @MTX_DEF, align 4
  %107 = call i32 @mtx_init(i32* %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %106)
  %108 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %109 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %108, i32 0, i32 13
  %110 = load i32, i32* @MTX_DEF, align 4
  %111 = call i32 @mtx_init(i32* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %110)
  %112 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %113 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %112, i32 0, i32 15
  %114 = load i32, i32* @MTX_DEF, align 4
  %115 = call i32 @mtx_init(i32* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 %114)
  %116 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %117 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %116, i32 0, i32 12
  %118 = load i32, i32* @MTX_SPIN, align 4
  %119 = call i32 @mtx_init(i32* %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %118)
  %120 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %121 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %120, i32 0, i32 11
  %122 = load i32, i32* @MTX_DEF, align 4
  %123 = call i32 @mtx_init(i32* %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32* null, i32 %122)
  %124 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %125 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %124, i32 0, i32 10
  %126 = load i32, i32* @MTX_DEF, align 4
  %127 = call i32 @mtx_init(i32* %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 %126)
  %128 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %129 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %128, i32 0, i32 9
  %130 = load i32, i32* @MTX_DEF, align 4
  %131 = call i32 @mtx_init(i32* %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 %130)
  %132 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %133 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %132, i32 0, i32 8
  %134 = load i32, i32* @MTX_DEF, align 4
  %135 = call i32 @mtx_init(i32* %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 %134)
  %136 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %137 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %136, i32 0, i32 29
  %138 = call i32 @TAILQ_INIT(i32* %137)
  %139 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %140 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %139, i32 0, i32 28
  %141 = call i32 @TAILQ_INIT(i32* %140)
  %142 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %143 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %142, i32 0, i32 27
  %144 = call i32 @mrsas_atomic_set(i32* %143, i32 0)
  %145 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %146 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %145, i32 0, i32 26
  %147 = call i32 @mrsas_atomic_set(i32* %146, i32 0)
  %148 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %149 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %148, i32 0, i32 25
  %150 = call i32 @mrsas_atomic_set(i32* %149, i32 0)
  %151 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %152 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %151, i32 0, i32 24
  %153 = call i32 @mrsas_atomic_set(i32* %152, i32 0)
  %154 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %155 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %154, i32 0, i32 23
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* @MRSAS_HBA_OPERATIONAL, align 4
  %157 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %158 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %157, i32 0, i32 22
  store i32 %156, i32* %158, align 8
  %159 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %160 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %159, i32 0, i32 21
  store i64 0, i64* %160, align 8
  %161 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %162 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %161, i32 0, i32 4
  store i32 0, i32* %162, align 8
  %163 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %164 = call i32 @mrsas_init_fw(%struct.mrsas_softc* %163)
  %165 = load i32, i32* @SUCCESS, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %87
  br label %236

168:                                              ; preds = %87
  %169 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %170 = call i32 @mrsas_cam_attach(%struct.mrsas_softc* %169)
  %171 = load i32, i32* @SUCCESS, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %233

174:                                              ; preds = %168
  %175 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %176 = call i32 @mrsas_setup_irq(%struct.mrsas_softc* %175)
  %177 = load i32, i32* @SUCCESS, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %230

180:                                              ; preds = %174
  %181 = load i32, i32* @mrsas_ocr_thread, align 4
  %182 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %183 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %184 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %183, i32 0, i32 20
  %185 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %186 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @device_get_unit(i32 %187)
  %189 = call i32 @mrsas_kproc_create(i32 %181, %struct.mrsas_softc* %182, i32* %184, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %188)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %180
  %193 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %194 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = call i32 (i32, i8*, ...) @device_printf(i32 %195, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %196)
  br label %220

198:                                              ; preds = %180
  %199 = load i32, i32* @mrsas_ich_startup, align 4
  %200 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %201 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %200, i32 0, i32 19
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 8
  %203 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %204 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %205 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %204, i32 0, i32 19
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  store %struct.mrsas_softc* %203, %struct.mrsas_softc** %206, align 8
  %207 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %208 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %207, i32 0, i32 19
  %209 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %198
  %212 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %213 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i32, i8*, ...) @device_printf(i32 %214, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %216

216:                                              ; preds = %211, %198
  %217 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %218 = call i32 @mrsas_setup_sysctl(%struct.mrsas_softc* %217)
  %219 = load i32, i32* @SUCCESS, align 4
  store i32 %219, i32* %2, align 4
  br label %295

220:                                              ; preds = %192
  %221 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %222 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %221, i32 0, i32 18
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %227 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %226, i32 0, i32 17
  %228 = call i32 @wakeup(i32* %227)
  br label %229

229:                                              ; preds = %225, %220
  br label %230

230:                                              ; preds = %229, %179
  %231 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %232 = call i32 @mrsas_teardown_intr(%struct.mrsas_softc* %231)
  br label %233

233:                                              ; preds = %230, %173
  %234 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %235 = call i32 @mrsas_cam_detach(%struct.mrsas_softc* %234)
  br label %236

236:                                              ; preds = %233, %167
  %237 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %238 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %243 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %242, i32 0, i32 7
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @pci_release_msi(i32 %244)
  br label %246

246:                                              ; preds = %241, %236
  %247 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %248 = call i32 @mrsas_free_mem(%struct.mrsas_softc* %247)
  %249 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %250 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %249, i32 0, i32 16
  %251 = call i32 @mtx_destroy(i32* %250)
  %252 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %253 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %252, i32 0, i32 15
  %254 = call i32 @mtx_destroy(i32* %253)
  %255 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %256 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %255, i32 0, i32 14
  %257 = call i32 @mtx_destroy(i32* %256)
  %258 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %259 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %258, i32 0, i32 13
  %260 = call i32 @mtx_destroy(i32* %259)
  %261 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %262 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %261, i32 0, i32 12
  %263 = call i32 @mtx_destroy(i32* %262)
  %264 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %265 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %264, i32 0, i32 11
  %266 = call i32 @mtx_destroy(i32* %265)
  %267 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %268 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %267, i32 0, i32 10
  %269 = call i32 @mtx_destroy(i32* %268)
  %270 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %271 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %270, i32 0, i32 9
  %272 = call i32 @mtx_destroy(i32* %271)
  %273 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %274 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %273, i32 0, i32 8
  %275 = call i32 @mtx_destroy(i32* %274)
  br label %276

276:                                              ; preds = %246, %84
  %277 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %278 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %277, i32 0, i32 5
  %279 = load i32*, i32** %278, align 8
  %280 = icmp ne i32* %279, null
  br i1 %280, label %281, label %293

281:                                              ; preds = %276
  %282 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %283 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %282, i32 0, i32 7
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @SYS_RES_MEMORY, align 4
  %286 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %287 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %286, i32 0, i32 6
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %290 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %289, i32 0, i32 5
  %291 = load i32*, i32** %290, align 8
  %292 = call i32 @bus_release_resource(i32 %284, i32 %285, i8* %288, i32* %291)
  br label %293

293:                                              ; preds = %281, %276
  %294 = load i32, i32* @ENXIO, align 4
  store i32 %294, i32* %2, align 4
  br label %295

295:                                              ; preds = %293, %216, %47, %33
  %296 = load i32, i32* %2, align 4
  ret i32 %296
}

declare dso_local %struct.mrsas_softc* @device_get_softc(i32) #1

declare dso_local i32 @memset(%struct.mrsas_softc*, i32, i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mrsas_get_tunables(%struct.mrsas_softc*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i8**, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mrsas_atomic_set(i32*, i32) #1

declare dso_local i32 @mrsas_init_fw(%struct.mrsas_softc*) #1

declare dso_local i32 @mrsas_cam_attach(%struct.mrsas_softc*) #1

declare dso_local i32 @mrsas_setup_irq(%struct.mrsas_softc*) #1

declare dso_local i32 @mrsas_kproc_create(i32, %struct.mrsas_softc*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

declare dso_local i32 @mrsas_setup_sysctl(%struct.mrsas_softc*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mrsas_teardown_intr(%struct.mrsas_softc*) #1

declare dso_local i32 @mrsas_cam_detach(%struct.mrsas_softc*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @mrsas_free_mem(%struct.mrsas_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
