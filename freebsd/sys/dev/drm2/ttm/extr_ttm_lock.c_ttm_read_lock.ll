; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c_ttm_read_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c_ttm_read_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i32 }

@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ttmri\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ttmr\00", align 1
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_read_lock(%struct.ttm_lock* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_lock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @PCATCH, align 4
  store i32 %11, i32* %6, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %13

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %13

13:                                               ; preds = %12, %10
  %14 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %15 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  br label %17

17:                                               ; preds = %46, %13
  %18 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %19 = call i32 @__ttm_read_lock(%struct.ttm_lock* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %24 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %25 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @msleep(%struct.ttm_lock* %23, i32* %25, i32 %26, i8* %27, i32 0)
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @EINTR, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ERESTART, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %22
  %40 = load i32, i32* @ERESTARTSYS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %47

46:                                               ; preds = %42
  br label %17

47:                                               ; preds = %45, %17
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @__ttm_read_lock(%struct.ttm_lock*) #1

declare dso_local i32 @msleep(%struct.ttm_lock*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
