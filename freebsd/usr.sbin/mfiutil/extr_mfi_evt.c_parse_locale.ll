; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_evt.c_parse_locale.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_evt.c_parse_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"vol\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@MFI_EVT_LOCALE_LD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"drive\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@MFI_EVT_LOCALE_PD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"encl\00", align 1
@MFI_EVT_LOCALE_ENCL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"batt\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bbu\00", align 1
@MFI_EVT_LOCALE_BBU = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"sas\00", align 1
@MFI_EVT_LOCALE_SAS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"cont\00", align 1
@MFI_EVT_LOCALE_CTRL = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@MFI_EVT_LOCALE_CONFIG = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"cluster\00", align 1
@MFI_EVT_LOCALE_CLUSTER = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@MFI_EVT_LOCALE_ALL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*)* @parse_locale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_locale(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strncasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strcasecmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %2
  %16 = load i64, i64* @MFI_EVT_LOCALE_LD, align 8
  %17 = load i64*, i64** %5, align 8
  store i64 %16, i64* %17, align 8
  store i32 0, i32* %3, align 4
  br label %104

18:                                               ; preds = %11
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strncasecmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strcasecmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %18
  %27 = load i64, i64* @MFI_EVT_LOCALE_PD, align 8
  %28 = load i64*, i64** %5, align 8
  store i64 %27, i64* %28, align 8
  store i32 0, i32* %3, align 4
  br label %104

29:                                               ; preds = %22
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strncasecmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* @MFI_EVT_LOCALE_ENCL, align 8
  %35 = load i64*, i64** %5, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %3, align 4
  br label %104

36:                                               ; preds = %29
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @strncasecmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strncasecmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %36
  %45 = load i64, i64* @MFI_EVT_LOCALE_BBU, align 8
  %46 = load i64*, i64** %5, align 8
  store i64 %45, i64* %46, align 8
  store i32 0, i32* %3, align 4
  br label %104

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @strcasecmp(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i64, i64* @MFI_EVT_LOCALE_SAS, align 8
  %53 = load i64*, i64** %5, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %3, align 4
  br label %104

54:                                               ; preds = %47
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 @strcasecmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** %4, align 8
  %60 = call i64 @strncasecmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %54
  %63 = load i64, i64* @MFI_EVT_LOCALE_CTRL, align 8
  %64 = load i64*, i64** %5, align 8
  store i64 %63, i64* %64, align 8
  store i32 0, i32* %3, align 4
  br label %104

65:                                               ; preds = %58
  %66 = load i8*, i8** %4, align 8
  %67 = call i64 @strcasecmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i64, i64* @MFI_EVT_LOCALE_CONFIG, align 8
  %71 = load i64*, i64** %5, align 8
  store i64 %70, i64* %71, align 8
  store i32 0, i32* %3, align 4
  br label %104

72:                                               ; preds = %65
  %73 = load i8*, i8** %4, align 8
  %74 = call i64 @strcasecmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i64, i64* @MFI_EVT_LOCALE_CLUSTER, align 8
  %78 = load i64*, i64** %5, align 8
  store i64 %77, i64* %78, align 8
  store i32 0, i32* %3, align 4
  br label %104

79:                                               ; preds = %72
  %80 = load i8*, i8** %4, align 8
  %81 = call i64 @strcasecmp(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i64, i64* @MFI_EVT_LOCALE_ALL, align 8
  %85 = load i64*, i64** %5, align 8
  store i64 %84, i64* %85, align 8
  store i32 0, i32* %3, align 4
  br label %104

86:                                               ; preds = %79
  %87 = load i8*, i8** %4, align 8
  %88 = call i64 @strtol(i8* %87, i8** %6, i32 0)
  store i64 %88, i64* %7, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %86
  %94 = load i64, i64* %7, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %7, align 8
  %98 = icmp sgt i64 %97, 65535
  br i1 %98, label %99, label %101

99:                                               ; preds = %96, %93, %86
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %104

101:                                              ; preds = %96
  %102 = load i64, i64* %7, align 8
  %103 = load i64*, i64** %5, align 8
  store i64 %102, i64* %103, align 8
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %99, %83, %76, %69, %62, %51, %44, %33, %26, %15
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
