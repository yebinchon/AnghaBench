; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_evt.c_parse_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_evt.c_parse_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_evt_log_state = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"newest\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"oldest\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_evt_log_state*, i8*, i64*)* @parse_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_seq(%struct.mfi_evt_log_state* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mfi_evt_log_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.mfi_evt_log_state* %0, %struct.mfi_evt_log_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strcasecmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.mfi_evt_log_state*, %struct.mfi_evt_log_state** %5, align 8
  %15 = getelementptr inbounds %struct.mfi_evt_log_state, %struct.mfi_evt_log_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %7, align 8
  store i64 %16, i64* %17, align 8
  store i32 0, i32* %4, align 4
  br label %69

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strcasecmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.mfi_evt_log_state*, %struct.mfi_evt_log_state** %5, align 8
  %24 = getelementptr inbounds %struct.mfi_evt_log_state, %struct.mfi_evt_log_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  store i32 0, i32* %4, align 4
  br label %69

27:                                               ; preds = %18
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.mfi_evt_log_state*, %struct.mfi_evt_log_state** %5, align 8
  %33 = getelementptr inbounds %struct.mfi_evt_log_state, %struct.mfi_evt_log_state* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %4, align 4
  br label %69

36:                                               ; preds = %27
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strcasecmp(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.mfi_evt_log_state*, %struct.mfi_evt_log_state** %5, align 8
  %42 = getelementptr inbounds %struct.mfi_evt_log_state, %struct.mfi_evt_log_state* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  store i32 0, i32* %4, align 4
  br label %69

45:                                               ; preds = %36
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strcasecmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.mfi_evt_log_state*, %struct.mfi_evt_log_state** %5, align 8
  %51 = getelementptr inbounds %struct.mfi_evt_log_state, %struct.mfi_evt_log_state* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %4, align 4
  br label %69

54:                                               ; preds = %45
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @strtol(i8* %55, i8** %8, i32 0)
  store i64 %56, i64* %9, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %9, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61, %54
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %69

66:                                               ; preds = %61
  %67 = load i64, i64* %9, align 8
  %68 = load i64*, i64** %7, align 8
  store i64 %67, i64* %68, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %64, %49, %40, %31, %22, %13
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
