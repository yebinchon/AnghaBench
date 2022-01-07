; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir_pci.c_iir_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir_pci.c_iir_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdt_softc = type { i32, i32, %struct.resource*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"iir\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@PCI_DPMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"can't allocate register resources\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"can't find IRQ value\0A\00", align 1
@GDT_MPR = common dso_local global i32 0, align 4
@GDT_MPR_IC = common dso_local global i64 0, align 8
@GDT_MPR_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"cannot access DPMEM at 0x%jx (shadowed?)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GDT_I960_SZ = common dso_local global i32 0, align 4
@GDT_MPR_SZ = common dso_local global i32 0, align 4
@GDT_EDOOR_EN = common dso_local global i64 0, align 8
@GDT_MPR_EDOOR = common dso_local global i64 0, align 8
@GDT_S_STATUS = common dso_local global i64 0, align 8
@GDT_CMD_INDEX = common dso_local global i64 0, align 8
@GDT_S_INFO = common dso_local global i64 0, align 8
@GDT_S_CMD_INDX = common dso_local global i64 0, align 8
@GDT_MPR_LDOOR = common dso_local global i64 0, align 8
@GDT_RETRIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"DEINIT failed\0A\00", align 1
@GDT_PROTOCOL_VERSION = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"unsupported protocol %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"initialization error\0A\00", align 1
@gdt_mpr_copy_cmd = common dso_local global i32 0, align 4
@gdt_mpr_get_status = common dso_local global i32 0, align 4
@gdt_mpr_intr = common dso_local global i32 0, align 4
@gdt_mpr_release_event = common dso_local global i32 0, align 4
@gdt_mpr_set_sema0 = common dso_local global i32 0, align 4
@gdt_mpr_test_busy = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@iir_intr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Unable to register interrupt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iir_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iir_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gdt_softc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.resource* null, %struct.resource** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.gdt_softc* @device_get_softc(i32 %11)
  store %struct.gdt_softc* %12, %struct.gdt_softc** %4, align 8
  %13 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %14 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %13, i32 0, i32 1
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 %15)
  %17 = load i32, i32* @PCI_DPMEM, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SYS_RES_MEMORY, align 4
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call i8* @bus_alloc_resource_any(i32 %18, i32 %19, i32* %7, i32 %20)
  %22 = bitcast i8* %21 to %struct.resource*
  %23 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %24 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %23, i32 0, i32 2
  store %struct.resource* %22, %struct.resource** %24, align 8
  %25 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %26 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %25, i32 0, i32 2
  %27 = load %struct.resource*, %struct.resource** %26, align 8
  %28 = icmp eq %struct.resource* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %8, align 4
  br label %356

33:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SYS_RES_IRQ, align 4
  %36 = load i32, i32* @RF_ACTIVE, align 4
  %37 = load i32, i32* @RF_SHAREABLE, align 4
  %38 = or i32 %36, %37
  %39 = call i8* @bus_alloc_resource_any(i32 %34, i32 %35, i32* %7, i32 %38)
  %40 = bitcast i8* %39 to %struct.resource*
  store %struct.resource* %40, %struct.resource** %5, align 8
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  %42 = icmp eq %struct.resource* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %8, align 4
  br label %356

