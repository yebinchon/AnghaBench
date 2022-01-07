; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_timedwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_timedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"clock_gettime(CLOCK_REALTIME)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ksem_timedwait\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ksem_timedwait() didn't fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @timedwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timedwait(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timespec, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @CLOCK_REALTIME, align 4
  %13 = call i64 @clock_gettime(i32 %12, %struct.timespec* %10)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 @fail_errno(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %60

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = sdiv i32 %18, 1000
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = srem i32 %21, 1000
  %23 = mul nsw i32 %22, 1000000
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = call i32 @timespecadd(%struct.timespec* %11, %struct.timespec* %10, %struct.timespec* %11)
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @ksem_timedwait(i32 %26, %struct.timespec* %11)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %17
  %30 = load i32, i32* @errno, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @fail_errno(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %60

35:                                               ; preds = %29
  br label %42

36:                                               ; preds = %17
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @fail_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %60

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* @CLOCK_REALTIME, align 4
  %44 = call i64 @clock_gettime(i32 %43, %struct.timespec* %11)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @fail_errno(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %60

48:                                               ; preds = %42
  %49 = call i32 @timespecsub(%struct.timespec* %11, %struct.timespec* %10, %struct.timespec* %11)
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 1000000
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 1000
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %56
  store i32 %59, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %48, %46, %39, %33, %15
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i32 @timespecadd(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i64 @ksem_timedwait(i32, %struct.timespec*) #1

declare dso_local i32 @fail_err(i8*) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
