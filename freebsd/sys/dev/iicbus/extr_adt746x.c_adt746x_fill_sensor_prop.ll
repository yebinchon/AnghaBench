; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adt746x.c_adt746x_fill_sensor_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adt746x.c_adt746x_fill_sensor_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt746x_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32 (%struct.pmac_therm*)*, i8*, i8* }
%struct.pmac_therm = type opaque
%struct.pmac_therm.0 = type opaque

@.str = private unnamed_addr constant [10 x i8] c"sensor-id\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@ADT746X_SENSOR_TEMP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"voltage\00", align 1
@ADT746X_SENSOR_VOLT = common dso_local global i64 0, align 8
@ADT746X_SENSOR_SPEED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@adt746x_sensor_read = common dso_local global i64 0, align 8
@ZERO_C_TO_K = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adt746x_fill_sensor_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt746x_fill_sensor_prop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.adt746x_softc*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.adt746x_softc* @device_get_softc(i32 %10)
  store %struct.adt746x_softc* %11, %struct.adt746x_softc** %5, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @ofw_bus_get_node(i32 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @OF_child(i64 %14)
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %166, %1
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %169

19:                                               ; preds = %16
  %20 = load i64, i64* %4, align 8
  %21 = call i32 (i64, i8*, ...) @OF_getprop(i64 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %9, i64 4)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %166

24:                                               ; preds = %19
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.adt746x_softc*, %struct.adt746x_softc** %5, align 8
  %27 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 (i64, i8*, ...) @OF_getprop(i64 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %34, i32 32)
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %38 = call i32 (i64, i8*, ...) @OF_getprop(i64 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %37, i64 32)
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %24
  %43 = load i64, i64* @ADT746X_SENSOR_TEMP, align 8
  %44 = load %struct.adt746x_softc*, %struct.adt746x_softc** %5, align 8
  %45 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 %43, i64* %50, align 8
  br label %74

51:                                               ; preds = %24
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i64, i64* @ADT746X_SENSOR_VOLT, align 8
  %57 = load %struct.adt746x_softc*, %struct.adt746x_softc** %5, align 8
  %58 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 %56, i64* %63, align 8
  br label %73

64:                                               ; preds = %51
  %65 = load i64, i64* @ADT746X_SENSOR_SPEED, align 8
  %66 = load %struct.adt746x_softc*, %struct.adt746x_softc** %5, align 8
  %67 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i64 %65, i64* %72, align 8
  br label %73

73:                                               ; preds = %64, %55
  br label %74

74:                                               ; preds = %73, %42
  %75 = load i64, i64* %4, align 8
  %76 = call i32 (i64, i8*, ...) @OF_getprop(i64 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %8, i64 4)
  %77 = load i64, i64* %4, align 8
  %78 = call i32 (i64, i8*, ...) @OF_getprop(i64 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %9, i64 4)
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.adt746x_softc*, %struct.adt746x_softc** %5, align 8
  %81 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 %79, i32* %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.adt746x_softc*, %struct.adt746x_softc** %5, align 8
  %89 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  store i32 %87, i32* %94, align 4
  %95 = load i64, i64* %4, align 8
  %96 = load %struct.adt746x_softc*, %struct.adt746x_softc** %5, align 8
  %97 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = call i32 (i64, i8*, ...) @OF_getprop(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %103, i64 4)
  %105 = load i32, i32* %2, align 4
  %106 = load %struct.adt746x_softc*, %struct.adt746x_softc** %5, align 8
  %107 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  store i32 %105, i32* %112, align 8
  %113 = load i64, i64* @adt746x_sensor_read, align 8
  %114 = inttoptr i64 %113 to i32 (%struct.pmac_therm.0*)*
  %115 = bitcast i32 (%struct.pmac_therm.0*)* %114 to i32 (%struct.pmac_therm*)*
  %116 = load %struct.adt746x_softc*, %struct.adt746x_softc** %5, align 8
  %117 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  store i32 (%struct.pmac_therm*)* %115, i32 (%struct.pmac_therm*)** %123, align 8
  %124 = load %struct.adt746x_softc*, %struct.adt746x_softc** %5, align 8
  %125 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ADT746X_SENSOR_TEMP, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %163

134:                                              ; preds = %74
  %135 = load i8*, i8** @ZERO_C_TO_K, align 8
  %136 = getelementptr i8, i8* %135, i64 500
  %137 = load %struct.adt746x_softc*, %struct.adt746x_softc** %5, align 8
  %138 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %137, i32 0, i32 0
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  store i8* %136, i8** %144, align 8
  %145 = load i8*, i8** @ZERO_C_TO_K, align 8
  %146 = getelementptr i8, i8* %145, i64 800
  %147 = load %struct.adt746x_softc*, %struct.adt746x_softc** %5, align 8
  %148 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %147, i32 0, i32 0
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 3
  store i8* %146, i8** %154, align 8
  %155 = load %struct.adt746x_softc*, %struct.adt746x_softc** %5, align 8
  %156 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %155, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  %162 = call i32 @pmac_thermal_sensor_register(%struct.TYPE_4__* %161)
  br label %163

163:                                              ; preds = %134, %74
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %163, %23
  %167 = load i64, i64* %4, align 8
  %168 = call i64 @OF_peer(i64 %167)
  store i64 %168, i64* %4, align 8
  br label %16

169:                                              ; preds = %16
  %170 = load i32, i32* %7, align 4
  ret i32 %170
}

declare dso_local %struct.adt746x_softc* @device_get_softc(i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_getprop(i64, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pmac_thermal_sensor_register(%struct.TYPE_4__*) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
