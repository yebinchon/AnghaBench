; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_fill_sensor_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_fill_sensor_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7417_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i8, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8, i32 (%struct.pmac_therm*)*, i8*, i8*, i32 }
%struct.pmac_therm = type opaque
%struct.pmac_therm.0 = type opaque
%struct.pmac_therm.1 = type opaque

@.str = private unnamed_addr constant [18 x i8] c"hwsensor-location\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"hwsensor-type\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@ADC7417_TEMP_SENSOR = common dso_local global i64 0, align 8
@ADC7417_ADC_SENSOR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"hwsensor-id\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"hwsensor-zone\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"DIODE TEMP\00", align 1
@ad7417_diode_read = common dso_local global i64 0, align 8
@ad7417_sensor_read = common dso_local global i64 0, align 8
@ZERO_C_TO_K = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ad7417_fill_sensor_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7417_fill_sensor_prop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad7417_softc*, align 8
  %6 = alloca [10 x i8], align 1
  %7 = alloca [96 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.ad7417_softc* @device_get_softc(i32 %14)
  store %struct.ad7417_softc* %15, %struct.ad7417_softc** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ofw_bus_get_node(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds [96 x i8], [96 x i8]* %7, i64 0, i64 0
  %20 = call i32 @OF_getprop(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %19, i32 96)
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %45, %1
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %27 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %32 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds [96 x i8], [96 x i8]* %7, i64 0, i64 0
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = call i32 @strcpy(i32 %39, i8* %43)
  br label %45

45:                                               ; preds = %30, %25
  %46 = getelementptr inbounds [96 x i8], [96 x i8]* %7, i64 0, i64 0
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = call i32 @strlen(i8* %49)
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %21

57:                                               ; preds = %21
  %58 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %59 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = icmp eq %struct.TYPE_3__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %2, align 4
  br label %259

64:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %65 = load i32, i32* %4, align 4
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %67 = call i32 @OF_getprop(i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 32)
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %97, %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %68
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i64, i64* @ADC7417_TEMP_SENSOR, align 8
  %81 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %82 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i64 %80, i64* %87, align 8
  br label %97

88:                                               ; preds = %72
  %89 = load i64, i64* @ADC7417_ADC_SENSOR, align 8
  %90 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %91 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i64 %89, i64* %96, align 8
  br label %97

97:                                               ; preds = %88, %79
  %98 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = call i32 @strlen(i8* %101)
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %68

109:                                              ; preds = %68
  %110 = load i32, i32* %4, align 4
  %111 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %112 = call i32 @OF_getprop(i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %111, i32 10)
  store i32 %112, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %129, %109
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %113
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %123 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  store i8 %121, i8* %128, align 8
  br label %129

129:                                              ; preds = %117
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %113

132:                                              ; preds = %113
  %133 = load i32, i32* %4, align 4
  %134 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %135 = call i32 @OF_getprop(i32 %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %134, i32 10)
  store i32 %135, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %153, %132
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %136
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %146 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %145, i32 0, i32 0
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i8 %144, i8* %152, align 8
  br label %153

153:                                              ; preds = %140
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %136

156:                                              ; preds = %136
  store i32 0, i32* %10, align 4
  br label %157

157:                                              ; preds = %254, %156
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %257

161:                                              ; preds = %157
  %162 = load i32, i32* %3, align 4
  %163 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %164 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %163, i32 0, i32 0
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 3
  store i32 %162, i32* %169, align 8
  %170 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %171 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %170, i32 0, i32 0
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i32* @strstr(i32 %178, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %201

181:                                              ; preds = %161
  %182 = load i64, i64* @ADC7417_TEMP_SENSOR, align 8
  %183 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %184 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %183, i32 0, i32 0
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  store i64 %182, i64* %189, align 8
  %190 = load i64, i64* @ad7417_diode_read, align 8
  %191 = inttoptr i64 %190 to i32 (%struct.pmac_therm.0*)*
  %192 = bitcast i32 (%struct.pmac_therm.0*)* %191 to i32 (%struct.pmac_therm*)*
  %193 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %194 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %193, i32 0, i32 0
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  store i32 (%struct.pmac_therm*)* %192, i32 (%struct.pmac_therm*)** %200, align 8
  br label %213

201:                                              ; preds = %161
  %202 = load i64, i64* @ad7417_sensor_read, align 8
  %203 = inttoptr i64 %202 to i32 (%struct.pmac_therm.1*)*
  %204 = bitcast i32 (%struct.pmac_therm.1*)* %203 to i32 (%struct.pmac_therm*)*
  %205 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %206 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %205, i32 0, i32 0
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  store i32 (%struct.pmac_therm*)* %204, i32 (%struct.pmac_therm*)** %212, align 8
  br label %213

213:                                              ; preds = %201, %181
  %214 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %215 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %214, i32 0, i32 0
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @ADC7417_TEMP_SENSOR, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %213
  br label %254

225:                                              ; preds = %213
  %226 = load i8*, i8** @ZERO_C_TO_K, align 8
  %227 = getelementptr i8, i8* %226, i64 500
  %228 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %229 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %228, i32 0, i32 0
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 3
  store i8* %227, i8** %235, align 8
  %236 = load i8*, i8** @ZERO_C_TO_K, align 8
  %237 = getelementptr i8, i8* %236, i64 900
  %238 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %239 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %238, i32 0, i32 0
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %239, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 2
  store i8* %237, i8** %245, align 8
  %246 = load %struct.ad7417_softc*, %struct.ad7417_softc** %5, align 8
  %247 = getelementptr inbounds %struct.ad7417_softc, %struct.ad7417_softc* %246, i32 0, i32 0
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %247, align 8
  %249 = load i32, i32* %10, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 2
  %253 = call i32 @pmac_thermal_sensor_register(%struct.TYPE_4__* %252)
  br label %254

254:                                              ; preds = %225, %224
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %10, align 4
  br label %157

257:                                              ; preds = %157
  %258 = load i32, i32* %9, align 4
  store i32 %258, i32* %2, align 4
  br label %259

259:                                              ; preds = %257, %62
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local %struct.ad7417_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i32 @pmac_thermal_sensor_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
