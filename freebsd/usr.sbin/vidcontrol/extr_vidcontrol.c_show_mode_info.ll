; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_show_mode_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_show_mode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_info = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [78 x i8] c"    mode#     flags   type    size       font      window      linear buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"------------------------------------------------------------------------------\0A\00", align 1
@M_VESA_MODE_MAX = common dso_local global i32 0, align 4
@CONS_MODEINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%3d (0x%03x)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" 0x%08x\00", align 1
@V_INFO_GRAPHICS = common dso_local global i32 0, align 4
@V_INFO_MM_PLANAR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"%dx%dx%d %d\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%dx%dx%d %c\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" %c %-15s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %-5s\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c" 0x%05zx %2dk %2dk\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c" 0x%08zx %dk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_mode_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_mode_info() #0 {
  %1 = alloca [80 x i8], align 16
  %2 = alloca %struct.video_info, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @memset(%struct.video_info* %2, i32 0, i32 96)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %128, %0
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @M_VESA_MODE_MAX, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %131

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @CONS_MODEINFO, align 4
  %17 = call i64 @ioctl(i32 0, i32 %16, %struct.video_info* %2)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %128

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %128

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %128

43:                                               ; preds = %38, %34, %30, %26
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @V_INFO_GRAPHICS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %43
  store i32 71, i32* %3, align 4
  %56 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @V_INFO_MM_PLANAR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %62 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, i32, i8*, i64, i64, ...) @snprintf(i8* %61, i32 80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %63, i64 %65, i32 %67, i32 %69)
  br label %90

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %79 [
    i32 129, label %74
    i32 131, label %75
    i32 132, label %76
    i32 130, label %77
    i32 128, label %78
  ]

74:                                               ; preds = %71
  store i32 80, i32* %4, align 4
  br label %80

75:                                               ; preds = %71
  store i32 68, i32* %4, align 4
  br label %80

76:                                               ; preds = %71
  store i32 67, i32* %4, align 4
  br label %80

77:                                               ; preds = %71
  store i32 72, i32* %4, align 4
  br label %80

78:                                               ; preds = %71
  store i32 86, i32* %4, align 4
  br label %80

79:                                               ; preds = %71
  store i32 32, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %78, %77, %76, %75, %74
  %81 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %82 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (i8*, i32, i8*, i64, i64, ...) @snprintf(i8* %81, i32 80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %83, i64 %85, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %80, %60
  br label %98

91:                                               ; preds = %43
  store i32 84, i32* %3, align 4
  %92 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %93 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i8*, i32, i8*, i64, i64, ...) @snprintf(i8* %92, i32 80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %94, i64 %96)
  br label %98

98:                                               ; preds = %91, %90
  %99 = load i32, i32* %3, align 4
  %100 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %99, i8* %100)
  %102 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %103 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i8*, i32, i8*, i64, i64, ...) @snprintf(i8* %102, i32 80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %104, i64 %106)
  %108 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %108)
  %110 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 13
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 12
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = sdiv i32 %114, 1024
  %116 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 11
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = sdiv i32 %118, 1024
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %111, i32 %115, i32 %119)
  %121 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 9
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.video_info, %struct.video_info* %2, i32 0, i32 10
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = sdiv i32 %125, 1024
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %122, i32 %126)
  br label %128

128:                                              ; preds = %98, %42, %25, %19
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %9

131:                                              ; preds = %9
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(%struct.video_info*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.video_info*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
