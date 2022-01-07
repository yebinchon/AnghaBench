; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_evt.c_parse_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_evt.c_parse_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@MFI_EVT_CLASS_DEBUG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"prog\00", align 1
@MFI_EVT_CLASS_PROGRESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@MFI_EVT_CLASS_INFO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@MFI_EVT_CLASS_WARNING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"crit\00", align 1
@MFI_EVT_CLASS_CRITICAL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"fatal\00", align 1
@MFI_EVT_CLASS_FATAL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@MFI_EVT_CLASS_DEAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*)* @parse_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_class(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strcasecmp(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* @MFI_EVT_CLASS_DEBUG, align 8
  %13 = load i64*, i64** %5, align 8
  store i64 %12, i64* %13, align 8
  store i32 0, i32* %3, align 4
  br label %74

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strncasecmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, i64* @MFI_EVT_CLASS_PROGRESS, align 8
  %20 = load i64*, i64** %5, align 8
  store i64 %19, i64* %20, align 8
  store i32 0, i32* %3, align 4
  br label %74

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strncasecmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* @MFI_EVT_CLASS_INFO, align 8
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  store i32 0, i32* %3, align 4
  br label %74

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strncasecmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* @MFI_EVT_CLASS_WARNING, align 8
  %34 = load i64*, i64** %5, align 8
  store i64 %33, i64* %34, align 8
  store i32 0, i32* %3, align 4
  br label %74

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @strncasecmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, i64* @MFI_EVT_CLASS_CRITICAL, align 8
  %41 = load i64*, i64** %5, align 8
  store i64 %40, i64* %41, align 8
  store i32 0, i32* %3, align 4
  br label %74

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @strcasecmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* @MFI_EVT_CLASS_FATAL, align 8
  %48 = load i64*, i64** %5, align 8
  store i64 %47, i64* %48, align 8
  store i32 0, i32* %3, align 4
  br label %74

49:                                               ; preds = %42
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @strcasecmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i64, i64* @MFI_EVT_CLASS_DEAD, align 8
  %55 = load i64*, i64** %5, align 8
  store i64 %54, i64* %55, align 8
  store i32 0, i32* %3, align 4
  br label %74

56:                                               ; preds = %49
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @strtol(i8* %57, i8** %6, i32 0)
  store i64 %58, i64* %7, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %56
  %64 = load i64, i64* %7, align 8
  %65 = icmp slt i64 %64, -128
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %7, align 8
  %68 = icmp sgt i64 %67, 127
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %63, %56
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %74

71:                                               ; preds = %66
  %72 = load i64, i64* %7, align 8
  %73 = load i64*, i64** %5, align 8
  store i64 %72, i64* %73, align 8
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %69, %53, %46, %39, %32, %25, %18, %11
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
