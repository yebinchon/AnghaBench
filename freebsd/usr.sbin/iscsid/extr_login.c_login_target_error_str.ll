; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_target_error_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_target_error_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@login_target_error_str.msg = internal global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [25 x i8] c"Target moved temporarily\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Target moved permanently\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"unknown redirection; Status-Class 0x%x, Status-Detail 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Initiator error\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Authentication failure\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Authorization failure\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Not found\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Target removed\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Unsupported version\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Too many connections\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Missing parameter\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Can't include in session\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Session type not supported\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Session does not exist\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Invalid during login\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"unknown initiator error; Status-Class 0x%x, Status-Detail 0x%x\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Target error\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Service unavailable\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Out of resources\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"unknown target error; Status-Class 0x%x, Status-Detail 0x%x\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"unknown error; Status-Class 0x%x, Status-Detail 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @login_target_error_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @login_target_error_str(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %42 [
    i32 1, label %7
    i32 2, label %15
    i32 3, label %33
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %11 [
    i32 1, label %9
    i32 2, label %10
  ]

9:                                                ; preds = %7
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %46

10:                                               ; preds = %7
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %46

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @login_target_error_str.msg, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32 %13)
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @login_target_error_str.msg, i64 0, i64 0), i8** %3, align 8
  br label %46

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %29 [
    i32 0, label %17
    i32 1, label %18
    i32 2, label %19
    i32 3, label %20
    i32 4, label %21
    i32 5, label %22
    i32 6, label %23
    i32 7, label %24
    i32 8, label %25
    i32 9, label %26
    i32 10, label %27
    i32 11, label %28
  ]

17:                                               ; preds = %15
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %46

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %46

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %46

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %46

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %46

22:                                               ; preds = %15
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %46

23:                                               ; preds = %15
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %46

24:                                               ; preds = %15
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %46

25:                                               ; preds = %15
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %46

26:                                               ; preds = %15
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %46

27:                                               ; preds = %15
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %46

28:                                               ; preds = %15
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %46

29:                                               ; preds = %15
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @login_target_error_str.msg, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i64 0, i64 0), i32 %30, i32 %31)
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @login_target_error_str.msg, i64 0, i64 0), i8** %3, align 8
  br label %46

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %38 [
    i32 0, label %35
    i32 1, label %36
    i32 2, label %37
  ]

35:                                               ; preds = %33
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %46

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %46

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @login_target_error_str.msg, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i64 0, i64 0), i32 %39, i32 %40)
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @login_target_error_str.msg, i64 0, i64 0), i8** %3, align 8
  br label %46

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @login_target_error_str.msg, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0), i32 %43, i32 %44)
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @login_target_error_str.msg, i64 0, i64 0), i8** %3, align 8
  br label %46

46:                                               ; preds = %42, %38, %37, %36, %35, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %11, %10, %9
  %47 = load i8*, i8** %3, align 8
  ret i8* %47
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
