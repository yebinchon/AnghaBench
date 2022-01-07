; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/w/extr_pr_time.c_pr_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/w/extr_pr_time.c_pr_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c" {:idle/%dday%s} \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c" {:idle/%2d:%02d/} \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"     - \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"    {:idle/%2d} \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pr_idle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 129600
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = sdiv i32 %8, 86400
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 1
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %10, i8* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 100
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  store i32 2, i32* %2, align 4
  br label %47

19:                                               ; preds = %7
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 10
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %47

23:                                               ; preds = %19
  br label %46

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = icmp sge i32 %25, 3600
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = sdiv i32 %28, 3600
  %30 = load i32, i32* %3, align 4
  %31 = srem i32 %30, 3600
  %32 = sdiv i32 %31, 60
  %33 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 %32)
  br label %45

34:                                               ; preds = %24
  %35 = load i32, i32* %3, align 4
  %36 = sdiv i32 %35, 60
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = sdiv i32 %41, 60
  %43 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %38
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %45, %23
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %22, %18
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @xo_emit(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
