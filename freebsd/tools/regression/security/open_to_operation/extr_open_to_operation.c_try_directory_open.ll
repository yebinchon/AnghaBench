; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_try_directory_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_try_directory_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"opened\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"wrong errno\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @try_directory_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_directory_open(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @open(i8* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @notok_mode(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %26

22:                                               ; preds = %15
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ok_mode(i8* %23, i32* null, i32 %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @close(i32 %27)
  br label %53

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ok_mode(i8* %37, i32* null, i32 %38)
  br label %52

40:                                               ; preds = %32, %29
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @notok_mode(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %51

47:                                               ; preds = %40
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @notok_mode(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %26
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @notok_mode(i8*, i8*, i32) #1

declare dso_local i32 @ok_mode(i8*, i32*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
