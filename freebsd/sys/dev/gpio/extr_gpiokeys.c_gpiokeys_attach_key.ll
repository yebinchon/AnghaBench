; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_attach_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_attach_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiokeys_softc = type { i32 }
%struct.gpiokey = type { i32, i32, i32, i64, i32, i32*, i32*, i32, i32, i32, i32, i32, %struct.gpiokeys_softc* }

@.str = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"autorepeat\00", align 1
@hz = common dso_local global i32 0, align 4
@AUTOREPEAT_DELAY = common dso_local global i32 0, align 4
@AUTOREPEAT_REPEAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"debounce-interval\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"freebsd,code\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"linux,code\00", align 1
@GPIOKEY_NONE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [42 x i8] c"<%s> failed to map linux,code value 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"<%s> no linux,code or freebsd,code property\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"<%s> failed to map pin\0A\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4
@GPIO_INTR_EDGE_BOTH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"<%s> cannot allocate interrupt\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@gpiokey_intr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"<%s> unable to setup the irq handler\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [59 x i8] c"<%s> code=%08x, autorepeat=%d, repeat=%d, repeat_delay=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpiokeys_softc*, i32, %struct.gpiokey*)* @gpiokeys_attach_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpiokeys_attach_key(%struct.gpiokeys_softc* %0, i32 %1, %struct.gpiokey* %2) #0 {
  %4 = alloca %struct.gpiokeys_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpiokey*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.gpiokeys_softc* %0, %struct.gpiokeys_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.gpiokey* %2, %struct.gpiokey** %6, align 8
  %12 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %13 = call i32 @GPIOKEY_LOCK_INIT(%struct.gpiokey* %12)
  %14 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %15 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %16 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %15, i32 0, i32 12
  store %struct.gpiokeys_softc* %14, %struct.gpiokeys_softc** %16, align 8
  %17 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %18 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %17, i32 0, i32 11
  %19 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %20 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %19, i32 0, i32 9
  %21 = call i32 @callout_init_mtx(i32* %18, i32* %20, i32 0)
  %22 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %23 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %22, i32 0, i32 10
  %24 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %25 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %24, i32 0, i32 9
  %26 = call i32 @callout_init_mtx(i32* %23, i32* %25, i32 0)
  store i8* null, i8** %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @OF_getprop_alloc(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @OF_getprop_alloc(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  br label %33

33:                                               ; preds = %30, %3
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %11, align 8
  br label %39

38:                                               ; preds = %33
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %39

39:                                               ; preds = %38, %36
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @OF_hasprop(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %43 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @hz, align 4
  %45 = load i32, i32* @AUTOREPEAT_DELAY, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %46, 1000
  %48 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %49 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %51 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %56 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %39
  %58 = load i32, i32* @hz, align 4
  %59 = load i32, i32* @AUTOREPEAT_REPEAT, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sdiv i32 %60, 1000
  %62 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %63 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %65 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %70 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %57
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @OF_getprop(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %7, i32 4)
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = call i8* @fdt32_to_cpu(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %80 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %84

81:                                               ; preds = %71
  %82 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %83 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %82, i32 0, i32 2
  store i32 5, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @OF_getprop(i32 %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %7, i32 4)
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = call i8* @fdt32_to_cpu(i32 %89)
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %93 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  br label %125

94:                                               ; preds = %84
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @OF_getprop(i32 %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %7, i32 4)
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  %100 = call i8* @fdt32_to_cpu(i32 %99)
  store i8* %100, i8** %9, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i64 @gpiokey_map_linux_code(i8* %101)
  %103 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %104 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  %105 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %106 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @GPIOKEY_NONE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %98
  %111 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %112 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %11, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %114, i8* %115)
  br label %117

117:                                              ; preds = %110, %98
  br label %124

118:                                              ; preds = %94
  %119 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %120 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %118, %117
  br label %125

125:                                              ; preds = %124, %88
  %126 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %127 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %131 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %130, i32 0, i32 6
  %132 = call i32 @gpio_pin_get_by_ofw_idx(i32 %128, i32 %129, i32 0, i32** %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %125
  %136 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %137 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %139)
  %141 = load i8*, i8** %8, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load i8*, i8** %8, align 8
  %145 = call i32 @OF_prop_free(i8* %144)
  br label %146

146:                                              ; preds = %143, %135
  br label %257

147:                                              ; preds = %125
  %148 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %149 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %152 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %151, i32 0, i32 7
  %153 = load i32, i32* @RF_ACTIVE, align 4
  %154 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %155 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %154, i32 0, i32 6
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* @GPIO_INTR_EDGE_BOTH, align 4
  %158 = call i32* @gpio_alloc_intr_resource(i32 %150, i32* %152, i32 %153, i32* %156, i32 %157)
  %159 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %160 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %159, i32 0, i32 5
  store i32* %158, i32** %160, align 8
  %161 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %162 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %161, i32 0, i32 5
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %183, label %165

165:                                              ; preds = %147
  %166 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %167 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %169)
  %171 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %172 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @gpio_pin_release(i32* %173)
  %175 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %176 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %175, i32 0, i32 6
  store i32* null, i32** %176, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %165
  %180 = load i8*, i8** %8, align 8
  %181 = call i32 @OF_prop_free(i8* %180)
  br label %182

182:                                              ; preds = %179, %165
  br label %257

183:                                              ; preds = %147
  %184 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %185 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %188 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %187, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* @INTR_TYPE_MISC, align 4
  %191 = load i32, i32* @INTR_MPSAFE, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @gpiokey_intr, align 4
  %194 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %195 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %196 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %195, i32 0, i32 8
  %197 = call i64 @bus_setup_intr(i32 %186, i32* %189, i32 %192, i32* null, i32 %193, %struct.gpiokey* %194, i32* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %230

199:                                              ; preds = %183
  %200 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %201 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i8*, i8** %11, align 8
  %204 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %202, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* %203)
  %205 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %206 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @SYS_RES_IRQ, align 4
  %209 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %210 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %213 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %212, i32 0, i32 5
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @bus_release_resource(i32 %207, i32 %208, i32 %211, i32* %214)
  %216 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %217 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %216, i32 0, i32 6
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @gpio_pin_release(i32* %218)
  %220 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %221 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %220, i32 0, i32 6
  store i32* null, i32** %221, align 8
  %222 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %223 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %222, i32 0, i32 5
  store i32* null, i32** %223, align 8
  %224 = load i8*, i8** %8, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %199
  %227 = load i8*, i8** %8, align 8
  %228 = call i32 @OF_prop_free(i8* %227)
  br label %229

229:                                              ; preds = %226, %199
  br label %257

230:                                              ; preds = %183
  %231 = load i64, i64* @bootverbose, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %251

233:                                              ; preds = %230
  %234 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %235 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i8*, i8** %11, align 8
  %238 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %239 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %242 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %245 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.gpiokey*, %struct.gpiokey** %6, align 8
  %248 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %236, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i8* %237, i64 %240, i32 %243, i32 %246, i32 %249)
  br label %251

251:                                              ; preds = %233, %230
  %252 = load i8*, i8** %8, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i8*, i8** %8, align 8
  %256 = call i32 @OF_prop_free(i8* %255)
  br label %257

257:                                              ; preds = %146, %182, %229, %254, %251
  ret void
}

declare dso_local i32 @GPIOKEY_LOCK_INIT(%struct.gpiokey*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i64 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i8* @fdt32_to_cpu(i32) #1

declare dso_local i64 @gpiokey_map_linux_code(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @gpio_pin_get_by_ofw_idx(i32, i32, i32, i32**) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local i32* @gpio_alloc_intr_resource(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @gpio_pin_release(i32*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.gpiokey*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
