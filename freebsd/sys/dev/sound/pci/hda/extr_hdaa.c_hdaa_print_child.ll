; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_print_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_print_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { %struct.hdaa_audio_as* }
%struct.hdaa_audio_as = type { i64* }
%struct.hdaa_pcm_devinfo = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c" at nid \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @hdaa_print_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_print_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdaa_devinfo*, align 8
  %6 = alloca %struct.hdaa_pcm_devinfo*, align 8
  %7 = alloca %struct.hdaa_audio_as*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.hdaa_devinfo* @device_get_softc(i32 %11)
  store %struct.hdaa_devinfo* %12, %struct.hdaa_devinfo** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @device_get_ivars(i32 %13)
  %15 = inttoptr i64 %14 to %struct.hdaa_pcm_devinfo*
  store %struct.hdaa_pcm_devinfo* %15, %struct.hdaa_pcm_devinfo** %6, align 8
  store i32 1, i32* %9, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bus_print_child_header(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %25 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %2
  %29 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %5, align 8
  %30 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %29, i32 0, i32 0
  %31 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %30, align 8
  %32 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %33 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %31, i64 %34
  store %struct.hdaa_audio_as* %35, %struct.hdaa_audio_as** %7, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %66, %28
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 16
  br i1 %38, label %39, label %69

39:                                               ; preds = %36
  %40 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %7, align 8
  %41 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %66

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %54 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %7, align 8
  %55 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %53, i64 %60)
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %49, %48
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %36

69:                                               ; preds = %36
  br label %70

70:                                               ; preds = %69, %2
  %71 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %72 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp uge i64 %73, 0
  br i1 %74, label %75, label %128

75:                                               ; preds = %70
  %76 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %77 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp uge i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %86

86:                                               ; preds = %80, %75
  %87 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %5, align 8
  %88 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %87, i32 0, i32 0
  %89 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %88, align 8
  %90 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %91 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %89, i64 %92
  store %struct.hdaa_audio_as* %93, %struct.hdaa_audio_as** %7, align 8
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %124, %86
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 16
  br i1 %96, label %97, label %127

97:                                               ; preds = %94
  %98 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %7, align 8
  %99 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp sle i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %124

107:                                              ; preds = %97
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %112 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %7, align 8
  %113 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %111, i64 %118)
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %107, %106
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %94

127:                                              ; preds = %94
  br label %128

128:                                              ; preds = %127, %70
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i64 @bus_print_child_footer(i32 %129, i32 %130)
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  ret i32 %136
}

declare dso_local %struct.hdaa_devinfo* @device_get_softc(i32) #1

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local i32 @bus_print_child_header(i32, i32) #1

declare dso_local i64 @printf(i8*, ...) #1

declare dso_local i64 @bus_print_child_footer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
