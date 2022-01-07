; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/balloon/extr_balloon.c_balloon_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/balloon/extr_balloon.c_balloon_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@balloon_mutex = common dso_local global i32 0, align 4
@bs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"balloon\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @balloon_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balloon_process(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 @mtx_lock(i32* @balloon_mutex)
  br label %7

7:                                                ; preds = %45, %1
  br label %8

8:                                                ; preds = %36, %7
  %9 = call i64 (...) @current_target()
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bs, i32 0, i32 0), align 8
  %11 = sub nsw i64 %9, %10
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @increase_reservation(i64 %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %8
  %20 = load i64, i64* %4, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i64, i64* %4, align 8
  %24 = sub nsw i64 0, %23
  %25 = call i64 @decrease_reservation(i64 %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %19
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %8, label %38

38:                                               ; preds = %36
  %39 = call i64 (...) @current_target()
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bs, i32 0, i32 0), align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @hz, align 4
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @msleep(void (i8*)* @balloon_process, i32* @balloon_mutex, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %7
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @current_target(...) #1

declare dso_local i64 @increase_reservation(i64) #1

declare dso_local i64 @decrease_reservation(i64) #1

declare dso_local i32 @msleep(void (i8*)*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
