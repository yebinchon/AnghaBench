; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/terasic/de4led/extr_terasic_de4led.c_terasic_de4led_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/terasic/de4led/extr_terasic_de4led.c_terasic_de4led_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terasic_de4led_softc = type { i32, i32, i8** }

@led_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"de4led_0\00", align 1
@led_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"de4led_1\00", align 1
@led_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"de4led_2\00", align 1
@led_3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"de4led_3\00", align 1
@led_4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"de4led_4\00", align 1
@led_5 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"de4led_5\00", align 1
@led_6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"de4led_6\00", align 1
@led_7 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"de4led_7\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"de4led_0_cmd\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"de4led_1_cmd\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"de4led_2_cmd\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"de4led_3_cmd\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"de4led_4_cmd\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"de4led_5_cmd\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"de4led_6_cmd\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"de4led_7_cmd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @terasic_de4led_attach(%struct.terasic_de4led_softc* %0) #0 {
  %2 = alloca %struct.terasic_de4led_softc*, align 8
  %3 = alloca i8*, align 8
  store %struct.terasic_de4led_softc* %0, %struct.terasic_de4led_softc** %2, align 8
  %4 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %5 = call i32 @TERASIC_DE4LED_LOCK_INIT(%struct.terasic_de4led_softc* %4)
  %6 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %7 = call i32 @TERASIC_DE4LED_LOCK(%struct.terasic_de4led_softc* %6)
  %8 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %9 = call i32 @TERASIC_DE4LED_CLEARBAR(%struct.terasic_de4led_softc* %8)
  %10 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %11 = call i32 @terasic_de4led_update(%struct.terasic_de4led_softc* %10)
  %12 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %13 = call i32 @TERASIC_DE4LED_UNLOCK(%struct.terasic_de4led_softc* %12)
  %14 = load i32, i32* @led_0, align 4
  %15 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %16 = call i8* @led_create(i32 %14, %struct.terasic_de4led_softc* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %18 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %17, i32 0, i32 2
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  store i8* %16, i8** %20, align 8
  %21 = load i32, i32* @led_1, align 4
  %22 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %23 = call i8* @led_create(i32 %21, %struct.terasic_de4led_softc* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %25 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %24, i32 0, i32 2
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  store i8* %23, i8** %27, align 8
  %28 = load i32, i32* @led_2, align 4
  %29 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %30 = call i8* @led_create(i32 %28, %struct.terasic_de4led_softc* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %32 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %31, i32 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* @led_3, align 4
  %36 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %37 = call i8* @led_create(i32 %35, %struct.terasic_de4led_softc* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %39 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %38, i32 0, i32 2
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 3
  store i8* %37, i8** %41, align 8
  %42 = load i32, i32* @led_4, align 4
  %43 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %44 = call i8* @led_create(i32 %42, %struct.terasic_de4led_softc* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %45 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %46 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %45, i32 0, i32 2
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 4
  store i8* %44, i8** %48, align 8
  %49 = load i32, i32* @led_5, align 4
  %50 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %51 = call i8* @led_create(i32 %49, %struct.terasic_de4led_softc* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %52 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %53 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %52, i32 0, i32 2
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 5
  store i8* %51, i8** %55, align 8
  %56 = load i32, i32* @led_6, align 4
  %57 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %58 = call i8* @led_create(i32 %56, %struct.terasic_de4led_softc* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %59 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %60 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %59, i32 0, i32 2
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 6
  store i8* %58, i8** %62, align 8
  %63 = load i32, i32* @led_7, align 4
  %64 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %65 = call i8* @led_create(i32 %63, %struct.terasic_de4led_softc* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %66 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %67 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %66, i32 0, i32 2
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 7
  store i8* %65, i8** %69, align 8
  %70 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %71 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @device_get_name(i32 %72)
  %74 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %75 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @resource_string_value(i32 %73, i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %3)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %1
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @led_set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %79, %1
  %83 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %84 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @device_get_name(i32 %85)
  %87 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %88 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @resource_string_value(i32 %86, i32 %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %3)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i8*, i8** %3, align 8
  %94 = call i32 @led_set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %92, %82
  %96 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %97 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @device_get_name(i32 %98)
  %100 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %101 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @resource_string_value(i32 %99, i32 %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %3)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 @led_set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %105, %95
  %109 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %110 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @device_get_name(i32 %111)
  %113 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %114 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @resource_string_value(i32 %112, i32 %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %3)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load i8*, i8** %3, align 8
  %120 = call i32 @led_set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %118, %108
  %122 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %123 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @device_get_name(i32 %124)
  %126 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %127 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @resource_string_value(i32 %125, i32 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %3)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %121
  %132 = load i8*, i8** %3, align 8
  %133 = call i32 @led_set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %131, %121
  %135 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %136 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @device_get_name(i32 %137)
  %139 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %140 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @resource_string_value(i32 %138, i32 %141, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %3)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = load i8*, i8** %3, align 8
  %146 = call i32 @led_set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %144, %134
  %148 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %149 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @device_get_name(i32 %150)
  %152 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %153 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @resource_string_value(i32 %151, i32 %154, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %3)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %147
  %158 = load i8*, i8** %3, align 8
  %159 = call i32 @led_set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %157, %147
  %161 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %162 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @device_get_name(i32 %163)
  %165 = load %struct.terasic_de4led_softc*, %struct.terasic_de4led_softc** %2, align 8
  %166 = getelementptr inbounds %struct.terasic_de4led_softc, %struct.terasic_de4led_softc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @resource_string_value(i32 %164, i32 %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %3)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %160
  %171 = load i8*, i8** %3, align 8
  %172 = call i32 @led_set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %171)
  br label %173

173:                                              ; preds = %170, %160
  ret void
}

declare dso_local i32 @TERASIC_DE4LED_LOCK_INIT(%struct.terasic_de4led_softc*) #1

declare dso_local i32 @TERASIC_DE4LED_LOCK(%struct.terasic_de4led_softc*) #1

declare dso_local i32 @TERASIC_DE4LED_CLEARBAR(%struct.terasic_de4led_softc*) #1

declare dso_local i32 @terasic_de4led_update(%struct.terasic_de4led_softc*) #1

declare dso_local i32 @TERASIC_DE4LED_UNLOCK(%struct.terasic_de4led_softc*) #1

declare dso_local i8* @led_create(i32, %struct.terasic_de4led_softc*, i8*) #1

declare dso_local i64 @resource_string_value(i32, i32, i8*, i8**) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @led_set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
