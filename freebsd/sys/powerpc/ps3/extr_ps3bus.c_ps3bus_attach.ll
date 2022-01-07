; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3bus.c_ps3bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3bus.c_ps3bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3bus_softc = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.ps3bus_devinfo = type { i32, i32, i32, i32, i32, i32, i32 }

@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"PS3Bus Memory Mapped I/O\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"PS3Bus Interrupts\00", align 1
@PS3_LPAR_ID_PME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"num_dev\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@M_PS3BUS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@OHCI_IRQ = common dso_local global i32 0, align 4
@OHCI_REG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"ohci\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"device_add_child failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"iommu\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@EHCI_IRQ = common dso_local global i32 0, align 4
@EHCI_REG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"ehci\00", align 1
@PS3_BUSTYPE_SYSBUS = common dso_local global i32 0, align 4
@PS3_BUSTYPE_STORAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ps3bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3bus_attach(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ps3bus_softc*, align 8
  %4 = alloca %struct.ps3bus_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call %struct.ps3bus_softc* @device_get_softc(i32* %15)
  store %struct.ps3bus_softc* %16, %struct.ps3bus_softc** %3, align 8
  %17 = load i8*, i8** @RMAN_ARRAY, align 8
  %18 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = load i8*, i8** @RMAN_ARRAY, align 8
  %25 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %31, i32 0, i32 0
  %33 = call i32 @rman_init(%struct.TYPE_5__* %32)
  %34 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %34, i32 0, i32 3
  %36 = call i32 @rman_init(%struct.TYPE_5__* %35)
  %37 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %37, i32 0, i32 3
  %39 = call i32 @rman_manage_region(%struct.TYPE_5__* %38, i32 0, i32 -1)
  %40 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %40, i32 0, i32 2
  %42 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %42, i32 0, i32 1
  %44 = call i32 @mem_regions(i32* %41, i32* %43, i32* null, i32* null)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %283, %1
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 5
  br i1 %47, label %48, label %286

48:                                               ; preds = %45
  %49 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %50 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %51 = ashr i32 %50, 32
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @lv1_get_repository_node_value(i32 %49, i32 %53, i32 %54, i32 0, i32 0, i32* %8, i32* %13)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %283

59:                                               ; preds = %48
  %60 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %61 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %62 = ashr i32 %61, 32
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %66 = call i32 @lv1_get_repository_node_value(i32 %60, i32 %64, i32 %65, i32 0, i32 0, i32* %9, i32* %13)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %283

70:                                               ; preds = %59
  %71 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %72 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %73 = ashr i32 %72, 32
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %77 = call i32 @lv1_get_repository_node_value(i32 %71, i32 %75, i32 %76, i32 0, i32 0, i32* %10, i32* %13)
  store i32 %77, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %279, %70
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %282

82:                                               ; preds = %78
  %83 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %84 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %85 = ashr i32 %84, 32
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %92 = call i32 @lv1_get_repository_node_value(i32 %83, i32 %87, i32 %90, i32 %91, i32 0, i32* %12, i32* %13)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  br label %279

96:                                               ; preds = %82
  %97 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %98 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %99 = ashr i32 %98, 32
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %106 = call i32 @lv1_get_repository_node_value(i32 %97, i32 %101, i32 %104, i32 %105, i32 0, i32* %11, i32* %13)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  br label %279

110:                                              ; preds = %96
  %111 = load i32, i32* %12, align 4
  switch i32 %111, label %214 [
    i32 128, label %112
  ]

112:                                              ; preds = %110
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @lv1_open_device(i32 %113, i32 %114, i32 0)
  %116 = load i32, i32* @M_PS3BUS, align 4
  %117 = load i32, i32* @M_WAITOK, align 4
  %118 = load i32, i32* @M_ZERO, align 4
  %119 = or i32 %117, %118
  %120 = call %struct.ps3bus_devinfo* @malloc(i32 28, i32 %116, i32 %119)
  store %struct.ps3bus_devinfo* %120, %struct.ps3bus_devinfo** %4, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %123 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %126 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %129 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %132 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %135 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %138 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %3, align 8
  %140 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @OHCI_IRQ, align 4
  %144 = load i32, i32* @OHCI_REG, align 4
  %145 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %146 = call i32 @ps3bus_resources_init_by_type(%struct.TYPE_5__* %140, i32 %141, i32 %142, i32 %143, i32 %144, %struct.ps3bus_devinfo* %145)
  %147 = load i32*, i32** %2, align 8
  %148 = call i32* @device_add_child(i32* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 -1)
  store i32* %148, i32** %14, align 8
  %149 = load i32*, i32** %14, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %112
  %152 = load i32*, i32** %2, align 8
  %153 = call i32 @device_printf(i32* %152, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %154 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %155 = load i32, i32* @M_PS3BUS, align 4
  %156 = call i32 @free(%struct.ps3bus_devinfo* %154, i32 %155)
  br label %279

157:                                              ; preds = %112
  %158 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %159 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %158, i32 0, i32 6
  %160 = load i32, i32* @MTX_DEF, align 4
  %161 = call i32 @mtx_init(i32* %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 %160)
  %162 = load i32*, i32** %14, align 8
  %163 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %164 = call i32 @device_set_ivars(i32* %162, %struct.ps3bus_devinfo* %163)
  %165 = load i32, i32* @M_PS3BUS, align 4
  %166 = load i32, i32* @M_WAITOK, align 4
  %167 = load i32, i32* @M_ZERO, align 4
  %168 = or i32 %166, %167
  %169 = call %struct.ps3bus_devinfo* @malloc(i32 28, i32 %165, i32 %168)
  store %struct.ps3bus_devinfo* %169, %struct.ps3bus_devinfo** %4, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %172 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %175 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %178 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %181 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %184 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %187 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %186, i32 0, i32 5
  store i32 %185, i32* %187, align 4
  %188 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %3, align 8
  %189 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %188, i32 0, i32 0
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @EHCI_IRQ, align 4
  %193 = load i32, i32* @EHCI_REG, align 4
  %194 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %195 = call i32 @ps3bus_resources_init_by_type(%struct.TYPE_5__* %189, i32 %190, i32 %191, i32 %192, i32 %193, %struct.ps3bus_devinfo* %194)
  %196 = load i32*, i32** %2, align 8
  %197 = call i32* @device_add_child(i32* %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 -1)
  store i32* %197, i32** %14, align 8
  %198 = load i32*, i32** %14, align 8
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %157
  %201 = load i32*, i32** %2, align 8
  %202 = call i32 @device_printf(i32* %201, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %203 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %204 = load i32, i32* @M_PS3BUS, align 4
  %205 = call i32 @free(%struct.ps3bus_devinfo* %203, i32 %204)
  br label %279

206:                                              ; preds = %157
  %207 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %208 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %207, i32 0, i32 6
  %209 = load i32, i32* @MTX_DEF, align 4
  %210 = call i32 @mtx_init(i32* %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 %209)
  %211 = load i32*, i32** %14, align 8
  %212 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %213 = call i32 @device_set_ivars(i32* %211, %struct.ps3bus_devinfo* %212)
  br label %278

214:                                              ; preds = %110
  %215 = load i32, i32* @M_PS3BUS, align 4
  %216 = load i32, i32* @M_WAITOK, align 4
  %217 = load i32, i32* @M_ZERO, align 4
  %218 = or i32 %216, %217
  %219 = call %struct.ps3bus_devinfo* @malloc(i32 28, i32 %215, i32 %218)
  store %struct.ps3bus_devinfo* %219, %struct.ps3bus_devinfo** %4, align 8
  %220 = load i32, i32* %9, align 4
  %221 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %222 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* %11, align 4
  %224 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %225 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %228 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* %12, align 4
  %230 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %231 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %5, align 4
  %233 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %234 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %233, i32 0, i32 4
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* %6, align 4
  %236 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %237 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 4
  %238 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %239 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @PS3_BUSTYPE_SYSBUS, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %249, label %243

243:                                              ; preds = %214
  %244 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %245 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @PS3_BUSTYPE_STORAGE, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %243, %214
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %11, align 4
  %252 = call i32 @lv1_open_device(i32 %250, i32 %251, i32 0)
  br label %253

253:                                              ; preds = %249, %243
  %254 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %3, align 8
  %255 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %254, i32 0, i32 0
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* %6, align 4
  %258 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %259 = call i32 @ps3bus_resources_init(%struct.TYPE_5__* %255, i32 %256, i32 %257, %struct.ps3bus_devinfo* %258)
  %260 = load i32*, i32** %2, align 8
  %261 = call i32* @device_add_child(i32* %260, i8* null, i32 -1)
  store i32* %261, i32** %14, align 8
  %262 = load i32*, i32** %14, align 8
  %263 = icmp eq i32* %262, null
  br i1 %263, label %264, label %270

264:                                              ; preds = %253
  %265 = load i32*, i32** %2, align 8
  %266 = call i32 @device_printf(i32* %265, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %267 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %268 = load i32, i32* @M_PS3BUS, align 4
  %269 = call i32 @free(%struct.ps3bus_devinfo* %267, i32 %268)
  br label %279

270:                                              ; preds = %253
  %271 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %272 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %271, i32 0, i32 6
  %273 = load i32, i32* @MTX_DEF, align 4
  %274 = call i32 @mtx_init(i32* %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 %273)
  %275 = load i32*, i32** %14, align 8
  %276 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %4, align 8
  %277 = call i32 @device_set_ivars(i32* %275, %struct.ps3bus_devinfo* %276)
  br label %278

278:                                              ; preds = %270, %206
  br label %279

279:                                              ; preds = %278, %264, %200, %151, %109, %95
  %280 = load i32, i32* %6, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %6, align 4
  br label %78

282:                                              ; preds = %78
  br label %283

283:                                              ; preds = %282, %69, %58
  %284 = load i32, i32* %5, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %5, align 4
  br label %45

286:                                              ; preds = %45
  %287 = load i32*, i32** %2, align 8
  %288 = call i32 @clock_register(i32* %287, i32 1000)
  %289 = load i32*, i32** %2, align 8
  %290 = call i32 @bus_generic_attach(i32* %289)
  ret i32 %290
}

declare dso_local %struct.ps3bus_softc* @device_get_softc(i32*) #1

declare dso_local i32 @rman_init(%struct.TYPE_5__*) #1

declare dso_local i32 @rman_manage_region(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mem_regions(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @lv1_get_repository_node_value(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @lv1_repository_string(i8*) #1

declare dso_local i32 @lv1_open_device(i32, i32, i32) #1

declare dso_local %struct.ps3bus_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @ps3bus_resources_init_by_type(%struct.TYPE_5__*, i32, i32, i32, i32, %struct.ps3bus_devinfo*) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @free(%struct.ps3bus_devinfo*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.ps3bus_devinfo*) #1

declare dso_local i32 @ps3bus_resources_init(%struct.TYPE_5__*, i32, i32, %struct.ps3bus_devinfo*) #1

declare dso_local i32 @clock_register(i32*, i32) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
