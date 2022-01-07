; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macio.c_macio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macio.c_macio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_softc = type { i64, i8, i32*, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.macio_devinfo = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"assigned-addresses\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@MACIO_REG_SIZE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RMAN_ARRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"MacIO Device Memory\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"rman_init() failed. error = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"rman_manage_region() failed. error = %d\0A\00", align 1
@M_MACIO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MACIO_QUIRK_IGNORE = common dso_local global i32 0, align 4
@MACIO_QUIRK_USE_CHILD_REG = common dso_local global i32 0, align 4
@MACIO_QUIRK_CHILD_HAS_INTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"<%s>: device_add_child failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"bmac\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"bmac+\00", align 1
@HEATHROW_FCR = common dso_local global i32 0, align 4
@FCR_ENET_ENABLE = common dso_local global i32 0, align 4
@FCR_ENET_RESET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"i2s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"K2-Keylargo\00", align 1
@KEYLARGO_FCR1 = common dso_local global i32 0, align 4
@FCR1_I2S0_CLK_ENABLE = common dso_local global i32 0, align 4
@FCR1_I2S0_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @macio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macio_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.macio_softc*, align 8
  %5 = alloca %struct.macio_devinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i8], align 1
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.macio_softc* @device_get_softc(i32* %16)
  store %struct.macio_softc* %17, %struct.macio_softc** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @ofw_bus_get_node(i32* %18)
  %20 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %21 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  store i64 %19, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %24 = call i64 @OF_getprop(i64 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %23, i32 3)
  %25 = icmp slt i64 %24, 3
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %283

