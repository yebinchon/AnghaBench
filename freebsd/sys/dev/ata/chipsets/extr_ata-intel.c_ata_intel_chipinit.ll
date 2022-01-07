; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i8*, i32, %struct.TYPE_2__*, i32*, i8*, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }
%struct.ata_intel_data = type { i32 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@M_ATAPCI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Intel SATA lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ATA_I82371FB = common dso_local global i64 0, align 8
@ata_intel_old_setmode = common dso_local global i8* null, align 8
@ATA_I31244 = common dso_local global i64 0, align 8
@PCIS_STORAGE_IDE = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i8* null, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@ata_intel_31244_ch_attach = common dso_local global i8* null, align 8
@ata_intel_31244_ch_detach = common dso_local global i8* null, align 8
@ata_intel_31244_reset = common dso_local global i32 0, align 4
@ata_sata_setmode = common dso_local global i8* null, align 8
@ata_sata_getrev = common dso_local global i32 0, align 4
@ATA_ISCH = common dso_local global i64 0, align 8
@ata_intel_ch_attach = common dso_local global i8* null, align 8
@ata_pci_ch_detach = common dso_local global i8* null, align 8
@ata_intel_sch_setmode = common dso_local global i8* null, align 8
@ATA_SA150 = common dso_local global i64 0, align 8
@ata_intel_new_setmode = common dso_local global i8* null, align 8
@ata_intel_reset = common dso_local global i32 0, align 4
@INTEL_ICH7 = common dso_local global i32 0, align 4
@ATA_I82801HBM_S1 = common dso_local global i64 0, align 8
@SYS_RES_IOPORT = common dso_local global i8* null, align 8
@INTEL_ICH5 = common dso_local global i32 0, align 4
@ata_intel_sata_getrev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_intel_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_intel_chipinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ata_intel_data*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ata_pci_controller* @device_get_softc(i32 %6)
  store %struct.ata_pci_controller* %7, %struct.ata_pci_controller** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ata_generic_intr, align 4
  %10 = call i64 @ata_setup_interrupt(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %255

14:                                               ; preds = %1
  %15 = load i32, i32* @M_ATAPCI, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.ata_intel_data* @malloc(i32 4, i32 %15, i32 %18)
  store %struct.ata_intel_data* %19, %struct.ata_intel_data** %5, align 8
  %20 = load %struct.ata_intel_data*, %struct.ata_intel_data** %5, align 8
  %21 = getelementptr inbounds %struct.ata_intel_data, %struct.ata_intel_data* %20, i32 0, i32 0
  %22 = load i32, i32* @MTX_DEF, align 4
  %23 = call i32 @mtx_init(i32* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %22)
  %24 = load %struct.ata_intel_data*, %struct.ata_intel_data** %5, align 8
  %25 = bitcast %struct.ata_intel_data* %24 to i8*
  %26 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %27 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %26, i32 0, i32 10
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %29 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ATA_I82371FB, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %14
  %36 = load i8*, i8** @ata_intel_old_setmode, align 8
  %37 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %38 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %254

39:                                               ; preds = %14
  %40 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %41 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ATA_I31244, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %92

47:                                               ; preds = %39
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @pci_get_subclass(i32 %48)
  %50 = load i64, i64* @PCIS_STORAGE_IDE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %47
  %53 = load i8*, i8** @SYS_RES_MEMORY, align 8
  %54 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %55 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = call i8* @PCIR_BAR(i32 0)
  %57 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %58 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %61 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %60, i32 0, i32 6
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %64 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %63, i32 0, i32 5
  %65 = load i32, i32* @RF_ACTIVE, align 4
  %66 = call i8* @bus_alloc_resource_any(i32 %59, i8* %62, i8** %64, i32 %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %69 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %68, i32 0, i32 4
  store i32* %67, i32** %69, align 8
  %70 = icmp ne i32* %67, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %52
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %2, align 4
  br label %255

73:                                               ; preds = %52
  %74 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %75 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %74, i32 0, i32 0
  store i32 4, i32* %75, align 8
  %76 = load i8*, i8** @ata_intel_31244_ch_attach, align 8
  %77 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %78 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %77, i32 0, i32 9
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @ata_intel_31244_ch_detach, align 8
  %80 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %81 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %80, i32 0, i32 8
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @ata_intel_31244_reset, align 4
  %83 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %84 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %73, %47
  %86 = load i8*, i8** @ata_sata_setmode, align 8
  %87 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %88 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @ata_sata_getrev, align 4
  %90 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %91 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  br label %253

92:                                               ; preds = %39
  %93 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %94 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %93, i32 0, i32 3
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ATA_ISCH, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %92
  %101 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %102 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load i8*, i8** @ata_intel_ch_attach, align 8
  %104 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %105 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** @ata_pci_ch_detach, align 8
  %107 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %108 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %107, i32 0, i32 8
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** @ata_intel_sch_setmode, align 8
  %110 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %111 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %252

112:                                              ; preds = %92
  %113 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %114 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %113, i32 0, i32 3
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ATA_SA150, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %112
  %121 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %122 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %127 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i8*, i8** @ata_intel_ch_attach, align 8
  %129 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %130 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %129, i32 0, i32 9
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** @ata_pci_ch_detach, align 8
  %132 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %133 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %132, i32 0, i32 8
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** @ata_intel_new_setmode, align 8
  %135 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %136 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  br label %251

137:                                              ; preds = %112
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @pci_read_config(i32 %139, i32 146, i32 2)
  %141 = or i32 %140, 15
  %142 = call i32 @pci_write_config(i32 %138, i32 146, i32 %141, i32 2)
  %143 = load i8*, i8** @ata_intel_ch_attach, align 8
  %144 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %145 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %144, i32 0, i32 9
  store i8* %143, i8** %145, align 8
  %146 = load i8*, i8** @ata_pci_ch_detach, align 8
  %147 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %148 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %147, i32 0, i32 8
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* @ata_intel_reset, align 4
  %150 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %151 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %150, i32 0, i32 7
  store i32 %149, i32* %151, align 8
  %152 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %153 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %152, i32 0, i32 3
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @INTEL_ICH7, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %198

160:                                              ; preds = %137
  %161 = load i8*, i8** @SYS_RES_MEMORY, align 8
  %162 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %163 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %162, i32 0, i32 6
  store i8* %161, i8** %163, align 8
  %164 = call i8* @PCIR_BAR(i32 5)
  %165 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %166 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %165, i32 0, i32 5
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* %3, align 4
  %168 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %169 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %168, i32 0, i32 6
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %172 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %171, i32 0, i32 5
  %173 = load i32, i32* @RF_ACTIVE, align 4
  %174 = call i8* @bus_alloc_resource_any(i32 %167, i8* %170, i8** %172, i32 %173)
  %175 = bitcast i8* %174 to i32*
  %176 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %177 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %176, i32 0, i32 4
  store i32* %175, i32** %177, align 8
  %178 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %179 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %197

182:                                              ; preds = %160
  %183 = load i32, i32* %3, align 4
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @pci_read_config(i32 %184, i32 148, i32 4)
  %186 = or i32 %185, 512
  %187 = call i32 @pci_write_config(i32 %183, i32 148, i32 %186, i32 4)
  %188 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %189 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %192 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %191, i32 0, i32 4
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @ATA_INL(i32* %193, i32 12)
  %195 = or i32 %194, 15
  %196 = call i32 @ATA_OUTL(i32* %190, i32 12, i32 %195)
  br label %197

197:                                              ; preds = %182, %160
  br label %229

198:                                              ; preds = %137
  %199 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %200 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %199, i32 0, i32 3
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @ATA_I82801HBM_S1, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %210, label %206

206:                                              ; preds = %198
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @pci_get_subvendor(i32 %207)
  %209 = icmp ne i32 %208, 4203
  br i1 %209, label %210, label %228

210:                                              ; preds = %206, %198
  %211 = load i8*, i8** @SYS_RES_IOPORT, align 8
  %212 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %213 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %212, i32 0, i32 6
  store i8* %211, i8** %213, align 8
  %214 = call i8* @PCIR_BAR(i32 5)
  %215 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %216 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %215, i32 0, i32 5
  store i8* %214, i8** %216, align 8
  %217 = load i32, i32* %3, align 4
  %218 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %219 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %218, i32 0, i32 6
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %222 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %221, i32 0, i32 5
  %223 = load i32, i32* @RF_ACTIVE, align 4
  %224 = call i8* @bus_alloc_resource_any(i32 %217, i8* %220, i8** %222, i32 %223)
  %225 = bitcast i8* %224 to i32*
  %226 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %227 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %226, i32 0, i32 4
  store i32* %225, i32** %227, align 8
  br label %228

228:                                              ; preds = %210, %206
  br label %229

229:                                              ; preds = %228, %197
  %230 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %231 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %243, label %234

234:                                              ; preds = %229
  %235 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %236 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %235, i32 0, i32 3
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @INTEL_ICH5, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %234, %229
  %244 = load i32, i32* @ata_intel_sata_getrev, align 4
  %245 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %246 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  br label %247

247:                                              ; preds = %243, %234
  %248 = load i8*, i8** @ata_sata_setmode, align 8
  %249 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %250 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  br label %251

251:                                              ; preds = %247, %120
  br label %252

252:                                              ; preds = %251, %100
  br label %253

253:                                              ; preds = %252, %85
  br label %254

254:                                              ; preds = %253, %35
  store i32 0, i32* %2, align 4
  br label %255

255:                                              ; preds = %254, %71, %12
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @ata_setup_interrupt(i32, i32) #1

declare dso_local %struct.ata_intel_data* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i8*, i8**, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32*, i32, i32) #1

declare dso_local i32 @ATA_INL(i32*, i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
