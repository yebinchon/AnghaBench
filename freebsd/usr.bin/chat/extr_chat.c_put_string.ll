; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_put_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_put_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quiet = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"send (%v)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"??????\00", align 1
@timeout = common dso_local global i32 0, align 4
@alarmed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @put_string(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64 0, i64* @quiet, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i8* @clean(i8* %5, i32 1)
  store i8* %6, i8** %3, align 8
  %7 = load i64, i64* @verbose, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i64, i64* @quiet, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %15

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %12 ], [ %14, %13 ]
  %17 = call i32 @chat_logf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* @timeout, align 4
  %20 = call i32 @alarm(i32 %19)
  store i64 0, i64* @alarmed, align 8
  br label %21

21:                                               ; preds = %56, %37, %18
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  %28 = load i8, i8* %26, align 1
  store i8 %28, i8* %4, align 1
  %29 = load i8, i8* %4, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 92
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i8, i8* %4, align 1
  %34 = call i32 @write_char(i8 signext %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %59

37:                                               ; preds = %32
  br label %21

38:                                               ; preds = %25
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  %41 = load i8, i8* %39, align 1
  store i8 %41, i8* %4, align 1
  %42 = load i8, i8* %4, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %50 [
    i32 100, label %44
    i32 75, label %46
    i32 112, label %48
  ]

44:                                               ; preds = %38
  %45 = call i32 @sleep(i32 1)
  br label %56

46:                                               ; preds = %38
  %47 = call i32 (...) @break_sequence()
  br label %56

48:                                               ; preds = %38
  %49 = call i32 @usleep(i32 10000)
  br label %56

50:                                               ; preds = %38
  %51 = load i8, i8* %4, align 1
  %52 = call i32 @write_char(i8 signext %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %59

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %48, %46, %44
  br label %21

57:                                               ; preds = %21
  %58 = call i32 @alarm(i32 0)
  store i64 0, i64* @alarmed, align 8
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %54, %36
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i8* @clean(i8*, i32) #1

declare dso_local i32 @chat_logf(i8*, i8*) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @write_char(i8 signext) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @break_sequence(...) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
