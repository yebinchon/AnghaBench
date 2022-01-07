; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_rtas_dev.c_rtas_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_rtas_dev.c_rtas_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.clocktime = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"get-time-of-day\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @rtas_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtas_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.clocktime, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %10 = call i32 @rtas_token_lookup(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  %25 = call i32 @rtas_call_method(i32 %16, i32 0, i32 8, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %3, align 4
  br label %68

30:                                               ; preds = %15
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %36 = load i32, i32* %35, align 16
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @ENXIO, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @EAGAIN, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %3, align 4
  br label %68

44:                                               ; preds = %30
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %55 = load i32, i32* %54, align 16
  %56 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 4
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 5
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 6
  store i32 %64, i32* %65, align 4
  %66 = load %struct.timespec*, %struct.timespec** %5, align 8
  %67 = call i32 @clock_ct_to_ts(%struct.clocktime* %6, %struct.timespec* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %44, %42, %28, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @rtas_token_lookup(i8*) #1

declare dso_local i32 @rtas_call_method(i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @clock_ct_to_ts(%struct.clocktime*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