47:                                               ; preds = %33
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %50 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %49, i32 0, i32 18
  store i32 %48, i32* %50, align 8
  %51 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %52 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @device_get_unit(i32 %53)
  %55 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %56 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %55, i32 0, i32 17
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @pci_get_bus(i32 %57)
  %59 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %60 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %59, i32 0, i32 16
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @pci_get_slot(i32 %61)
  %63 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %64 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %63, i32 0, i32 15
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @pci_get_vendor(i32 %65)
  %67 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %68 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %67, i32 0, i32 14
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @pci_get_device(i32 %69)
  %71 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %72 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %71, i32 0, i32 13
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @pci_get_subdevice(i32 %73)
  %75 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %76 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @GDT_MPR, align 4
  %78 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %79 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %78, i32 0, i32 11
  store i32 %77, i32* %79, align 4
  %80 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %81 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %80, i32 0, i32 2
  %82 = load %struct.resource*, %struct.resource** %81, align 8
  %83 = load i64, i64* @GDT_MPR_IC, align 8
  %84 = load i32, i32* @GDT_MPR_MAGIC, align 4
  %85 = call i32 @htole32(i32 %84)
  %86 = call i32 @bus_write_4(%struct.resource* %82, i64 %83, i32 %85)
  %87 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %88 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %87, i32 0, i32 2
  %89 = load %struct.resource*, %struct.resource** %88, align 8
  %90 = load i64, i64* @GDT_MPR_IC, align 8
  %91 = call i32 @bus_read_4(%struct.resource* %89, i64 %90)
  %92 = load i32, i32* @GDT_MPR_MAGIC, align 4
  %93 = call i32 @htole32(i32 %92)
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %47
  %96 = load i32, i32* %3, align 4
  %97 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %98 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %97, i32 0, i32 2
  %99 = load %struct.resource*, %struct.resource** %98, align 8
  %100 = call i32 @rman_get_start(%struct.resource* %99)
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %8, align 4
  br label %356

103:                                              ; preds = %47
  %104 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %105 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %104, i32 0, i32 2
  %106 = load %struct.resource*, %struct.resource** %105, align 8
  %107 = load i32, i32* @GDT_I960_SZ, align 4
  %108 = call i32 @htole32(i32 0)
  %109 = load i32, i32* @GDT_MPR_SZ, align 4
  %110 = ashr i32 %109, 2
  %111 = call i32 @bus_set_region_4(%struct.resource* %106, i32 %107, i32 %108, i32 %110)
  %112 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %113 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %112, i32 0, i32 2
  %114 = load %struct.resource*, %struct.resource** %113, align 8
  %115 = load i64, i64* @GDT_EDOOR_EN, align 8
  %116 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %117 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %116, i32 0, i32 2
  %118 = load %struct.resource*, %struct.resource** %117, align 8
  %119 = load i64, i64* @GDT_EDOOR_EN, align 8
  %120 = call i32 @bus_read_1(%struct.resource* %118, i64 %119)
  %121 = or i32 %120, 4
  %122 = call i32 @bus_write_1(%struct.resource* %114, i64 %115, i32 %121)
  %123 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %124 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %123, i32 0, i32 2
  %125 = load %struct.resource*, %struct.resource** %124, align 8
  %126 = load i64, i64* @GDT_MPR_EDOOR, align 8
  %127 = call i32 @bus_write_1(%struct.resource* %125, i64 %126, i32 255)
  %128 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %129 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %128, i32 0, i32 2
  %130 = load %struct.resource*, %struct.resource** %129, align 8
  %131 = load i64, i64* @GDT_MPR_IC, align 8
  %132 = load i64, i64* @GDT_S_STATUS, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @bus_write_1(%struct.resource* %130, i64 %133, i32 0)
  %135 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %136 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %135, i32 0, i32 2
  %137 = load %struct.resource*, %struct.resource** %136, align 8
  %138 = load i64, i64* @GDT_MPR_IC, align 8
  %139 = load i64, i64* @GDT_CMD_INDEX, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @bus_write_1(%struct.resource* %137, i64 %140, i32 0)
  %142 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %143 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %142, i32 0, i32 2
  %144 = load %struct.resource*, %struct.resource** %143, align 8
  %145 = load i64, i64* @GDT_MPR_IC, align 8
  %146 = load i64, i64* @GDT_S_INFO, align 8
  %147 = add nsw i64 %145, %146
  %148 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %149 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %148, i32 0, i32 2
  %150 = load %struct.resource*, %struct.resource** %149, align 8
  %151 = call i32 @rman_get_start(%struct.resource* %150)
  %152 = call i32 @htole32(i32 %151)
  %153 = call i32 @bus_write_4(%struct.resource* %144, i64 %147, i32 %152)
  %154 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %155 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %154, i32 0, i32 2
  %156 = load %struct.resource*, %struct.resource** %155, align 8
  %157 = load i64, i64* @GDT_MPR_IC, align 8
  %158 = load i64, i64* @GDT_S_CMD_INDX, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @bus_write_1(%struct.resource* %156, i64 %159, i32 255)
  %161 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %162 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %161, i32 0, i32 2
  %163 = load %struct.resource*, %struct.resource** %162, align 8
  %164 = load i64, i64* @GDT_MPR_LDOOR, align 8
  %165 = call i32 @bus_write_1(%struct.resource* %163, i64 %164, i32 1)
  %166 = call i32 @DELAY(i32 20)
  %167 = load i32, i32* @GDT_RETRIES, align 4
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %185, %103
  %169 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %170 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %169, i32 0, i32 2
  %171 = load %struct.resource*, %struct.resource** %170, align 8
  %172 = load i64, i64* @GDT_MPR_IC, align 8
  %173 = load i64, i64* @GDT_S_STATUS, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @bus_read_1(%struct.resource* %171, i64 %174)
  %176 = icmp ne i32 %175, 255
  br i1 %176, label %177, label %187

