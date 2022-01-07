; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, %struct.TYPE_2__*, %struct.ata_promise_sx4*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ata_promise_sx4 = type { i32, i32, i32 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ata_promise_ch_attach = common dso_local global i8* null, align 8
@ata_pci_ch_detach = common dso_local global i8* null, align 8
@ata_promise_setmode = common dso_local global i8* null, align 8
@ata_promise_tx2_ch_attach = common dso_local global i8* null, align 8
@SYS_RES_MEMORY = common dso_local global i8* null, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@PR_SX4X = common dso_local global i32 0, align 4
@ATA_INTR_FLAGS = common dso_local global i32 0, align 4
@ata_promise_sx4_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to setup interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DIMM size %dMB @ 0x%08x%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" ECC enabled\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M_ATAPCI = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Cannot allocate HPKT\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"ATA promise HPKT lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ata_promise_mio_ch_attach = common dso_local global i8* null, align 8
@ata_promise_mio_ch_detach = common dso_local global i8* null, align 8
@ata_promise_mio_reset = common dso_local global i8* null, align 8
@ata_promise_mio_intr = common dso_local global i32 0, align 4
@ata_promise_mio_setmode = common dso_local global i8* null, align 8
@ata_promise_mio_getrev = common dso_local global i32 0, align 4
@BUS_SPACE_MAP_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_promise_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_promise_chipinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_promise_sx4*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ata_pci_controller* @device_get_softc(i32 %8)
  store %struct.ata_pci_controller* %9, %struct.ata_pci_controller** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ata_generic_intr, align 4
  %12 = call i64 @ata_setup_interrupt(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %354

16:                                               ; preds = %1
  %17 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %18 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %17, i32 0, i32 12
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %317 [
    i32 133, label %22
    i32 132, label %32
    i32 128, label %51
    i32 134, label %61
  ]

22:                                               ; preds = %16
  %23 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %24 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %27 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @ATA_INB(i8* %28, i32 17)
  %30 = or i32 %29, 10
  %31 = call i32 @ATA_OUTB(i8* %25, i32 17, i32 %30)
  br label %32

32:                                               ; preds = %16, %22
  %33 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %34 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %37 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @ATA_INB(i8* %38, i32 31)
  %40 = or i32 %39, 1
  %41 = call i32 @ATA_OUTB(i8* %35, i32 31, i32 %40)
  %42 = load i8*, i8** @ata_promise_ch_attach, align 8
  %43 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %44 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %43, i32 0, i32 11
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @ata_pci_ch_detach, align 8
  %46 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %47 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %46, i32 0, i32 10
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @ata_promise_setmode, align 8
  %49 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %50 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %49, i32 0, i32 8
  store i8* %48, i8** %50, align 8
  store i32 0, i32* %2, align 4
  br label %354

51:                                               ; preds = %16
  %52 = load i8*, i8** @ata_promise_tx2_ch_attach, align 8
  %53 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %54 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %53, i32 0, i32 11
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @ata_pci_ch_detach, align 8
  %56 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %57 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %56, i32 0, i32 10
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @ata_promise_setmode, align 8
  %59 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %60 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %59, i32 0, i32 8
  store i8* %58, i8** %60, align 8
  store i32 0, i32* %2, align 4
  br label %354

61:                                               ; preds = %16
  %62 = load i8*, i8** @SYS_RES_MEMORY, align 8
  %63 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %64 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = call i8* @PCIR_BAR(i32 4)
  %66 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %67 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %70 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %73 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %72, i32 0, i32 2
  %74 = load i32, i32* @RF_ACTIVE, align 4
  %75 = call i8* @bus_alloc_resource_any(i32 %68, i8* %71, i8** %73, i32 %74)
  %76 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %77 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = icmp ne i8* %75, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %61
  br label %318

80:                                               ; preds = %61
  %81 = load i8*, i8** @SYS_RES_MEMORY, align 8
  %82 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %83 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  %84 = call i8* @PCIR_BAR(i32 3)
  %85 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %86 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %89 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %88, i32 0, i32 6
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %92 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %91, i32 0, i32 5
  %93 = load i32, i32* @RF_ACTIVE, align 4
  %94 = call i8* @bus_alloc_resource_any(i32 %87, i8* %90, i8** %92, i32 %93)
  %95 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %96 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = icmp ne i8* %94, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %80
  br label %318

99:                                               ; preds = %80
  %100 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %101 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %100, i32 0, i32 12
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PR_SX4X, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %205

107:                                              ; preds = %99
  %108 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %109 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @ATA_INL(i8* %110, i32 786560)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %114 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %113, i32 0, i32 15
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %117 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %116, i32 0, i32 14
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @bus_teardown_intr(i32 %112, i32 %115, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %3, align 4
  %123 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %124 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %123, i32 0, i32 15
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ATA_INTR_FLAGS, align 4
  %127 = load i32, i32* @ata_promise_sx4_intr, align 4
  %128 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %129 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %130 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %129, i32 0, i32 14
  %131 = call i32 @bus_setup_intr(i32 %122, i32 %125, i32 %126, i32* null, i32 %127, %struct.ata_pci_controller* %128, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %121, %107
  %134 = load i32, i32* %3, align 4
  %135 = call i32 (i32, i8*, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %318

136:                                              ; preds = %121
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* %7, align 4
  %139 = ashr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = load i32, i32* %7, align 4
  %142 = ashr i32 %141, 24
  %143 = and i32 %142, 255
  %144 = sub nsw i32 %140, %143
  %145 = add nsw i32 %144, 1
  %146 = shl i32 %145, 4
  %147 = load i32, i32* %7, align 4
  %148 = ashr i32 %147, 24
  %149 = and i32 %148, 255
  %150 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %151 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %150, i32 0, i32 4
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @ATA_INL(i8* %152, i32 786568)
  %154 = and i32 %153, 65536
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %158 = call i32 (i32, i8*, ...) @device_printf(i32 %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %146, i32 %149, i8* %157)
  %159 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %160 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %163 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %162, i32 0, i32 4
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @ATA_INL(i8* %164, i32 786444)
  %166 = and i32 %165, -65536
  %167 = call i32 @ATA_OUTL(i8* %161, i32 786444, i32 %166)
  %168 = load i32, i32* @M_ATAPCI, align 4
  %169 = load i32, i32* @M_NOWAIT, align 4
  %170 = load i32, i32* @M_ZERO, align 4
  %171 = or i32 %169, %170
  %172 = call %struct.ata_promise_sx4* @malloc(i32 12, i32 %168, i32 %171)
  store %struct.ata_promise_sx4* %172, %struct.ata_promise_sx4** %6, align 8
  %173 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %6, align 8
  %174 = icmp eq %struct.ata_promise_sx4* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %136
  %176 = load i32, i32* %3, align 4
  %177 = call i32 (i32, i8*, ...) @device_printf(i32 %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %318

178:                                              ; preds = %136
  %179 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %6, align 8
  %180 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %179, i32 0, i32 2
  %181 = load i32, i32* @MTX_DEF, align 4
  %182 = call i32 @mtx_init(i32* %180, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %181)
  %183 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %6, align 8
  %184 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %183, i32 0, i32 1
  %185 = call i32 @TAILQ_INIT(i32* %184)
  %186 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %6, align 8
  %187 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %186, i32 0, i32 0
  store i32 0, i32* %187, align 4
  %188 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %6, align 8
  %189 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %190 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %189, i32 0, i32 13
  store %struct.ata_promise_sx4* %188, %struct.ata_promise_sx4** %190, align 8
  %191 = load i8*, i8** @ata_promise_mio_ch_attach, align 8
  %192 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %193 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %192, i32 0, i32 11
  store i8* %191, i8** %193, align 8
  %194 = load i8*, i8** @ata_promise_mio_ch_detach, align 8
  %195 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %196 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %195, i32 0, i32 10
  store i8* %194, i8** %196, align 8
  %197 = load i8*, i8** @ata_promise_mio_reset, align 8
  %198 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %199 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %198, i32 0, i32 9
  store i8* %197, i8** %199, align 8
  %200 = load i8*, i8** @ata_promise_setmode, align 8
  %201 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %202 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %201, i32 0, i32 8
  store i8* %200, i8** %202, align 8
  %203 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %204 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %203, i32 0, i32 0
  store i32 4, i32* %204, align 8
  store i32 0, i32* %2, align 4
  br label %354

205:                                              ; preds = %99
  %206 = load i32, i32* %3, align 4
  %207 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %208 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %207, i32 0, i32 15
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %211 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %210, i32 0, i32 14
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @bus_teardown_intr(i32 %206, i32 %209, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %227, label %215

215:                                              ; preds = %205
  %216 = load i32, i32* %3, align 4
  %217 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %218 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %217, i32 0, i32 15
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @ATA_INTR_FLAGS, align 4
  %221 = load i32, i32* @ata_promise_mio_intr, align 4
  %222 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %223 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %224 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %223, i32 0, i32 14
  %225 = call i32 @bus_setup_intr(i32 %216, i32 %219, i32 %220, i32* null, i32 %221, %struct.ata_pci_controller* %222, i32* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %215, %205
  %228 = load i32, i32* %3, align 4
  %229 = call i32 (i32, i8*, ...) @device_printf(i32 %228, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %318

230:                                              ; preds = %215
  %231 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %232 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %231, i32 0, i32 12
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  switch i32 %235, label %266 [
    i32 131, label %236
    i32 136, label %255
    i32 130, label %258
    i32 135, label %262
    i32 129, label %265
  ]

236:                                              ; preds = %230
  %237 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %238 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %237, i32 0, i32 4
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @ATA_INL(i8* %239, i32 72)
  %241 = and i32 %240, 1
  %242 = icmp sgt i32 %241, 0
  %243 = zext i1 %242 to i32
  %244 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %245 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %244, i32 0, i32 4
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @ATA_INL(i8* %246, i32 72)
  %248 = and i32 %247, 2
  %249 = icmp sgt i32 %248, 0
  %250 = zext i1 %249 to i32
  %251 = add nsw i32 %243, %250
  %252 = add nsw i32 %251, 2
  %253 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %254 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  br label %261

255:                                              ; preds = %230
  %256 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %257 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %256, i32 0, i32 0
  store i32 3, i32* %257, align 8
  br label %261

258:                                              ; preds = %230
  %259 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %260 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %259, i32 0, i32 0
  store i32 4, i32* %260, align 8
  br label %261

261:                                              ; preds = %258, %255, %236
  store i32 108, i32* %5, align 4
  br label %270

262:                                              ; preds = %230
  %263 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %264 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %263, i32 0, i32 0
  store i32 3, i32* %264, align 8
  br label %269

265:                                              ; preds = %230
  br label %266

266:                                              ; preds = %230, %265
  %267 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %268 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %267, i32 0, i32 0
  store i32 4, i32* %268, align 8
  br label %269

269:                                              ; preds = %266, %262
  store i32 96, i32* %5, align 4
  br label %270

270:                                              ; preds = %269, %261
  %271 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %272 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %271, i32 0, i32 13
  store %struct.ata_promise_sx4* inttoptr (i64 4294967295 to %struct.ata_promise_sx4*), %struct.ata_promise_sx4** %272, align 8
  %273 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %274 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %273, i32 0, i32 4
  %275 = load i8*, i8** %274, align 8
  %276 = load i32, i32* %5, align 4
  %277 = call i32 @ATA_OUTL(i8* %275, i32 %276, i32 255)
  %278 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %279 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %278, i32 0, i32 12
  %280 = load %struct.TYPE_2__*, %struct.TYPE_2__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 129
  br i1 %283, label %291, label %284

284:                                              ; preds = %270
  %285 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %286 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %285, i32 0, i32 12
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = icmp eq i32 %289, 135
  br i1 %290, label %291, label %301

291:                                              ; preds = %284, %270
  %292 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %293 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %292, i32 0, i32 4
  %294 = load i8*, i8** %293, align 8
  %295 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %296 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %295, i32 0, i32 4
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @ATA_INL(i8* %297, i32 68)
  %299 = or i32 %298, 8192
  %300 = call i32 @ATA_OUTL(i8* %294, i32 68, i32 %299)
  br label %301

301:                                              ; preds = %291, %284
  %302 = load i8*, i8** @ata_promise_mio_ch_attach, align 8
  %303 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %304 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %303, i32 0, i32 11
  store i8* %302, i8** %304, align 8
  %305 = load i8*, i8** @ata_promise_mio_ch_detach, align 8
  %306 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %307 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %306, i32 0, i32 10
  store i8* %305, i8** %307, align 8
  %308 = load i8*, i8** @ata_promise_mio_reset, align 8
  %309 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %310 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %309, i32 0, i32 9
  store i8* %308, i8** %310, align 8
  %311 = load i8*, i8** @ata_promise_mio_setmode, align 8
  %312 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %313 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %312, i32 0, i32 8
  store i8* %311, i8** %313, align 8
  %314 = load i32, i32* @ata_promise_mio_getrev, align 4
  %315 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %316 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %315, i32 0, i32 7
  store i32 %314, i32* %316, align 8
  store i32 0, i32* %2, align 4
  br label %354

317:                                              ; preds = %16
  br label %318

318:                                              ; preds = %317, %227, %175, %133, %98, %79
  %319 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %320 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %319, i32 0, i32 4
  %321 = load i8*, i8** %320, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %335

323:                                              ; preds = %318
  %324 = load i32, i32* %3, align 4
  %325 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %326 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %325, i32 0, i32 6
  %327 = load i8*, i8** %326, align 8
  %328 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %329 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %328, i32 0, i32 5
  %330 = load i8*, i8** %329, align 8
  %331 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %332 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %331, i32 0, i32 4
  %333 = load i8*, i8** %332, align 8
  %334 = call i32 @bus_release_resource(i32 %324, i8* %327, i8* %330, i8* %333)
  br label %335

335:                                              ; preds = %323, %318
  %336 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %337 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %336, i32 0, i32 1
  %338 = load i8*, i8** %337, align 8
  %339 = icmp ne i8* %338, null
  br i1 %339, label %340, label %352

340:                                              ; preds = %335
  %341 = load i32, i32* %3, align 4
  %342 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %343 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %342, i32 0, i32 3
  %344 = load i8*, i8** %343, align 8
  %345 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %346 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %345, i32 0, i32 2
  %347 = load i8*, i8** %346, align 8
  %348 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %349 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %348, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 @bus_release_resource(i32 %341, i8* %344, i8* %347, i8* %350)
  br label %352

352:                                              ; preds = %340, %335
  %353 = load i32, i32* @ENXIO, align 4
  store i32 %353, i32* %2, align 4
  br label %354

354:                                              ; preds = %352, %301, %178, %51, %32, %14
  %355 = load i32, i32* %2, align 4
  ret i32 %355
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @ata_setup_interrupt(i32, i32) #1

declare dso_local i32 @ATA_OUTB(i8*, i32, i32) #1

declare dso_local i32 @ATA_INB(i8*, i32) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i8*, i8**, i32) #1

declare dso_local i32 @ATA_INL(i8*, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.ata_pci_controller*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ATA_OUTL(i8*, i32, i32) #1

declare dso_local %struct.ata_promise_sx4* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
