; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_child_location_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_child_location_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { %struct.hdaa_audio_as* }
%struct.hdaa_audio_as = type { i64* }
%struct.hdaa_pcm_devinfo = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"nid=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64)* @hdaa_child_location_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_child_location_str(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hdaa_devinfo*, align 8
  %10 = alloca %struct.hdaa_pcm_devinfo*, align 8
  %11 = alloca %struct.hdaa_audio_as*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.hdaa_devinfo* @device_get_softc(i32 %15)
  store %struct.hdaa_devinfo* %16, %struct.hdaa_devinfo** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @device_get_ivars(i32 %17)
  %19 = inttoptr i64 %18 to %struct.hdaa_pcm_devinfo*
  store %struct.hdaa_pcm_devinfo* %19, %struct.hdaa_pcm_devinfo** %10, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %14, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 %24, %26
  %28 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %23, i64 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %14, align 4
  %33 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %10, align 8
  %34 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp uge i64 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %4
  %38 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %9, align 8
  %39 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %38, i32 0, i32 0
  %40 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %39, align 8
  %41 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %10, align 8
  %42 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %40, i64 %43
  store %struct.hdaa_audio_as* %44, %struct.hdaa_audio_as** %11, align 8
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %83, %37
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 16
  br i1 %47, label %48, label %86

48:                                               ; preds = %45
  %49 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %11, align 8
  %50 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %83

58:                                               ; preds = %48
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 %63, %65
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %71 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %11, align 8
  %72 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %62, i64 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %70, i64 %77)
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %58, %57
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %45

86:                                               ; preds = %45
  br label %87

87:                                               ; preds = %86, %4
  %88 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %10, align 8
  %89 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp uge i64 %90, 0
  br i1 %91, label %92, label %142

92:                                               ; preds = %87
  %93 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %9, align 8
  %94 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %93, i32 0, i32 0
  %95 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %94, align 8
  %96 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %10, align 8
  %97 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %95, i64 %98
  store %struct.hdaa_audio_as* %99, %struct.hdaa_audio_as** %11, align 8
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %138, %92
  %101 = load i32, i32* %13, align 4
  %102 = icmp slt i32 %101, 16
  br i1 %102, label %103, label %141

103:                                              ; preds = %100
  %104 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %11, align 8
  %105 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp sle i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %138

113:                                              ; preds = %103
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i64, i64* %8, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = sub i64 %118, %120
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %126 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %11, align 8
  %127 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %117, i64 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %125, i64 %132)
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %138

138:                                              ; preds = %113, %112
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %100

141:                                              ; preds = %100
  br label %142

142:                                              ; preds = %141, %87
  ret i32 0
}

declare dso_local %struct.hdaa_devinfo* @device_get_softc(i32) #1

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
