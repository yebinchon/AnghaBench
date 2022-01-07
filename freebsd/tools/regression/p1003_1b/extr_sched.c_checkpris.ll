; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/p1003_1b/extr_sched.c_checkpris.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/p1003_1b/extr_sched.c_checkpris.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"sched_get_priority_min\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"sched_get_priority_max\00", align 1
@stderr = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Illegal priority range for %s: %d to %d\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"%12s: sched_min %2d sched_max %2d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @checkpris to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkpris(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* @errno, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @sched_get_priority_min(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i64, i64* @errno, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @quit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8, %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @sched_get_priority_max(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i64, i64* @errno, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @quit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17, %13
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %23, %24
  %26 = add nsw i32 %25, 1
  %27 = icmp slt i32 %26, 32
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %22
  %33 = load i64, i64* @stderr, align 8
  %34 = load i32, i32* %2, align 4
  %35 = call i8* @sched_text(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @fprintf(i64 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %35, i32 %36, i32 %37)
  %39 = call i32 @exit(i32 -1) #3
  unreachable

40:                                               ; preds = %28
  %41 = load i64, i64* @verbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i64, i64* @verbose, align 8
  %45 = load i32, i32* %2, align 4
  %46 = call i8* @sched_text(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @fprintf(i64 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %40
  ret void
}

declare dso_local i32 @sched_get_priority_min(i32) #1

declare dso_local i32 @quit(i8*) #1

declare dso_local i32 @sched_get_priority_max(i32) #1

declare dso_local i32 @fprintf(i64, i8*, i8*, i32, i32) #1

declare dso_local i8* @sched_text(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
