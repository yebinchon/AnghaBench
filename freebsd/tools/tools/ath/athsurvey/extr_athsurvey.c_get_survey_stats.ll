; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athsurvey/extr_athsurvey.c_get_survey_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athsurvey/extr_athsurvey.c_get_survey_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_diag = type { i32, i32, i32, i64, i32*, i64 }

@HAL_DIAG_CHANSURVEY = common dso_local global i32 0, align 4
@ATH_DIAG_OUT = common dso_local global i32 0, align 4
@SIOCGATHDIAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ioctl: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*)* @get_survey_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_survey_stats(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_diag, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i32 @memset(%struct.ath_diag* %9, i8 signext 0, i32 40)
  %11 = load i32, i32* @HAL_DIAG_CHANSURVEY, align 4
  %12 = load i32, i32* @ATH_DIAG_OUT, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %9, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %9, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %9, i32 0, i32 4
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %9, i32 0, i32 1
  store i32 4, i32* %17, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = ptrtoint i32* %18 to i64
  %20 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %9, i32 0, i32 3
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %9, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strncpy(i32 %22, i8* %23, i32 4)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SIOCGATHDIAG, align 4
  %27 = call i64 @ioctl(i32 %25, i32 %26, %struct.ath_diag* %9)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %9, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %4, align 4
  br label %34

33:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.ath_diag*, i8 signext, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ath_diag*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
