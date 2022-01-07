; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3disk.c_ps3disk_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3disk.c_ps3disk_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3disk_softc = type { i32, i32, i32, %struct.ps3disk_region*, i32, i64, i32, i32, i32, i32, %struct.disk**, i32, i32, i32, i32 }
%struct.ps3disk_region = type { i32, i32 }
%struct.disk = type { i8*, i32, i32, i32, i32, i32, %struct.ps3disk_softc*, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Could not get disk geometry\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"block size %lu total blocks %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not enumerate disk regions\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Found %lu regions\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Could not allocate IRQ\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@ps3disk_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Could not setup IRQ\0A\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Could not create DMA tag\0A\00", align 1
@M_PS3DISK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Could not allocate disk(s)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ps3disk_open = common dso_local global i32 0, align 4
@ps3disk_close = common dso_local global i32 0, align 4
@ps3disk_strategy = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"ps3disk\00", align 1
@DISKFLAG_CANFLUSHCACHE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"region %d %ju%cB%s\0A\00", align 1
@LV1_DENIED_BY_POLICY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c" (hypervisor protected)\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DISK_VERSION = common dso_local global i32 0, align 4
@ps3disk_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ps3disk_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3disk_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ps3disk_softc*, align 8
  %5 = alloca %struct.disk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ps3disk_region*, align 8
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.ps3disk_softc* @device_get_softc(i32 %12)
  store %struct.ps3disk_softc* %13, %struct.ps3disk_softc** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %15, i32 0, i32 14
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %18 = call i32 @PS3DISK_LOCK_INIT(%struct.ps3disk_softc* %17)
  %19 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %20 = call i32 @ps3disk_get_disk_geometry(%struct.ps3disk_softc* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %10, align 4
  br label %283

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %37 = call i32 @ps3disk_enum_regions(%struct.ps3disk_softc* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i32, i32* %3, align 4
  %42 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %10, align 4
  br label %283

44:                                               ; preds = %27
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %47 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %51 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %10, align 4
  br label %283

56:                                               ; preds = %44
  %57 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %58 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @SYS_RES_IRQ, align 4
  %61 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %62 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %61, i32 0, i32 5
  %63 = load i32, i32* @RF_ACTIVE, align 4
  %64 = call i32 @bus_alloc_resource_any(i32 %59, i32 %60, i64* %62, i32 %63)
  %65 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %66 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %68 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %3, align 4
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %10, align 4
  br label %277

75:                                               ; preds = %56
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %78 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @INTR_TYPE_BIO, align 4
  %81 = load i32, i32* @INTR_MPSAFE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @INTR_ENTROPY, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @ps3disk_intr, align 4
  %86 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %87 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %88 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %87, i32 0, i32 6
  %89 = call i32 @bus_setup_intr(i32 %76, i32 %79, i32 %84, i32* null, i32 %85, %struct.ps3disk_softc* %86, i32* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %75
  %93 = load i32, i32* %3, align 4
  %94 = call i32 (i32, i8*, ...) @device_printf(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %10, align 4
  br label %267

96:                                               ; preds = %75
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @bus_get_dma_tag(i32 %97)
  %99 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %100 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %101 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = load i32, i32* @busdma_lock_mutex, align 4
  %104 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %105 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %104, i32 0, i32 12
  %106 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %107 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %106, i32 0, i32 11
  %108 = call i32 @bus_dma_tag_create(i32 %98, i32 4096, i32 0, i32 %99, i32 %100, i32* null, i32* null, i32 %101, i32 1, i32 %102, i32 0, i32 %103, i32* %105, i32* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %96
  %112 = load i32, i32* %3, align 4
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %10, align 4
  br label %258

115:                                              ; preds = %96
  %116 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %117 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 8
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* @M_PS3DISK, align 4
  %123 = load i32, i32* @M_ZERO, align 4
  %124 = load i32, i32* @M_WAITOK, align 4
  %125 = or i32 %123, %124
  %126 = call %struct.disk** @malloc(i32 %121, i32 %122, i32 %125)
  %127 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %128 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %127, i32 0, i32 10
  store %struct.disk** %126, %struct.disk*** %128, align 8
  %129 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %130 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %129, i32 0, i32 10
  %131 = load %struct.disk**, %struct.disk*** %130, align 8
  %132 = icmp ne %struct.disk** %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %115
  %134 = load i32, i32* %3, align 4
  %135 = call i32 (i32, i8*, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %136 = load i32, i32* @ENOMEM, align 4
  store i32 %136, i32* %10, align 4
  br label %258

137:                                              ; preds = %115
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %240, %137
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %141 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %243

144:                                              ; preds = %138
  %145 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %146 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %145, i32 0, i32 3
  %147 = load %struct.ps3disk_region*, %struct.ps3disk_region** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ps3disk_region, %struct.ps3disk_region* %147, i64 %149
  store %struct.ps3disk_region* %150, %struct.ps3disk_region** %11, align 8
  %151 = call %struct.disk* (...) @disk_alloc()
  %152 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %153 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %152, i32 0, i32 10
  %154 = load %struct.disk**, %struct.disk*** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.disk*, %struct.disk** %154, i64 %156
  store %struct.disk* %151, %struct.disk** %157, align 8
  store %struct.disk* %151, %struct.disk** %5, align 8
  %158 = load i32, i32* @ps3disk_open, align 4
  %159 = load %struct.disk*, %struct.disk** %5, align 8
  %160 = getelementptr inbounds %struct.disk, %struct.disk* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* @ps3disk_close, align 4
  %162 = load %struct.disk*, %struct.disk** %5, align 8
  %163 = getelementptr inbounds %struct.disk, %struct.disk* %162, i32 0, i32 8
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @ps3disk_strategy, align 4
  %165 = load %struct.disk*, %struct.disk** %5, align 8
  %166 = getelementptr inbounds %struct.disk, %struct.disk* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 8
  %167 = load %struct.disk*, %struct.disk** %5, align 8
  %168 = getelementptr inbounds %struct.disk, %struct.disk* %167, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %168, align 8
  %169 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %170 = load %struct.disk*, %struct.disk** %5, align 8
  %171 = getelementptr inbounds %struct.disk, %struct.disk* %170, i32 0, i32 6
  store %struct.ps3disk_softc* %169, %struct.ps3disk_softc** %171, align 8
  %172 = load i32, i32* @PAGE_SIZE, align 4
  %173 = load %struct.disk*, %struct.disk** %5, align 8
  %174 = getelementptr inbounds %struct.disk, %struct.disk* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 8
  %175 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %176 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.disk*, %struct.disk** %5, align 8
  %179 = getelementptr inbounds %struct.disk, %struct.disk* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load %struct.disk*, %struct.disk** %5, align 8
  %182 = getelementptr inbounds %struct.disk, %struct.disk* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 4
  %183 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %184 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %183, i32 0, i32 3
  %185 = load %struct.ps3disk_region*, %struct.ps3disk_region** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.ps3disk_region, %struct.ps3disk_region* %185, i64 %187
  %189 = getelementptr inbounds %struct.ps3disk_region, %struct.ps3disk_region* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %192 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = mul nsw i32 %190, %193
  %195 = load %struct.disk*, %struct.disk** %5, align 8
  %196 = getelementptr inbounds %struct.disk, %struct.disk* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* @DISKFLAG_CANFLUSHCACHE, align 4
  %198 = load %struct.disk*, %struct.disk** %5, align 8
  %199 = getelementptr inbounds %struct.disk, %struct.disk* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.disk*, %struct.disk** %5, align 8
  %203 = getelementptr inbounds %struct.disk, %struct.disk* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = ashr i32 %204, 20
  store i32 %205, i32* %6, align 4
  store i8 77, i8* %8, align 1
  %206 = load i32, i32* %6, align 4
  %207 = icmp sge i32 %206, 10240
  br i1 %207, label %208, label %211

208:                                              ; preds = %144
  store i8 71, i8* %8, align 1
  %209 = load i32, i32* %6, align 4
  %210 = sdiv i32 %209, 1024
  store i32 %210, i32* %6, align 4
  br label %211

211:                                              ; preds = %208, %144
  %212 = load i32, i32* %3, align 4
  %213 = call i32 @ps3bus_get_device(i32 %212)
  %214 = load %struct.disk*, %struct.disk** %5, align 8
  %215 = getelementptr inbounds %struct.disk, %struct.disk* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.ps3disk_region*, %struct.ps3disk_region** %11, align 8
  %218 = getelementptr inbounds %struct.ps3disk_region, %struct.ps3disk_region* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @lv1_storage_read(i32 %213, i32 %216, i32 0, i32 0, i32 %219, i32 0, i32* %7)
  store i32 %220, i32* %10, align 4
  %221 = load i32, i32* %3, align 4
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %6, align 4
  %224 = load i8, i8* %8, align 1
  %225 = sext i8 %224 to i32
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @LV1_DENIED_BY_POLICY, align 4
  %228 = icmp eq i32 %226, %227
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %231 = call i32 (i32, i8*, ...) @device_printf(i32 %221, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %222, i32 %223, i32 %225, i8* %230)
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* @LV1_DENIED_BY_POLICY, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %211
  %236 = load %struct.disk*, %struct.disk** %5, align 8
  %237 = load i32, i32* @DISK_VERSION, align 4
  %238 = call i32 @disk_create(%struct.disk* %236, i32 %237)
  br label %239

239:                                              ; preds = %235, %211
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %9, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %9, align 4
  br label %138

243:                                              ; preds = %138
  store i32 0, i32* %10, align 4
  %244 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %245 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %244, i32 0, i32 9
  %246 = call i32 @bioq_init(i32* %245)
  %247 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %248 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %247, i32 0, i32 8
  %249 = call i32 @bioq_init(i32* %248)
  %250 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %251 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %252 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %251, i32 0, i32 7
  %253 = call i32 @kproc_create(i32* @ps3disk_task, %struct.ps3disk_softc* %250, i32* %252, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %254 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %255 = call i32 @ps3disk_sysctlattach(%struct.ps3disk_softc* %254)
  %256 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %257 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %256, i32 0, i32 2
  store i32 1, i32* %257, align 8
  store i32 0, i32* %2, align 4
  br label %287

258:                                              ; preds = %133, %111
  %259 = load i32, i32* %3, align 4
  %260 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %261 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %264 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @bus_teardown_intr(i32 %259, i32 %262, i32 %265)
  br label %267

267:                                              ; preds = %258, %92
  %268 = load i32, i32* %3, align 4
  %269 = load i32, i32* @SYS_RES_IRQ, align 4
  %270 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %271 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %270, i32 0, i32 5
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %274 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @bus_release_resource(i32 %268, i32 %269, i64 %272, i32 %275)
  br label %277

277:                                              ; preds = %267, %71
  %278 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %279 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %278, i32 0, i32 3
  %280 = load %struct.ps3disk_region*, %struct.ps3disk_region** %279, align 8
  %281 = load i32, i32* @M_PS3DISK, align 4
  %282 = call i32 @free(%struct.ps3disk_region* %280, i32 %281)
  br label %283

283:                                              ; preds = %277, %54, %40, %23
  %284 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %4, align 8
  %285 = call i32 @PS3DISK_LOCK_DESTROY(%struct.ps3disk_softc* %284)
  %286 = load i32, i32* %10, align 4
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %283, %243
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local %struct.ps3disk_softc* @device_get_softc(i32) #1

declare dso_local i32 @PS3DISK_LOCK_INIT(%struct.ps3disk_softc*) #1

declare dso_local i32 @ps3disk_get_disk_geometry(%struct.ps3disk_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ps3disk_enum_regions(%struct.ps3disk_softc*) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.ps3disk_softc*, i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local %struct.disk** @malloc(i32, i32, i32) #1

declare dso_local %struct.disk* @disk_alloc(...) #1

declare dso_local i32 @lv1_storage_read(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ps3bus_get_device(i32) #1

declare dso_local i32 @disk_create(%struct.disk*, i32) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @kproc_create(i32*, %struct.ps3disk_softc*, i32*, i32, i32, i8*) #1

declare dso_local i32 @ps3disk_sysctlattach(%struct.ps3disk_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32) #1

declare dso_local i32 @free(%struct.ps3disk_region*, i32) #1

declare dso_local i32 @PS3DISK_LOCK_DESTROY(%struct.ps3disk_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
