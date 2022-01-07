; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_widget_postprocess.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_widget_postprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_widget = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"audio output\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"audio input\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"audio mixer\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"audio selector\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"power widget\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"volume widget\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"beep widget\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"vendor widget\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"unknown type\00", align 1
@HDA_DEVS = common dso_local global i8** null, align 8
@HDA_CONFIG_DEFAULTCONF_DEVICE_MASK = common dso_local global i64 0, align 8
@HDA_CONFIG_DEFAULTCONF_DEVICE_SHIFT = common dso_local global i64 0, align 8
@HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK = common dso_local global i64 0, align 8
@HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_SHIFT = common dso_local global i64 0, align 8
@HDA_CONFIG_DEFAULTCONF_COLOR_MASK = common dso_local global i64 0, align 8
@HDA_CONFIG_DEFAULTCONF_COLOR_SHIFT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@HDA_COLORS = common dso_local global i8** null, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@HDA_CONNS = common dso_local global i8** null, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_widget*)* @hdaa_widget_postprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_widget_postprocess(%struct.hdaa_widget* %0) #0 {
  %2 = alloca %struct.hdaa_widget*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdaa_widget* %0, %struct.hdaa_widget** %2, align 8
  %8 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %9 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE(i32 %11)
  %13 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %14 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %16 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %27 [
    i32 134, label %18
    i32 136, label %19
    i32 135, label %20
    i32 133, label %21
    i32 131, label %22
    i32 130, label %23
    i32 128, label %24
    i32 132, label %25
    i32 129, label %26
  ]

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %28

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %28

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %28

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %28

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %28

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %28

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %28

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %28

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %28

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19, %18
  %29 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %30 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strlcpy(i32 %31, i8* %32, i32 4)
  %34 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %35 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 131
  br i1 %37, label %38, label %113

38:                                               ; preds = %28
  %39 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %40 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %4, align 8
  %44 = load i8**, i8*** @HDA_DEVS, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @HDA_CONFIG_DEFAULTCONF_DEVICE_MASK, align 8
  %47 = and i64 %45, %46
  %48 = load i64, i64* @HDA_CONFIG_DEFAULTCONF_DEVICE_SHIFT, align 8
  %49 = lshr i64 %47, %48
  %50 = getelementptr inbounds i8*, i8** %44, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %5, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK, align 8
  %54 = and i64 %52, %53
  %55 = load i64, i64* @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_SHIFT, align 8
  %56 = lshr i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @HDA_CONFIG_DEFAULTCONF_COLOR_MASK, align 8
  %60 = and i64 %58, %59
  %61 = load i64, i64* @HDA_CONFIG_DEFAULTCONF_COLOR_SHIFT, align 8
  %62 = lshr i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %65 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strlcat(i32 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %68 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %69 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @strlcat(i32 %70, i8* %71, i32 4)
  %73 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %74 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strlcat(i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %38
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 15
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %87 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i8**, i8*** @HDA_COLORS, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strlcat(i32 %88, i8* %93, i32 4)
  %95 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %96 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @strlcat(i32 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 4)
  br label %99

99:                                               ; preds = %85, %82, %79, %38
  %100 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %101 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i8**, i8*** @HDA_CONNS, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strlcat(i32 %102, i8* %107, i32 4)
  %109 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %110 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @strlcat(i32 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 4)
  br label %113

113:                                              ; preds = %99, %28
  ret void
}

declare dso_local i32 @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
