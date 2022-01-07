; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg_fdt.c_saf1761_otg_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg_fdt.c_saf1761_otg_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { %struct.TYPE_3__, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@SOTG_HW_MODE_CTRL_DATA_BUS_WIDTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"analog-oc\00", align 1
@SOTG_HW_MODE_CTRL_ANA_DIGI_OC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"dack-polarity\00", align 1
@SOTG_HW_MODE_CTRL_DACK_POL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"dreq-polarity\00", align 1
@SOTG_HW_MODE_CTRL_DREQ_POL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"int-polarity\00", align 1
@SOTG_INTERRUPT_CFG_INTPOL = common dso_local global i32 0, align 4
@SOTG_HW_MODE_CTRL_INTR_POL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"int-level\00", align 1
@SOTG_INTERRUPT_CFG_INTLVL = common dso_local global i32 0, align 4
@SOTG_HW_MODE_CTRL_INTR_LEVEL = common dso_local global i32 0, align 4
@SOTG_MAX_DEVICES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@saf1761_otg_filter_interrupt = common dso_local global i32 0, align 4
@saf1761_otg_interrupt = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"Init failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"USB probe and attach failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @saf1761_otg_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_otg_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.saf1761_otg_softc*, align 8
  %5 = alloca [24 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.saf1761_otg_softc* @device_get_softc(i32 %8)
  store %struct.saf1761_otg_softc* %9, %struct.saf1761_otg_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ofw_bus_get_node(i32 %10)
  %12 = bitcast [24 x i8]* %5 to i8**
  %13 = call i64 @OF_getprop(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, i32 24)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 23
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @SOTG_HW_MODE_CTRL_DATA_BUS_WIDTH, align 4
  %22 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %23 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %20, %15
  br label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @SOTG_HW_MODE_CTRL_DATA_BUS_WIDTH, align 4
  %29 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %30 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %26
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @ofw_bus_get_node(i32 %34)
  %36 = bitcast [24 x i8]* %5 to i8**
  %37 = call i64 @OF_getprop(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %36, i32 24)
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* @SOTG_HW_MODE_CTRL_ANA_DIGI_OC, align 4
  %41 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %42 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @ofw_bus_get_node(i32 %46)
  %48 = bitcast [24 x i8]* %5 to i8**
  %49 = call i64 @OF_getprop(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %48, i32 24)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @SOTG_HW_MODE_CTRL_DACK_POL, align 4
  %53 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %54 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @ofw_bus_get_node(i32 %58)
  %60 = bitcast [24 x i8]* %5 to i8**
  %61 = call i64 @OF_getprop(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %60, i32 24)
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* @SOTG_HW_MODE_CTRL_DREQ_POL, align 4
  %65 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %66 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %57
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @ofw_bus_get_node(i32 %70)
  %72 = bitcast [24 x i8]* %5 to i8**
  %73 = call i64 @OF_getprop(i32 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %72, i32 24)
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load i32, i32* @SOTG_INTERRUPT_CFG_INTPOL, align 4
  %77 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %78 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @SOTG_HW_MODE_CTRL_INTR_POL, align 4
  %82 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %83 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %75, %69
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @ofw_bus_get_node(i32 %87)
  %89 = bitcast [24 x i8]* %5 to i8**
  %90 = call i64 @OF_getprop(i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %89, i32 24)
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load i32, i32* @SOTG_INTERRUPT_CFG_INTLVL, align 4
  %94 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %95 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* @SOTG_HW_MODE_CTRL_INTR_LEVEL, align 4
  %99 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %100 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %92, %86
  %104 = load i32, i32* %3, align 4
  %105 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %106 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  store i32 %104, i32* %107, align 8
  %108 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %109 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %112 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @SOTG_MAX_DEVICES, align 4
  %115 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %116 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 8
  %118 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %119 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32 32, i32* %120, align 8
  %121 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %122 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @USB_GET_DMA_TAG(i32 %123)
  %125 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_3__* %122, i32 %124, i32* null)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %103
  %128 = load i32, i32* @ENOMEM, align 4
  store i32 %128, i32* %2, align 4
  br label %250

129:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @SYS_RES_MEMORY, align 4
  %132 = load i32, i32* @RF_ACTIVE, align 4
  %133 = call i8* @bus_alloc_resource_any(i32 %130, i32 %131, i32* %7, i32 %132)
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %136 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %135, i32 0, i32 3
  store i32* %134, i32** %136, align 8
  %137 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %138 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  br label %246

142:                                              ; preds = %129
  %143 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %144 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @rman_get_bustag(i32* %145)
  %147 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %148 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 8
  %149 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %150 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @rman_get_bushandle(i32* %151)
  %153 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %154 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  %155 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %156 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @rman_get_size(i32* %157)
  %159 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %160 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  store i32 1, i32* %7, align 4
  %161 = load i32, i32* %3, align 4
  %162 = load i32, i32* @SYS_RES_IRQ, align 4
  %163 = load i32, i32* @RF_SHAREABLE, align 4
  %164 = load i32, i32* @RF_ACTIVE, align 4
  %165 = or i32 %163, %164
  %166 = call i8* @bus_alloc_resource_any(i32 %161, i32 %162, i32* %7, i32 %165)
  %167 = bitcast i8* %166 to i32*
  %168 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %169 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %168, i32 0, i32 2
  store i32* %167, i32** %169, align 8
  %170 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %171 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %190

174:                                              ; preds = %142
  store i32 0, i32* %7, align 4
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* @SYS_RES_IRQ, align 4
  %177 = load i32, i32* @RF_SHAREABLE, align 4
  %178 = load i32, i32* @RF_ACTIVE, align 4
  %179 = or i32 %177, %178
  %180 = call i8* @bus_alloc_resource_any(i32 %175, i32 %176, i32* %7, i32 %179)
  %181 = bitcast i8* %180 to i32*
  %182 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %183 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %182, i32 0, i32 2
  store i32* %181, i32** %183, align 8
  %184 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %185 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %174
  br label %246

189:                                              ; preds = %174
  br label %190

190:                                              ; preds = %189, %142
  %191 = load i32, i32* %3, align 4
  %192 = call i32* @device_add_child(i32 %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 -1)
  %193 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %194 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  store i32* %192, i32** %195, align 8
  %196 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %197 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %190
  br label %246

202:                                              ; preds = %190
  %203 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %204 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %208 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %207, i32 0, i32 0
  %209 = call i32 @device_set_ivars(i32* %206, %struct.TYPE_3__* %208)
  %210 = load i32, i32* %3, align 4
  %211 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %212 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* @INTR_TYPE_TTY, align 4
  %215 = load i32, i32* @INTR_MPSAFE, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %218 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %219 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %218, i32 0, i32 1
  %220 = call i32 @bus_setup_intr(i32 %210, i32* %213, i32 %216, i32* @saf1761_otg_filter_interrupt, i32* @saf1761_otg_interrupt, %struct.saf1761_otg_softc* %217, i32** %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %202
  %224 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %225 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %224, i32 0, i32 1
  store i32* null, i32** %225, align 8
  br label %246

226:                                              ; preds = %202
  %227 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %228 = call i32 @saf1761_otg_init(%struct.saf1761_otg_softc* %227)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load i32, i32* %3, align 4
  %233 = call i32 @device_printf(i32 %232, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %246

234:                                              ; preds = %226
  %235 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %236 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = call i32 @device_probe_and_attach(i32* %238)
  store i32 %239, i32* %6, align 4
  %240 = load i32, i32* %6, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %234
  %243 = load i32, i32* %3, align 4
  %244 = call i32 @device_printf(i32 %243, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %246

245:                                              ; preds = %234
  store i32 0, i32* %2, align 4
  br label %250

246:                                              ; preds = %242, %231, %223, %201, %188, %141
  %247 = load i32, i32* %3, align 4
  %248 = call i32 @saf1761_otg_fdt_detach(i32 %247)
  %249 = load i32, i32* @ENXIO, align 4
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %246, %245, %127
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local %struct.saf1761_otg_softc* @device_get_softc(i32) #1

declare dso_local i64 @OF_getprop(i32, i8*, i8**, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.saf1761_otg_softc*, i32**) #1

declare dso_local i32 @saf1761_otg_init(%struct.saf1761_otg_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @saf1761_otg_fdt_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
