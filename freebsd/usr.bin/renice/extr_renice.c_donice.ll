; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/renice/extr_renice.c_donice.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/renice/extr_renice.c_donice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%d: getpriority\00", align 1
@PRIO_MAX = common dso_local global i32 0, align 4
@PRIO_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%d: setpriority\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%d: old priority %d, new priority %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @donice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @donice(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* @errno, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @getpriority(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i64, i64* @errno, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 1, i32* %5, align 4
  br label %56

22:                                               ; preds = %16, %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @PRIO_MAX, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @PRIO_MAX, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PRIO_MIN, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @PRIO_MIN, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @setpriority(i32 %42, i32 %43, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 1, i32* %5, align 4
  br label %56

50:                                               ; preds = %41
  %51 = load i32, i32* @stderr, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %50, %47, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @getpriority(i32, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i64 @setpriority(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
