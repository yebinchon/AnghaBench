; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_xenon.c_sdhci_xenon_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_xenon.c_sdhci_xenon_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_xenon_softc = type { i32, %struct.sdhci_slot*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdhci_slot = type { i32, i32, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't allocate IRQ\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't allocate memory for slot\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"non-removable\00", align 1
@SDHCI_NON_REMOVABLE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Non-removable media\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@sdhci_xenon_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Cannot setup IRQ\0A\00", align 1
@XENON_SYS_OP_CTRL = common dso_local global i32 0, align 4
@XENON_AUTO_CLKGATE_DISABLE = common dso_local global i32 0, align 4
@XENON_SYS_EXT_OP_CTRL = common dso_local global i32 0, align 4
@XENON_SDCLK_IDLEOFF_ENABLE_SHIFT = common dso_local global i32 0, align 4
@XENON_MASK_CMD_CONFLICT_ERR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sdhci_xenon_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_xenon_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_xenon_softc*, align 8
  %5 = alloca %struct.sdhci_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.sdhci_xenon_softc* @device_get_softc(i32 %9)
  store %struct.sdhci_xenon_softc* %10, %struct.sdhci_xenon_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %13 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %12, i32 0, i32 10
  store i32 %11, i32* %13, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_IRQ, align 4
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i8* @bus_alloc_resource_any(i32 %14, i32 %15, i32* %7, i32 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %20 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %22 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %2, align 4
  br label %248

29:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_MEMORY, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i8* @bus_alloc_resource_any(i32 %30, i32 %31, i32* %7, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %36 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %38 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %29
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @SYS_RES_IRQ, align 4
  %44 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %45 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @rman_get_rid(i32* %46)
  %48 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %49 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @bus_release_resource(i32 %42, i32 %43, i32 %47, i32* %50)
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %2, align 4
  br label %248

55:                                               ; preds = %29
  %56 = load i32, i32* @M_DEVBUF, align 4
  %57 = load i32, i32* @M_ZERO, align 4
  %58 = load i32, i32* @M_WAITOK, align 4
  %59 = or i32 %57, %58
  %60 = call %struct.sdhci_slot* @malloc(i32 16, i32 %56, i32 %59)
  store %struct.sdhci_slot* %60, %struct.sdhci_slot** %5, align 8
  %61 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %62 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @OF_hasprop(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %55
  %67 = load i32, i32* @SDHCI_NON_REMOVABLE, align 4
  %68 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %69 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i64, i64* @bootverbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %66
  br label %78

78:                                               ; preds = %77, %55
  %79 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %80 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %83 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %85 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %88 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %90 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %93 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %95 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %96 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %95, i32 0, i32 1
  store %struct.sdhci_slot* %94, %struct.sdhci_slot** %96, align 8
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %99 = call i32 @sdhci_fdt_gpio_setup(i32 %97, %struct.sdhci_slot* %98)
  %100 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %101 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %104 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %103, i32 0, i32 1
  %105 = load %struct.sdhci_slot*, %struct.sdhci_slot** %104, align 8
  %106 = call i64 @sdhci_init_slot(i32 %102, %struct.sdhci_slot* %105, i32 0)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %78
  br label %219

109:                                              ; preds = %78
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %112 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @INTR_TYPE_MISC, align 4
  %115 = load i32, i32* @INTR_MPSAFE, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @sdhci_xenon_intr, align 4
  %118 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %119 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %120 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %119, i32 0, i32 4
  %121 = call i32 @bus_setup_intr(i32 %110, i32* %113, i32 %116, i32* null, i32 %117, %struct.sdhci_xenon_softc* %118, i32* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %109
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @device_printf(i32 %125, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %219

127:                                              ; preds = %109
  %128 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %129 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @XENON_SYS_OP_CTRL, align 4
  %132 = call i32 @bus_read_4(i32* %130, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* @XENON_AUTO_CLKGATE_DISABLE, align 4
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %137 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @XENON_SYS_OP_CTRL, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @bus_write_4(i32* %138, i32 %139, i32 %140)
  %142 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %143 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = shl i32 1, %144
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  %148 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %149 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* @XENON_SYS_OP_CTRL, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @bus_write_4(i32* %150, i32 %151, i32 %152)
  %154 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %155 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* @XENON_SYS_EXT_OP_CTRL, align 4
  %158 = call i32 @bus_read_4(i32* %156, i32 %157)
  store i32 %158, i32* %8, align 4
  %159 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %160 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = shl i32 1, %161
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %8, align 4
  %165 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %166 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @XENON_SYS_EXT_OP_CTRL, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @bus_write_4(i32* %167, i32 %168, i32 %169)
  %171 = load i32, i32* @XENON_AUTO_CLKGATE_DISABLE, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %8, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %8, align 4
  %175 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %176 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* @XENON_SYS_OP_CTRL, align 4
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @bus_write_4(i32* %177, i32 %178, i32 %179)
  %181 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %182 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* @XENON_SYS_OP_CTRL, align 4
  %185 = call i32 @bus_read_4(i32* %183, i32 %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* @XENON_SDCLK_IDLEOFF_ENABLE_SHIFT, align 4
  %187 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %188 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %186, %189
  %191 = shl i32 1, %190
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %8, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %8, align 4
  %195 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %196 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* @XENON_SYS_OP_CTRL, align 4
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @bus_write_4(i32* %197, i32 %198, i32 %199)
  %201 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %202 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* @XENON_SYS_EXT_OP_CTRL, align 4
  %205 = call i32 @bus_read_4(i32* %203, i32 %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* @XENON_MASK_CMD_CONFLICT_ERR, align 4
  %207 = load i32, i32* %8, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %8, align 4
  %209 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %210 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* @XENON_SYS_EXT_OP_CTRL, align 4
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @bus_write_4(i32* %211, i32 %212, i32 %213)
  %215 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %216 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %215, i32 0, i32 1
  %217 = load %struct.sdhci_slot*, %struct.sdhci_slot** %216, align 8
  %218 = call i32 @sdhci_start_slot(%struct.sdhci_slot* %217)
  store i32 0, i32* %2, align 4
  br label %248

219:                                              ; preds = %124, %108
  %220 = load i32, i32* %3, align 4
  %221 = load i32, i32* @SYS_RES_IRQ, align 4
  %222 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %223 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %222, i32 0, i32 3
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @rman_get_rid(i32* %224)
  %226 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %227 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @bus_release_resource(i32 %220, i32 %221, i32 %225, i32* %228)
  %230 = load i32, i32* %3, align 4
  %231 = load i32, i32* @SYS_RES_MEMORY, align 4
  %232 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %233 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @rman_get_rid(i32* %234)
  %236 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %237 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = call i32 @bus_release_resource(i32 %230, i32 %231, i32 %235, i32* %238)
  %240 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %241 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %240, i32 0, i32 1
  %242 = load %struct.sdhci_slot*, %struct.sdhci_slot** %241, align 8
  %243 = load i32, i32* @M_DEVBUF, align 4
  %244 = call i32 @free(%struct.sdhci_slot* %242, i32 %243)
  %245 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %4, align 8
  %246 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %245, i32 0, i32 1
  store %struct.sdhci_slot* null, %struct.sdhci_slot** %246, align 8
  %247 = load i32, i32* @ENXIO, align 4
  store i32 %247, i32* %2, align 4
  br label %248

248:                                              ; preds = %219, %127, %41, %25
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local %struct.sdhci_xenon_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local %struct.sdhci_slot* @malloc(i32, i32, i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @sdhci_fdt_gpio_setup(i32, %struct.sdhci_slot*) #1

declare dso_local i64 @sdhci_init_slot(i32, %struct.sdhci_slot*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.sdhci_xenon_softc*, i32*) #1

declare dso_local i32 @bus_read_4(i32*, i32) #1

declare dso_local i32 @bus_write_4(i32*, i32, i32) #1

declare dso_local i32 @sdhci_start_slot(%struct.sdhci_slot*) #1

declare dso_local i32 @free(%struct.sdhci_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
