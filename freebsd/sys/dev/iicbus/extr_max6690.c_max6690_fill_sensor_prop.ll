; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_max6690.c_max6690_fill_sensor_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_max6690.c_max6690_fill_sensor_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max6690_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 (%struct.pmac_therm*)*, i8*, i8*, i32 }
%struct.pmac_therm = type opaque
%struct.pmac_therm.0 = type opaque

@.str = private unnamed_addr constant [18 x i8] c"hwsensor-location\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"hwsensor-id\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"hwsensor-zone\00", align 1
@ZERO_C_TO_K = common dso_local global i8* null, align 8
@max6690_sensor_read = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @max6690_fill_sensor_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6690_fill_sensor_prop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.max6690_softc*, align 8
  %6 = alloca [8 x i32], align 16
  %7 = alloca [96 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.max6690_softc* @device_get_softc(i32 %13)
  store %struct.max6690_softc* %14, %struct.max6690_softc** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ofw_bus_get_node(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds [96 x i8], [96 x i8]* %7, i64 0, i64 0
  %19 = call i32 (i32, i8*, ...) @OF_getprop(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %18, i64 96)
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %44, %1
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = load %struct.max6690_softc*, %struct.max6690_softc** %5, align 8
  %26 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.max6690_softc*, %struct.max6690_softc** %5, align 8
  %31 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [96 x i8], [96 x i8]* %7, i64 0, i64 0
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i32 @strcpy(i32 %38, i8* %42)
  br label %44

44:                                               ; preds = %29, %24
  %45 = getelementptr inbounds [96 x i8], [96 x i8]* %7, i64 0, i64 0
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = call i32 @strlen(i8* %48)
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %20

56:                                               ; preds = %20
  %57 = load %struct.max6690_softc*, %struct.max6690_softc** %5, align 8
  %58 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp eq %struct.TYPE_4__* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %161

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %66 = call i32 (i32, i8*, ...) @OF_getprop(i32 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %65, i64 32)
  store i32 %66, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %84, %63
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 15
  %77 = load %struct.max6690_softc*, %struct.max6690_softc** %5, align 8
  %78 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 8
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %67

87:                                               ; preds = %67
  %88 = load i32, i32* %4, align 4
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %90 = call i32 (i32, i8*, ...) @OF_getprop(i32 %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %89, i64 32)
  store i32 %90, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %108, %87
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.max6690_softc*, %struct.max6690_softc** %5, align 8
  %101 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 %99, i32* %107, align 8
  br label %108

108:                                              ; preds = %95
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %91

111:                                              ; preds = %91
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %156, %111
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %159

116:                                              ; preds = %112
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.max6690_softc*, %struct.max6690_softc** %5, align 8
  %119 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  store i32 %117, i32* %124, align 8
  %125 = load i8*, i8** @ZERO_C_TO_K, align 8
  %126 = getelementptr i8, i8* %125, i64 400
  %127 = load %struct.max6690_softc*, %struct.max6690_softc** %5, align 8
  %128 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  store i8* %126, i8** %134, align 8
  %135 = load i8*, i8** @ZERO_C_TO_K, align 8
  %136 = getelementptr i8, i8* %135, i64 800
  %137 = load %struct.max6690_softc*, %struct.max6690_softc** %5, align 8
  %138 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  store i8* %136, i8** %144, align 8
  %145 = load i64, i64* @max6690_sensor_read, align 8
  %146 = inttoptr i64 %145 to i32 (%struct.pmac_therm.0*)*
  %147 = bitcast i32 (%struct.pmac_therm.0*)* %146 to i32 (%struct.pmac_therm*)*
  %148 = load %struct.max6690_softc*, %struct.max6690_softc** %5, align 8
  %149 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  store i32 (%struct.pmac_therm*)* %147, i32 (%struct.pmac_therm*)** %155, align 8
  br label %156

156:                                              ; preds = %116
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %112

159:                                              ; preds = %112
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %159, %61
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.max6690_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
