; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athspectral/extr_athspectral.c_spectral_set_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athspectral/extr_athspectral.c_spectral_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spectralhandler = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ss_short_report\00", align 1
@SPECTRAL_PARAM_SS_SHORT_RPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ss_fft_period\00", align 1
@SPECTRAL_PARAM_FFT_PERIOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ss_period\00", align 1
@SPECTRAL_PARAM_SS_PERIOD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ss_count\00", align 1
@SPECTRAL_PARAM_SS_COUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"ss_spectral_pri\00", align 1
@SPECTRAL_PARAM_SS_SPECTRAL_PRI = common dso_local global i32 0, align 4
@DFS_PARAM_BLOCKRADAR = common dso_local global i32 0, align 4
@DFS_PARAM_ENABLE = common dso_local global i32 0, align 4
@DFS_PARAM_EN_EXTCH = common dso_local global i32 0, align 4
@DFS_PARAM_FIRPWR = common dso_local global i32 0, align 4
@DFS_PARAM_HEIGHT = common dso_local global i32 0, align 4
@DFS_PARAM_INBAND = common dso_local global i32 0, align 4
@DFS_PARAM_MAXLEN = common dso_local global i32 0, align 4
@DFS_PARAM_MAXRSSI_EN = common dso_local global i32 0, align 4
@DFS_PARAM_PRSSI = common dso_local global i32 0, align 4
@DFS_PARAM_RELPWR = common dso_local global i32 0, align 4
@DFS_PARAM_RELPWR_EN = common dso_local global i32 0, align 4
@DFS_PARAM_RELSTEP = common dso_local global i32 0, align 4
@DFS_PARAM_RELSTEP_EN = common dso_local global i32 0, align 4
@DFS_PARAM_RRSSI = common dso_local global i32 0, align 4
@DFS_PARAM_USEFIR128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spectralhandler*, i8*, i8*)* @spectral_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spectral_set_param(%struct.spectralhandler* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spectralhandler*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.spectralhandler* %0, %struct.spectralhandler** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call i32 @atoi(i8* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.spectralhandler*, %struct.spectralhandler** %5, align 8
  %16 = load i32, i32* @SPECTRAL_PARAM_SS_SHORT_RPT, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @spectralset(%struct.spectralhandler* %15, i32 %16, i32 %17)
  br label %60

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.spectralhandler*, %struct.spectralhandler** %5, align 8
  %25 = load i32, i32* @SPECTRAL_PARAM_FFT_PERIOD, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @spectralset(%struct.spectralhandler* %24, i32 %25, i32 %26)
  br label %59

28:                                               ; preds = %19
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.spectralhandler*, %struct.spectralhandler** %5, align 8
  %34 = load i32, i32* @SPECTRAL_PARAM_SS_PERIOD, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @spectralset(%struct.spectralhandler* %33, i32 %34, i32 %35)
  br label %58

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.spectralhandler*, %struct.spectralhandler** %5, align 8
  %43 = load i32, i32* @SPECTRAL_PARAM_SS_COUNT, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @spectralset(%struct.spectralhandler* %42, i32 %43, i32 %44)
  br label %57

46:                                               ; preds = %37
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.spectralhandler*, %struct.spectralhandler** %5, align 8
  %52 = load i32, i32* @SPECTRAL_PARAM_SS_SPECTRAL_PRI, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @spectralset(%struct.spectralhandler* %51, i32 %52, i32 %53)
  br label %56

55:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %61

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %41
  br label %58

58:                                               ; preds = %57, %32
  br label %59

59:                                               ; preds = %58, %23
  br label %60

60:                                               ; preds = %59, %14
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @spectralset(%struct.spectralhandler*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
