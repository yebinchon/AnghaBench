; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_v3451.c_expect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_v3451.c_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ON LINE\00", align 1
@DIALTIMEOUT = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@alarmtr = common dso_local global i32 0, align 4
@Sjbuf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"FAILED CALL\00", align 1
@FD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expect(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [300 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = getelementptr inbounds [300 x i8], [300 x i8]* %4, i64 0, i64 0
  store i8* %8, i8** %5, align 8
  store i32 30, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %78

13:                                               ; preds = %1
  %14 = load i8*, i8** %5, align 8
  store i8 0, i8* %14, align 1
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* @DIALTIMEOUT, align 4
  %23 = call i32 @value(i32 %22)
  %24 = call i32 @number(i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %13
  %26 = load i32, i32* @SIGALRM, align 4
  %27 = load i32, i32* @alarmtr, align 4
  %28 = call i32 @signal(i32 %26, i32 %27)
  %29 = load i32, i32* @Sjbuf, align 4
  %30 = call i64 @setjmp(i32 %29) #3
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %78

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @alarm(i32 %34)
  br label %36

36:                                               ; preds = %74, %33
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds [300 x i8], [300 x i8]* %4, i64 0, i64 0
  %39 = call i64 @notin(i8* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds [300 x i8], [300 x i8]* %4, i64 0, i64 0
  %44 = getelementptr inbounds i8, i8* %43, i64 300
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = icmp ult i8* %42, %45
  br label %47

47:                                               ; preds = %41, %36
  %48 = phi i1 [ false, %36 ], [ %46, %41 ]
  br i1 %48, label %49, label %76

49:                                               ; preds = %47
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = getelementptr inbounds [300 x i8], [300 x i8]* %4, i64 0, i64 0
  %54 = call i64 @notin(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %78

57:                                               ; preds = %52, %49
  %58 = load i32, i32* @FD, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @read(i32 %58, i8* %59, i32 1)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @alarm(i32 0)
  store i32 0, i32* %2, align 4
  br label %78

64:                                               ; preds = %57
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = and i32 %67, 127
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  br label %74

74:                                               ; preds = %71, %64
  %75 = load i8*, i8** %5, align 8
  store i8 0, i8* %75, align 1
  br label %36

76:                                               ; preds = %47
  %77 = call i32 @alarm(i32 0)
  store i32 1, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %62, %56, %32, %12
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @number(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @signal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @alarm(i32) #1

declare dso_local i64 @notin(i8*, i8*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