177:                                              ; preds = %168
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %6, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load i32, i32* %3, align 4
  %183 = call i32 (i32, i8*, ...) @device_printf(i32 %182, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %184 = load i32, i32* @ENXIO, align 4
  store i32 %184, i32* %8, align 4
  br label %356

185:                                              ; preds = %177
  %186 = call i32 @DELAY(i32 1)
  br label %168

187:                                              ; preds = %168
  %188 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %189 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %188, i32 0, i32 2
  %190 = load %struct.resource*, %struct.resource** %189, align 8
  %191 = load i64, i64* @GDT_MPR_IC, align 8
  %192 = load i64, i64* @GDT_S_INFO, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @bus_read_4(%struct.resource* %190, i64 %193)
  %195 = call i64 @le32toh(i32 %194)
  store i64 %195, i64* %10, align 8
  %196 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %197 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %196, i32 0, i32 2
  %198 = load %struct.resource*, %struct.resource** %197, align 8
  %199 = load i64, i64* @GDT_MPR_IC, align 8
  %200 = load i64, i64* @GDT_S_STATUS, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @bus_write_1(%struct.resource* %198, i64 %201, i32 0)
  %203 = load i64, i64* %10, align 8
  %204 = load i64, i64* @GDT_PROTOCOL_VERSION, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %187
  %207 = load i32, i32* %3, align 4
  %208 = load i64, i64* %10, align 8
  %209 = call i32 (i32, i8*, ...) @device_printf(i32 %207, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %208)
  %210 = load i32, i32* @ENXIO, align 4
  store i32 %210, i32* %8, align 4
  br label %356

211:                                              ; preds = %187
  %212 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %213 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %212, i32 0, i32 2
  %214 = load %struct.resource*, %struct.resource** %213, align 8
  %215 = load i64, i64* @GDT_MPR_IC, align 8
  %216 = load i64, i64* @GDT_S_INFO, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @htole32(i32 0)
  %219 = call i32 @bus_write_4(%struct.resource* %214, i64 %217, i32 %218)
  %220 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %221 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %220, i32 0, i32 2
  %222 = load %struct.resource*, %struct.resource** %221, align 8
  %223 = load i64, i64* @GDT_MPR_IC, align 8
  %224 = load i64, i64* @GDT_S_INFO, align 8
  %225 = add nsw i64 %223, %224
  %226 = add i64 %225, 4
  %227 = call i32 @htole32(i32 0)
  %228 = call i32 @bus_write_4(%struct.resource* %222, i64 %226, i32 %227)
  %229 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %230 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %229, i32 0, i32 2
  %231 = load %struct.resource*, %struct.resource** %230, align 8
  %232 = load i64, i64* @GDT_MPR_IC, align 8
  %233 = load i64, i64* @GDT_S_INFO, align 8
  %234 = add nsw i64 %232, %233
  %235 = add i64 %234, 8
  %236 = call i32 @htole32(i32 1)
  %237 = call i32 @bus_write_4(%struct.resource* %231, i64 %235, i32 %236)
  %238 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %239 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %238, i32 0, i32 2
  %240 = load %struct.resource*, %struct.resource** %239, align 8
  %241 = load i64, i64* @GDT_MPR_IC, align 8
  %242 = load i64, i64* @GDT_S_INFO, align 8
  %243 = add nsw i64 %241, %242
  %244 = add i64 %243, 12
  %245 = call i32 @htole32(i32 0)
  %246 = call i32 @bus_write_4(%struct.resource* %240, i64 %244, i32 %245)
  %247 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %248 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %247, i32 0, i32 2
  %249 = load %struct.resource*, %struct.resource** %248, align 8
  %250 = load i64, i64* @GDT_MPR_IC, align 8
  %251 = load i64, i64* @GDT_S_CMD_INDX, align 8
  %252 = add nsw i64 %250, %251
  %253 = call i32 @bus_write_1(%struct.resource* %249, i64 %252, i32 254)
  %254 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %255 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %254, i32 0, i32 2
  %256 = load %struct.resource*, %struct.resource** %255, align 8
  %257 = load i64, i64* @GDT_MPR_LDOOR, align 8
  %258 = call i32 @bus_write_1(%struct.resource* %256, i64 %257, i32 1)
  %259 = call i32 @DELAY(i32 20)
  %260 = load i32, i32* @GDT_RETRIES, align 4
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %278, %211
  %262 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %263 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %262, i32 0, i32 2
  %264 = load %struct.resource*, %struct.resource** %263, align 8
  %265 = load i64, i64* @GDT_MPR_IC, align 8
  %266 = load i64, i64* @GDT_S_STATUS, align 8
  %267 = add nsw i64 %265, %266
  %268 = call i32 @bus_read_1(%struct.resource* %264, i64 %267)
  %269 = icmp ne i32 %268, 254
  br i1 %269, label %270, label %280

270:                                              ; preds = %261
  %271 = load i32, i32* %6, align 4
  %272 = add nsw i32 %271, -1
  store i32 %272, i32* %6, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %270
  %275 = load i32, i32* %3, align 4
  %276 = call i32 (i32, i8*, ...) @device_printf(i32 %275, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %277 = load i32, i32* @ENXIO, align 4
  store i32 %277, i32* %8, align 4
  br label %356

278:                                              ; preds = %270
  %279 = call i32 @DELAY(i32 1)
  br label %261

280:                                              ; preds = %261
  %281 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %282 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %281, i32 0, i32 2
  %283 = load %struct.resource*, %struct.resource** %282, align 8
  %284 = load i64, i64* @GDT_MPR_IC, align 8
  %285 = load i64, i64* @GDT_S_STATUS, align 8
  %286 = add nsw i64 %284, %285
  %287 = call i32 @bus_write_1(%struct.resource* %283, i64 %286, i32 0)
  %288 = load i32, i32* @GDT_MPR_SZ, align 4
  %289 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %290 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 8
  %291 = load i32, i32* @gdt_mpr_copy_cmd, align 4
  %292 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %293 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %292, i32 0, i32 10
  store i32 %291, i32* %293, align 8
  %294 = load i32, i32* @gdt_mpr_get_status, align 4
  %295 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %296 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %295, i32 0, i32 9
  store i32 %294, i32* %296, align 4
  %297 = load i32, i32* @gdt_mpr_intr, align 4
  %298 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %299 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %298, i32 0, i32 8
  store i32 %297, i32* %299, align 8
  %300 = load i32, i32* @gdt_mpr_release_event, align 4
  %301 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %302 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %301, i32 0, i32 7
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* @gdt_mpr_set_sema0, align 4
  %304 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %305 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %304, i32 0, i32 6
  store i32 %303, i32* %305, align 8
  %306 = load i32, i32* @gdt_mpr_test_busy, align 4
  %307 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %308 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %307, i32 0, i32 5
  store i32 %306, i32* %308, align 4
  %309 = load i32, i32* %3, align 4
  %310 = call i32 @bus_get_dma_tag(i32 %309)
  %311 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %312 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %313 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %314 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %315 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %316 = load i32, i32* @busdma_lock_mutex, align 4
  %317 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %318 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %317, i32 0, i32 1
  %319 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %320 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %319, i32 0, i32 4
  %321 = call i64 @bus_dma_tag_create(i32 %310, i32 1, i32 0, i32 %311, i32 %312, i32* null, i32* null, i32 %313, i32 %314, i32 %315, i32 0, i32 %316, i32* %318, i32* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %280
  %324 = load i32, i32* @ENXIO, align 4
  store i32 %324, i32* %8, align 4
  br label %356

325:                                              ; preds = %280
  %326 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %327 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = add nsw i64 %328, 1
  store i64 %329, i64* %327, align 8
  %330 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %331 = call i64 @iir_init(%struct.gdt_softc* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %325
  %334 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %335 = call i32 @iir_free(%struct.gdt_softc* %334)
  %336 = load i32, i32* @ENXIO, align 4
  store i32 %336, i32* %8, align 4
  br label %356

337:                                              ; preds = %325
  %338 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %339 = call i32 @iir_attach(%struct.gdt_softc* %338)
  %340 = load i32, i32* %3, align 4
  %341 = load %struct.resource*, %struct.resource** %5, align 8
  %342 = load i32, i32* @INTR_TYPE_CAM, align 4
  %343 = load i32, i32* @INTR_MPSAFE, align 4
  %344 = or i32 %342, %343
  %345 = load i32, i32* @iir_intr, align 4
  %346 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %347 = call i64 @bus_setup_intr(i32 %340, %struct.resource* %341, i32 %344, i32* null, i32 %345, %struct.gdt_softc* %346, i8** %9)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %337
  %350 = load i32, i32* %3, align 4
  %351 = call i32 (i32, i8*, ...) @device_printf(i32 %350, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %352 = load i32, i32* @ENXIO, align 4
  store i32 %352, i32* %8, align 4
  br label %356

353:                                              ; preds = %337
  %354 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %355 = call i32 @gdt_pci_enable_intr(%struct.gdt_softc* %354)
  store i32 0, i32* %2, align 4
  br label %382

356:                                              ; preds = %349, %333, %323, %274, %206, %181, %95, %43, %29
  %357 = load %struct.resource*, %struct.resource** %5, align 8
  %358 = icmp ne %struct.resource* %357, null
  br i1 %358, label %359, label %364

359:                                              ; preds = %356
  %360 = load i32, i32* %3, align 4
  %361 = load i32, i32* @SYS_RES_IRQ, align 4
  %362 = load %struct.resource*, %struct.resource** %5, align 8
  %363 = call i32 @bus_release_resource(i32 %360, i32 %361, i32 0, %struct.resource* %362)
  br label %364

364:                                              ; preds = %359, %356
  %365 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %366 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %365, i32 0, i32 2
  %367 = load %struct.resource*, %struct.resource** %366, align 8
  %368 = icmp ne %struct.resource* %367, null
  br i1 %368, label %369, label %377

369:                                              ; preds = %364
  %370 = load i32, i32* %3, align 4
  %371 = load i32, i32* @SYS_RES_MEMORY, align 4
  %372 = load i32, i32* %7, align 4
  %373 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %374 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %373, i32 0, i32 2
  %375 = load %struct.resource*, %struct.resource** %374, align 8
  %376 = call i32 @bus_release_resource(i32 %370, i32 %371, i32 %372, %struct.resource* %375)
  br label %377

377:                                              ; preds = %369, %364
  %378 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %379 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %378, i32 0, i32 1
  %380 = call i32 @mtx_destroy(i32* %379)
  %381 = load i32, i32* %8, align 4
  store i32 %381, i32* %2, align 4
  br label %382

382:                                              ; preds = %377, %353
  %383 = load i32, i32* %2, align 4
  ret i32 %383
}

declare dso_local %struct.gdt_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @bus_write_4(%struct.resource*, i64, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i64) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @bus_set_region_4(%struct.resource*, i32, i32, i32) #1

declare dso_local i32 @bus_write_1(%struct.resource*, i64, i32) #1

declare dso_local i32 @bus_read_1(%struct.resource*, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @le32toh(i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @iir_init(%struct.gdt_softc*) #1

declare dso_local i32 @iir_free(%struct.gdt_softc*) #1

declare dso_local i32 @iir_attach(%struct.gdt_softc*) #1

declare dso_local i64 @bus_setup_intr(i32, %struct.resource*, i32, i32*, i32, %struct.gdt_softc*, i8**) #1

declare dso_local i32 @gdt_pci_enable_intr(%struct.gdt_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
