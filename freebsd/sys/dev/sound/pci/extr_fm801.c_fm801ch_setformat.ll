; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801ch_setformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801ch_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801_chinfo = type { i64, %struct.fm801_info* }
%struct.fm801_info = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"fm801ch_setformat 0x%x : %s, %s, %s, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@AFMT_16BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"16bit\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"8bit\00", align 1
@AFMT_SIGNED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@AFMT_BIGENDIAN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"bigendiah\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"littleendian\00", align 1
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@FM_PLAY_STEREO = common dso_local global i32 0, align 4
@FM_PLAY_16BIT = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i64 0, align 8
@FM_REC_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @fm801ch_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm801ch_setformat(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fm801_chinfo*, align 8
  %9 = alloca %struct.fm801_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.fm801_chinfo*
  store %struct.fm801_chinfo* %11, %struct.fm801_chinfo** %8, align 8
  %12 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %8, align 8
  %13 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %12, i32 0, i32 1
  %14 = load %struct.fm801_info*, %struct.fm801_info** %13, align 8
  store %struct.fm801_info* %14, %struct.fm801_info** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @AFMT_CHANNEL(i32 %16)
  %18 = icmp sgt i32 %17, 1
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @AFMT_16BIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @AFMT_SIGNED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @AFMT_BIGENDIAN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)
  %39 = call i32 @DPRINT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %20, i8* %26, i8* %32, i8* %38)
  %40 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %8, align 8
  %41 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCMDIR_PLAY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %3
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @AFMT_CHANNEL(i32 %46)
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @FM_PLAY_STEREO, align 4
  br label %52

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %55 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @AFMT_16BIT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @FM_PLAY_16BIT, align 4
  br label %63

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %66 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %100

69:                                               ; preds = %3
  %70 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %8, align 8
  %71 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PCMDIR_REC, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @AFMT_CHANNEL(i32 %76)
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @FM_REC_STEREO, align 4
  br label %82

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %85 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @AFMT_16BIT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @FM_PLAY_16BIT, align 4
  br label %93

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = load %struct.fm801_info*, %struct.fm801_info** %9, align 8
  %96 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  store i32 0, i32* %4, align 4
  br label %100

99:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %93, %63
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @DPRINT(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
