; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_chat_expect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_chat_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"HANGUP\00", align 1
@hup_next = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ABORT\00", align 1
@abort_next = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"CLR_ABORT\00", align 1
@clear_abort_next = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@report_next = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"CLR_REPORT\00", align 1
@clear_report_next = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"TIMEOUT\00", align 1
@timeout_next = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"ECHO\00", align 1
@echo_next = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"SAY\00", align 1
@say_next = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@exit_code = common dso_local global i32 0, align 4
@fail_reason = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"Failed (%s)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chat_expect(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @hup_next, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @hup_next, align 4
  br label %95

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @abort_next, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @abort_next, align 4
  br label %95

18:                                               ; preds = %11
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @clear_abort_next, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @clear_abort_next, align 4
  br label %95

25:                                               ; preds = %18
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @report_next, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @report_next, align 4
  br label %95

32:                                               ; preds = %25
  %33 = load i8*, i8** %2, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @clear_report_next, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @clear_report_next, align 4
  br label %95

39:                                               ; preds = %32
  %40 = load i8*, i8** %2, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @timeout_next, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @timeout_next, align 4
  br label %95

46:                                               ; preds = %39
  %47 = load i8*, i8** %2, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @echo_next, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @echo_next, align 4
  br label %95

53:                                               ; preds = %46
  %54 = load i8*, i8** %2, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @say_next, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @say_next, align 4
  br label %95

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i8*, i8** %2, align 8
  %63 = call i8* @expect_strtok(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i8* %63, i8** %3, align 8
  store i8* null, i8** %2, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %95

67:                                               ; preds = %61
  %68 = load i8*, i8** %2, align 8
  %69 = call i8* @expect_strtok(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i8* %69, i8** %4, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = call i64 @get_string(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %95

74:                                               ; preds = %67
  %75 = load i8*, i8** %4, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @exit_code, align 4
  %79 = icmp ne i32 %78, 3
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %74
  br label %84

81:                                               ; preds = %77
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @chat_send(i8* %82)
  br label %61

84:                                               ; preds = %80
  %85 = load i64, i64* @fail_reason, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, i64* @fail_reason, align 8
  %89 = call i32 (i8*, ...) @chat_logf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 %88)
  br label %92

90:                                               ; preds = %84
  %91 = call i32 (i8*, ...) @chat_logf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32, i32* @exit_code, align 4
  %94 = call i32 @terminate(i32 %93)
  br label %95

95:                                               ; preds = %92, %73, %66, %57, %50, %43, %36, %29, %22, %15, %8
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @expect_strtok(i8*, i8*) #1

declare dso_local i64 @get_string(i8*) #1

declare dso_local i32 @chat_send(i8*) #1

declare dso_local i32 @chat_logf(i8*, ...) #1

declare dso_local i32 @terminate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
