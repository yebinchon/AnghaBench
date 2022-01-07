; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_eq.c_feed_eq_scan_preamp_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_eq.c_feed_eq_scan_preamp_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@FEEDEQ_PREAMP_IMIN = common dso_local global i32 0, align 4
@FEEDEQ_PREAMP_IMAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@FEEDEQ_PREAMP_FMIN = common dso_local global i32 0, align 4
@FEEDEQ_PREAMP_FMAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%c%d.%d\00", align 1
@FEEDEQ_PREAMP_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"dB\00", align 1
@FEEDEQ_GAIN_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @feed_eq_scan_preamp_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_eq_scan_preamp_arg(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [32 x i8], align 16
  store i8* %0, i8** %3, align 8
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %10 = call i32 @bzero(i8* %9, i32 32)
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @sscanf(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %5, i32* %6)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FEEDEQ_PREAMP_IMIN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @FEEDEQ_PREAMP_IMAX, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @FEEDEQ_PREAMP_SIGNMARK(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @abs(i32 %27) #3
  %29 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %24, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28)
  store i32 0, i32* %6, align 4
  br label %60

30:                                               ; preds = %19, %15, %1
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @FEEDEQ_PREAMP_IMIN, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @FEEDEQ_PREAMP_IMAX, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @FEEDEQ_PREAMP_FMIN, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @FEEDEQ_PREAMP_FMAX, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @FEEDEQ_PREAMP_SIGNMARK(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @abs(i32 %53) #3
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %50, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %54, i32 %55)
  br label %59

57:                                               ; preds = %45, %41, %37, %33, %30
  %58 = load i32, i32* @FEEDEQ_PREAMP_INVALID, align 4
  store i32 %58, i32* %2, align 4
  br label %133

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %23
  %61 = load i8*, i8** %3, align 8
  %62 = call i64 @strlen(i8* %61)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp ugt i64 %63, 2
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i8*, i8** %3, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 -2
  %70 = call i64 @strcasecmp(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %74 = call i32 @strlcat(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 32)
  br label %75

75:                                               ; preds = %72, %65, %60
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i8*, i8** %3, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 45
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  store i8 45, i8* %84, align 16
  br label %85

85:                                               ; preds = %83, %78, %75
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %87 = load i8*, i8** %3, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sge i32 %89, 48
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i8*, i8** %3, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp sle i32 %94, 57
  br label %96

96:                                               ; preds = %91, %85
  %97 = phi i1 [ false, %85 ], [ %95, %91 ]
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %86, i64 %100
  %102 = load i8*, i8** %3, align 8
  %103 = call i64 @strcasecmp(i8* %101, i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @FEEDEQ_PREAMP_INVALID, align 4
  store i32 %106, i32* %2, align 4
  br label %133

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %113, %107
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @FEEDEQ_GAIN_DIV, align 4
  %111 = sdiv i32 %109, %110
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @FEEDEQ_GAIN_DIV, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sdiv i32 %115, %114
  store i32 %116, i32* %6, align 4
  br label %108

117:                                              ; preds = %108
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %122 = load i8, i8* %121, align 16
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 45
  br label %125

125:                                              ; preds = %120, %117
  %126 = phi i1 [ true, %117 ], [ %124, %120 ]
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 -1, i32 1
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @FEEDEQ_IF2PREAMP(i32 %129, i32 %130)
  %132 = mul nsw i32 %128, %131
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %125, %105, %57
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @FEEDEQ_PREAMP_SIGNMARK(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @FEEDEQ_IF2PREAMP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
