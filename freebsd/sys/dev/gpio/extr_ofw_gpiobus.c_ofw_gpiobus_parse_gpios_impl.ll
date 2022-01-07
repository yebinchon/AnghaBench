; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_ofw_gpiobus.c_ofw_gpiobus_parse_gpios_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_ofw_gpiobus.c_ofw_gpiobus_parse_gpios_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_softc = type { i32, i32 }
%struct.gpiobus_pin = type { i32, i32, i32* }

@.str = private unnamed_addr constant [64 x i8] c"Warning: No %s specified in fdt data; device may not function.\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"gpio reference is not a gpio-controller.\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"%s cells doesn't match #gpio-cells.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"no pin specified in %s.\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"gpio does not have the #gpio-cells property.\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"no device registered for the gpio controller.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"no gpiobus reference for %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"cannot map the gpios specifier.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*, %struct.gpiobus_softc*, %struct.gpiobus_pin**)* @ofw_gpiobus_parse_gpios_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_gpiobus_parse_gpios_impl(i32 %0, i64 %1, i8* %2, %struct.gpiobus_softc* %3, %struct.gpiobus_pin** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.gpiobus_softc*, align 8
  %11 = alloca %struct.gpiobus_pin**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.gpiobus_softc* %3, %struct.gpiobus_softc** %10, align 8
  store %struct.gpiobus_pin** %4, %struct.gpiobus_pin*** %11, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i64** %17 to i8**
  %22 = call i32 @OF_getencprop_alloc_multi(i64 %19, i8* %20, i32 8, i8** %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 -1, i32* %6, align 4
  br label %282

29:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %88, %41, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %95

34:                                               ; preds = %30
  %35 = load i64*, i64** %17, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %30

46:                                               ; preds = %34
  %47 = load i64*, i64** %17, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @OF_node_from_xref(i64 %51)
  store i64 %52, i64* %18, align 8
  %53 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %10, align 8
  %54 = icmp ne %struct.gpiobus_softc* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %10, align 8
  %57 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @ofw_bus_get_node(i32 %58)
  %60 = load i64, i64* %18, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %282

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i64, i64* %18, align 8
  %66 = call i32 @OF_hasprop(i64 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i64, i64* %18, align 8
  %70 = call i64 @OF_getencprop(i64 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %12, i32 4)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i64*, i64** %17, align 8
  %76 = call i32 @OF_prop_free(i64* %75)
  store i32 -1, i32* %6, align 4
  br label %282

77:                                               ; preds = %68
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %13, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  store i32 -1, i32* %6, align 4
  br label %282

88:                                               ; preds = %77
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %13, align 4
  br label %30

95:                                               ; preds = %30
  %96 = load i32, i32* %16, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  %100 = icmp eq %struct.gpiobus_pin** %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %16, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 (i32, i8*, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i64*, i64** %17, align 8
  %110 = call i32 @OF_prop_free(i64* %109)
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %6, align 4
  br label %282

112:                                              ; preds = %98
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 16, %114
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* @M_DEVBUF, align 4
  %118 = load i32, i32* @M_NOWAIT, align 4
  %119 = load i32, i32* @M_ZERO, align 4
  %120 = or i32 %118, %119
  %121 = call %struct.gpiobus_pin* @malloc(i32 %116, i32 %117, i32 %120)
  %122 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  store %struct.gpiobus_pin* %121, %struct.gpiobus_pin** %122, align 8
  %123 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  %124 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %123, align 8
  %125 = icmp eq %struct.gpiobus_pin* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %112
  %127 = load i64*, i64** %17, align 8
  %128 = call i32 @OF_prop_free(i64* %127)
  store i32 -1, i32* %6, align 4
  br label %282

129:                                              ; preds = %112
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %264, %141, %129
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %271

134:                                              ; preds = %130
  %135 = load i64*, i64** %17, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %130

146:                                              ; preds = %134
  %147 = load i64*, i64** %17, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = call i64 @OF_node_from_xref(i64 %151)
  store i64 %152, i64* %18, align 8
  %153 = load i64, i64* %18, align 8
  %154 = call i64 @OF_getencprop(i64 %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %12, i32 4)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i32, i32* %7, align 4
  %158 = call i32 (i32, i8*, ...) @device_printf(i32 %157, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %275

159:                                              ; preds = %146
  %160 = load i64*, i64** %17, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = call i32* @OF_device_from_xref(i64 %164)
  %166 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  %167 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %167, i64 %169
  %171 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %170, i32 0, i32 2
  store i32* %165, i32** %171, align 8
  %172 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  %173 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %173, i64 %175
  %177 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %159
  %181 = load i32, i32* %7, align 4
  %182 = call i32 (i32, i8*, ...) @device_printf(i32 %181, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  br label %275

183:                                              ; preds = %159
  %184 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %10, align 8
  %185 = icmp eq %struct.gpiobus_softc* %184, null
  br i1 %185, label %186, label %217

186:                                              ; preds = %183
  %187 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  %188 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %188, i64 %190
  %192 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = call i32* @GPIO_GET_BUS(i32* %193)
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %207

196:                                              ; preds = %186
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  %199 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %199, i64 %201
  %203 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @device_get_nameunit(i32* %204)
  %206 = call i32 (i32, i8*, ...) @device_printf(i32 %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %205)
  br label %275

207:                                              ; preds = %186
  %208 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  %209 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %209, i64 %211
  %213 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = call i32* @GPIO_GET_BUS(i32* %214)
  %216 = call %struct.gpiobus_softc* @device_get_softc(i32* %215)
  store %struct.gpiobus_softc* %216, %struct.gpiobus_softc** %10, align 8
  br label %217

217:                                              ; preds = %207, %183
  %218 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  %219 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %218, align 8
  %220 = load i32, i32* %14, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %219, i64 %221
  %223 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* %8, align 8
  %226 = load i64, i64* %18, align 8
  %227 = load i32, i32* %12, align 4
  %228 = load i64*, i64** %17, align 8
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %228, i64 %231
  %233 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  %234 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %233, align 8
  %235 = load i32, i32* %14, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %234, i64 %236
  %238 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %237, i32 0, i32 0
  %239 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  %240 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %239, align 8
  %241 = load i32, i32* %14, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %240, i64 %242
  %244 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %243, i32 0, i32 1
  %245 = call i64 @gpio_map_gpios(i32* %224, i64 %225, i64 %226, i32 %227, i64* %232, i32* %238, i32* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %217
  %248 = load i32, i32* %7, align 4
  %249 = call i32 (i32, i8*, ...) @device_printf(i32 %248, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %275

250:                                              ; preds = %217
  %251 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %10, align 8
  %252 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  %255 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %254, align 8
  %256 = load i32, i32* %14, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %255, i64 %257
  %259 = getelementptr inbounds %struct.gpiobus_pin, %struct.gpiobus_pin* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i64 @gpiobus_acquire_pin(i32 %253, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %250
  br label %275

264:                                              ; preds = %250
  %265 = load i32, i32* %14, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %14, align 4
  %267 = load i32, i32* %12, align 4
  %268 = add nsw i32 %267, 1
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %269, %268
  store i32 %270, i32* %13, align 4
  br label %130

271:                                              ; preds = %130
  %272 = load i64*, i64** %17, align 8
  %273 = call i32 @OF_prop_free(i64* %272)
  %274 = load i32, i32* %16, align 4
  store i32 %274, i32* %6, align 4
  br label %282

275:                                              ; preds = %263, %247, %196, %180, %156
  %276 = load i64*, i64** %17, align 8
  %277 = call i32 @OF_prop_free(i64* %276)
  %278 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %11, align 8
  %279 = load %struct.gpiobus_pin*, %struct.gpiobus_pin** %278, align 8
  %280 = load i32, i32* @M_DEVBUF, align 4
  %281 = call i32 @free(%struct.gpiobus_pin* %279, i32 %280)
  store i32 -1, i32* %6, align 4
  br label %282

282:                                              ; preds = %275, %271, %126, %108, %84, %72, %62, %25
  %283 = load i32, i32* %6, align 4
  ret i32 %283
}

declare dso_local i32 @OF_getencprop_alloc_multi(i64, i8*, i32, i8**) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @OF_node_from_xref(i64) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_hasprop(i64, i8*) #1

declare dso_local i64 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i32 @OF_prop_free(i64*) #1

declare dso_local %struct.gpiobus_pin* @malloc(i32, i32, i32) #1

declare dso_local i32* @OF_device_from_xref(i64) #1

declare dso_local i32* @GPIO_GET_BUS(i32*) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local %struct.gpiobus_softc* @device_get_softc(i32*) #1

declare dso_local i64 @gpio_map_gpios(i32*, i64, i64, i32, i64*, i32*, i32*) #1

declare dso_local i64 @gpiobus_acquire_pin(i32, i32) #1

declare dso_local i32 @free(%struct.gpiobus_pin*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
