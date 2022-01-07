; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_chan_formula.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_chan_formula.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { %struct.TYPE_2__*, %struct.hdaa_audio_as* }
%struct.TYPE_2__ = type { i32 }
%struct.hdaa_audio_as = type { i64*, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"3.1\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"4.0\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"5.1\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"7.1\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%dch\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"+HP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*, i32, i8*, i32)* @hdaa_chan_formula to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_chan_formula(%struct.hdaa_devinfo* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hdaa_devinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdaa_audio_as*, align 8
  %10 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %5, align 8
  %12 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %11, i32 0, i32 1
  %13 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %13, i64 %15
  store %struct.hdaa_audio_as* %16, %struct.hdaa_audio_as** %9, align 8
  %17 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %5, align 8
  %18 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %9, align 8
  %21 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %106

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %9, align 8
  %39 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %44, align 1
  br label %49

45:                                               ; preds = %37
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %42
  br label %105

50:                                               ; preds = %34
  %51 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %9, align 8
  %52 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %56, i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %104

59:                                               ; preds = %50
  %60 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %9, align 8
  %61 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 5
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %9, align 8
  %66 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 17
  br i1 %68, label %69, label %73

69:                                               ; preds = %64, %59
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %70, i32 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %103

73:                                               ; preds = %64
  %74 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %9, align 8
  %75 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 7
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %9, align 8
  %80 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 19
  br i1 %82, label %83, label %87

83:                                               ; preds = %78, %73
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %84, i32 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %102

87:                                               ; preds = %78
  %88 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %9, align 8
  %89 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 23
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %93, i32 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %101

96:                                               ; preds = %87
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %97, i32 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %96, %92
  br label %102

102:                                              ; preds = %101, %83
  br label %103

103:                                              ; preds = %102, %69
  br label %104

104:                                              ; preds = %103, %55
  br label %105

105:                                              ; preds = %104, %49
  br label %106

106:                                              ; preds = %105, %30
  %107 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %9, align 8
  %108 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @strlcat(i8* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %106
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
