; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fail.c_fail_point_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fail.c_fail_point_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fail_point = type { i32, i32, i32 (i32)*, i32, i32 (i32)* }

@hz = common dso_local global i32 0, align 4
@FAIL_POINT_USE_TIMEOUT_PATH = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"failpt\00", align 1
@FAIL_POINT_RC_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fail_point*, i32, i32*)* @fail_point_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fail_point_sleep(%struct.fail_point* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.fail_point*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.fail_point* %0, %struct.fail_point** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @hz, align 4
  %10 = mul nsw i32 %8, %9
  %11 = call i32 @howmany(i32 %10, i64 1000)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %78

14:                                               ; preds = %3
  %15 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %16 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FAIL_POINT_USE_TIMEOUT_PATH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %14
  %22 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %23 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %22, i32 0, i32 4
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = icmp ne i32 (i32)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %28 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %27, i32 0, i32 4
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %31 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %29(i32 %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %36 = call i32 @FP_SLEEP_CHANNEL(%struct.fail_point* %35)
  %37 = load i32, i32* @PWAIT, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @tsleep(i32 %36, i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %41 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %40, i32 0, i32 2
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = icmp ne i32 (i32)* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %46 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %45, i32 0, i32 2
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %49 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 %47(i32 %50)
  br label %52

52:                                               ; preds = %44, %34
  br label %77

53:                                               ; preds = %14
  %54 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %55 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %54, i32 0, i32 4
  %56 = load i32 (i32)*, i32 (i32)** %55, align 8
  %57 = icmp ne i32 (i32)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %60 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %59, i32 0, i32 4
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %63 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %61(i32 %64)
  br label %66

66:                                               ; preds = %58, %53
  %67 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %68 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %67, i32 0, i32 2
  %69 = load i32 (i32)*, i32 (i32)** %68, align 8
  %70 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %71 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @timeout(i32 (i32)* %69, i32 %72, i32 %73)
  %75 = load i32, i32* @FAIL_POINT_RC_QUEUED, align 4
  %76 = load i32*, i32** %6, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %66, %52
  br label %78

78:                                               ; preds = %77, %3
  ret void
}

declare dso_local i32 @howmany(i32, i64) #1

declare dso_local i32 @tsleep(i32, i32, i8*, i32) #1

declare dso_local i32 @FP_SLEEP_CHANNEL(%struct.fail_point*) #1

declare dso_local i32 @timeout(i32 (i32)*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
