; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_fcu.c_fcu_fill_fan_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_fcu.c_fcu_fill_fan_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcu_softc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 (%struct.pmac_fan*)*, i32 (%struct.pmac_fan.0*, i32)*, i32, i32 }
%struct.pmac_fan = type opaque
%struct.pmac_fan.0 = type opaque
%struct.pmac_fan.2 = type opaque
%struct.pmac_fan.3 = type opaque

@.str = private unnamed_addr constant [16 x i8] c"hwctrl-location\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"hwctrl-type\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fan-rpm\00", align 1
@FCU_FAN_RPM = common dso_local global i64 0, align 8
@FCU_FAN_PWM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"hwctrl-id\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"hwctrl-zone\00", align 1
@fcu_rpm_shift = common dso_local global i32 0, align 4
@fcu_fan_set_rpm = common dso_local global i64 0, align 8
@fcu_fan_set_pwm = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fcu_fill_fan_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcu_fill_fan_prop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fcu_softc*, align 8
  %6 = alloca [12 x i32], align 16
  %7 = alloca [144 x i8], align 16
  %8 = alloca [96 x i8], align 16
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
  %15 = call %struct.fcu_softc* @device_get_softc(i32 %14)
  store %struct.fcu_softc* %15, %struct.fcu_softc** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ofw_bus_get_node(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
  %20 = call i32 (i32, i8*, ...) @OF_getprop(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %19, i64 144)
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %45, %1
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %27 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %32 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = call i32 @strcpy(i32 %39, i8* %43)
  br label %45

45:                                               ; preds = %30, %25
  %46 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
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
  %58 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %59 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp eq %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %2, align 4
  br label %298

64:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %65 = load i32, i32* %4, align 4
  %66 = getelementptr inbounds [96 x i8], [96 x i8]* %8, i64 0, i64 0
  %67 = call i32 (i32, i8*, ...) @OF_getprop(i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %66, i64 96)
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %97, %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %68
  %73 = getelementptr inbounds [96 x i8], [96 x i8]* %8, i64 0, i64 0
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i64, i64* @FCU_FAN_RPM, align 8
  %81 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %82 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i64 %80, i64* %87, align 8
  br label %97

88:                                               ; preds = %72
  %89 = load i64, i64* @FCU_FAN_PWM, align 8
  %90 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %91 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i64 %89, i64* %96, align 8
  br label %97

97:                                               ; preds = %88, %79
  %98 = getelementptr inbounds [96 x i8], [96 x i8]* %8, i64 0, i64 0
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
  %111 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 0
  %112 = call i32 (i32, i8*, ...) @OF_getprop(i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %111, i64 48)
  store i32 %112, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %132, %109
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %113
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 8
  %123 = and i32 %122, 15
  %124 = srem i32 %123, 8
  %125 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %126 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i32 %124, i32* %131, align 8
  br label %132

132:                                              ; preds = %117
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %113

135:                                              ; preds = %113
  %136 = load i32, i32* %4, align 4
  %137 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 0
  %138 = call i32 (i32, i8*, ...) @OF_getprop(i32 %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %137, i64 48)
  store i32 %138, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %139

139:                                              ; preds = %156, %135
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %139
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %149 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  store i32 %147, i32* %155, align 8
  br label %156

156:                                              ; preds = %143
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %139

159:                                              ; preds = %139
  store i32 0, i32* %10, align 4
  br label %160

160:                                              ; preds = %293, %159
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %296

164:                                              ; preds = %160
  %165 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %166 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %169 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 4
  store i32 %167, i32* %174, align 4
  %175 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %176 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @FCU_FAN_RPM, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %239

185:                                              ; preds = %164
  %186 = load i32, i32* @fcu_rpm_shift, align 4
  %187 = ashr i32 4800, %186
  %188 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %189 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  store i32 %187, i32* %195, align 4
  %196 = load i32, i32* @fcu_rpm_shift, align 4
  %197 = ashr i32 56000, %196
  %198 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %199 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %198, i32 0, i32 0
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 2
  store i32 %197, i32* %205, align 8
  %206 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %207 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %206, i32 0, i32 0
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %210
  %212 = call i32 @fcu_fan_get_rpm(%struct.TYPE_4__* %211)
  %213 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %214 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %213, i32 0, i32 0
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 3
  store i32 %212, i32* %219, align 8
  %220 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %221 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %220, i32 0, i32 0
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 3
  store i32 (%struct.pmac_fan*)* bitcast (i32 (%struct.TYPE_4__*)* @fcu_fan_get_rpm to i32 (%struct.pmac_fan*)*), i32 (%struct.pmac_fan*)** %227, align 8
  %228 = load i64, i64* @fcu_fan_set_rpm, align 8
  %229 = inttoptr i64 %228 to i32 (%struct.pmac_fan.2*, i32)*
  %230 = bitcast i32 (%struct.pmac_fan.2*, i32)* %229 to i32 (%struct.pmac_fan.0*, i32)*
  %231 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %232 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %231, i32 0, i32 0
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 4
  store i32 (%struct.pmac_fan.0*, i32)* %230, i32 (%struct.pmac_fan.0*, i32)** %238, align 8
  br label %275

239:                                              ; preds = %164
  %240 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %241 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %240, i32 0, i32 0
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 1
  store i32 30, i32* %247, align 4
  %248 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %249 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %248, i32 0, i32 0
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 2
  store i32 100, i32* %255, align 8
  %256 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %257 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %256, i32 0, i32 0
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = load i32, i32* %10, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 3
  store i32 (%struct.pmac_fan*)* null, i32 (%struct.pmac_fan*)** %263, align 8
  %264 = load i64, i64* @fcu_fan_set_pwm, align 8
  %265 = inttoptr i64 %264 to i32 (%struct.pmac_fan.3*, i32)*
  %266 = bitcast i32 (%struct.pmac_fan.3*, i32)* %265 to i32 (%struct.pmac_fan.0*, i32)*
  %267 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %268 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %267, i32 0, i32 0
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %268, align 8
  %270 = load i32, i32* %10, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 4
  store i32 (%struct.pmac_fan.0*, i32)* %266, i32 (%struct.pmac_fan.0*, i32)** %274, align 8
  br label %275

275:                                              ; preds = %239, %185
  %276 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %277 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %276, i32 0, i32 0
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = load i32, i32* %10, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %286 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %285, i32 0, i32 0
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %286, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 5
  store i32 %284, i32* %292, align 8
  br label %293

293:                                              ; preds = %275
  %294 = load i32, i32* %10, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %10, align 4
  br label %160

296:                                              ; preds = %160
  %297 = load i32, i32* %9, align 4
  store i32 %297, i32* %2, align 4
  br label %298

298:                                              ; preds = %296, %62
  %299 = load i32, i32* %2, align 4
  ret i32 %299
}

declare dso_local %struct.fcu_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fcu_fan_get_rpm(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