28:                                               ; preds = %1
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %31 = call i64 @OF_getprop(i64 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %30, i32 32)
  %32 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %35 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %34, i32 0, i32 1
  store i8 %33, i8* %35, align 8
  %36 = load i32, i32* @MACIO_REG_SIZE, align 4
  %37 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %38 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = call i32 @PCIR_BAR(i32 0)
  %40 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %41 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @SYS_RES_MEMORY, align 4
  %44 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %45 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %44, i32 0, i32 5
  %46 = load i32, i32* @RF_ACTIVE, align 4
  %47 = call i32* @bus_alloc_resource_any(i32* %42, i32 %43, i32* %45, i32 %46)
  %48 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %49 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load i32, i32* @RMAN_ARRAY, align 4
  %51 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %52 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %55 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %58 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %57, i32 0, i32 4
  %59 = call i32 @rman_init(%struct.TYPE_5__* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %28
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @device_printf(i32* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %2, align 4
  br label %283

67:                                               ; preds = %28
  %68 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %69 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %68, i32 0, i32 4
  %70 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %71 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @rman_manage_region(%struct.TYPE_5__* %69, i32 0, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @device_printf(i32* %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %2, align 4
  br label %283

81:                                               ; preds = %67
  %82 = load i64, i64* %6, align 8
  %83 = call i64 @OF_child(i64 %82)
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %277, %81
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %280

87:                                               ; preds = %84
  %88 = load i32, i32* @M_MACIO, align 4
  %89 = load i32, i32* @M_WAITOK, align 4
  %90 = load i32, i32* @M_ZERO, align 4
  %91 = or i32 %89, %90
  %92 = call %struct.macio_devinfo* @malloc(i32 16, i32 %88, i32 %91)
  store %struct.macio_devinfo* %92, %struct.macio_devinfo** %5, align 8
  %93 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %94 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %93, i32 0, i32 0
  %95 = load i64, i64* %7, align 8
  %96 = call i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_6__* %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %100 = load i32, i32* @M_MACIO, align 4
  %101 = call i32 @free(%struct.macio_devinfo* %99, i32 %100)
  br label %277

102:                                              ; preds = %87
  %103 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %104 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @macio_get_quirks(i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @MACIO_QUIRK_IGNORE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %114 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %113, i32 0, i32 0
  %115 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_6__* %114)
  %116 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %117 = load i32, i32* @M_MACIO, align 4
  %118 = call i32 @free(%struct.macio_devinfo* %116, i32 %117)
  br label %277

119:                                              ; preds = %102
  %120 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %121 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %120, i32 0, i32 1
  %122 = call i32 @resource_list_init(i32* %121)
  %123 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %124 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %127 = call i32 @macio_add_intr(i64 %125, %struct.macio_devinfo* %126)
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @MACIO_QUIRK_USE_CHILD_REG, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %119
  %133 = load i64, i64* %7, align 8
  %134 = call i64 @OF_child(i64 %133)
  %135 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %136 = call i32 @macio_add_reg(i64 %134, %struct.macio_devinfo* %135)
  br label %141

137:                                              ; preds = %119
  %138 = load i64, i64* %7, align 8
  %139 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %140 = call i32 @macio_add_reg(i64 %138, %struct.macio_devinfo* %139)
  br label %141

141:                                              ; preds = %137, %132
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @MACIO_QUIRK_CHILD_HAS_INTR, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %141
  %147 = load i64, i64* %7, align 8
  %148 = call i64 @OF_child(i64 %147)
  store i64 %148, i64* %8, align 8
  br label %149

149:                                              ; preds = %156, %146
  %150 = load i64, i64* %8, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load i64, i64* %8, align 8
  %154 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %155 = call i32 @macio_add_intr(i64 %153, %struct.macio_devinfo* %154)
  br label %156

156:                                              ; preds = %152
  %157 = load i64, i64* %8, align 8
  %158 = call i64 @OF_peer(i64 %157)
  store i64 %158, i64* %8, align 8
  br label %149

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159, %141
  %161 = load i32*, i32** %3, align 8
  %162 = call i32* @device_add_child(i32* %161, i32* null, i32 -1)
  store i32* %162, i32** %9, align 8
  %163 = load i32*, i32** %9, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %181

165:                                              ; preds = %160
  %166 = load i32*, i32** %3, align 8
  %167 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %168 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @device_printf(i32* %166, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %170)
  %172 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %173 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %172, i32 0, i32 1
  %174 = call i32 @resource_list_free(i32* %173)
  %175 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %176 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %175, i32 0, i32 0
  %177 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_6__* %176)
  %178 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %179 = load i32, i32* @M_MACIO, align 4
  %180 = call i32 @free(%struct.macio_devinfo* %178, i32 %179)
  br label %277

181:                                              ; preds = %160
  %182 = load i32*, i32** %9, align 8
  %183 = load %struct.macio_devinfo*, %struct.macio_devinfo** %5, align 8
  %184 = call i32 @device_set_ivars(i32* %182, %struct.macio_devinfo* %183)
  %185 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %186 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  br label %277

190:                                              ; preds = %181
  %191 = load i32*, i32** %9, align 8
  %192 = call i8* @ofw_bus_get_name(i32* %191)
  %193 = call i64 @strcmp(i8* %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %204, label %195

195:                                              ; preds = %190
  %196 = load i32*, i32** %9, align 8
  %197 = call i8* @ofw_bus_get_compat(i32* %196)
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %250

199:                                              ; preds = %195
  %200 = load i32*, i32** %9, align 8
  %201 = call i8* @ofw_bus_get_compat(i32* %200)
  %202 = call i64 @strcmp(i8* %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %250

204:                                              ; preds = %199, %190
  %205 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %206 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* @HEATHROW_FCR, align 4
  %209 = call i32 @bus_read_4(i32* %207, i32 %208)
  store i32 %209, i32* %14, align 4
  %210 = load i32, i32* @FCR_ENET_ENABLE, align 4
  %211 = load i32, i32* @FCR_ENET_RESET, align 4
  %212 = xor i32 %211, -1
  %213 = and i32 %210, %212
  %214 = load i32, i32* %14, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %14, align 4
  %216 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %217 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* @HEATHROW_FCR, align 4
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @bus_write_4(i32* %218, i32 %219, i32 %220)
  %222 = call i32 @DELAY(i32 50000)
  %223 = load i32, i32* @FCR_ENET_RESET, align 4
  %224 = load i32, i32* %14, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %14, align 4
  %226 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %227 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* @HEATHROW_FCR, align 4
  %230 = load i32, i32* %14, align 4
  %231 = call i32 @bus_write_4(i32* %228, i32 %229, i32 %230)
  %232 = call i32 @DELAY(i32 50000)
  %233 = load i32, i32* @FCR_ENET_RESET, align 4
  %234 = xor i32 %233, -1
  %235 = load i32, i32* %14, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %14, align 4
  %237 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %238 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* @HEATHROW_FCR, align 4
  %241 = load i32, i32* %14, align 4
  %242 = call i32 @bus_write_4(i32* %239, i32 %240, i32 %241)
  %243 = call i32 @DELAY(i32 50000)
  %244 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %245 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* @HEATHROW_FCR, align 4
  %248 = load i32, i32* %14, align 4
  %249 = call i32 @bus_write_4(i32* %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %204, %199, %195
  %251 = load i32*, i32** %9, align 8
  %252 = call i8* @ofw_bus_get_name(i32* %251)
  %253 = call i64 @strcmp(i8* %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %276

255:                                              ; preds = %250
  %256 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %257 = call i64 @strcmp(i8* %256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %276

259:                                              ; preds = %255
  %260 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %261 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* @KEYLARGO_FCR1, align 4
  %264 = call i32 @bus_read_4(i32* %262, i32 %263)
  store i32 %264, i32* %15, align 4
  %265 = load i32, i32* @FCR1_I2S0_CLK_ENABLE, align 4
  %266 = load i32, i32* @FCR1_I2S0_ENABLE, align 4
  %267 = or i32 %265, %266
  %268 = load i32, i32* %15, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %15, align 4
  %270 = load %struct.macio_softc*, %struct.macio_softc** %4, align 8
  %271 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* @KEYLARGO_FCR1, align 4
  %274 = load i32, i32* %15, align 4
  %275 = call i32 @bus_write_4(i32* %272, i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %259, %255, %250
  br label %277

277:                                              ; preds = %276, %189, %165, %112, %98
  %278 = load i64, i64* %7, align 8
  %279 = call i64 @OF_peer(i64 %278)
  store i64 %279, i64* %7, align 8
  br label %84

280:                                              ; preds = %84
  %281 = load i32*, i32** %3, align 8
  %282 = call i32 @bus_generic_attach(i32* %281)
  store i32 %282, i32* %2, align 4
  br label %283

283:                                              ; preds = %280, %76, %62, %26
  %284 = load i32, i32* %2, align 4
  ret i32 %284
}

declare dso_local %struct.macio_softc* @device_get_softc(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i64 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i32 @rman_init(%struct.TYPE_5__*) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

declare dso_local i32 @rman_manage_region(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.macio_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @free(%struct.macio_devinfo*, i32) #1

declare dso_local i32 @macio_get_quirks(i32) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_6__*) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @macio_add_intr(i64, %struct.macio_devinfo*) #1

declare dso_local i32 @macio_add_reg(i64, %struct.macio_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.macio_devinfo*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @ofw_bus_get_name(i32*) #1

declare dso_local i8* @ofw_bus_get_compat(i32*) #1

declare dso_local i32 @bus_read_4(i32*, i32) #1

declare dso_local i32 @bus_write_4(i32*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
