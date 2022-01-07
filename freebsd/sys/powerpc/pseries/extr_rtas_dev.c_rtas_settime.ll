; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_rtas_dev.c_rtas_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_rtas_dev.c_rtas_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.clocktime = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"set-time-of-day\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @rtas_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtas_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.clocktime, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %10 = call i32 @rtas_token_lookup(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.timespec*, %struct.timespec** %5, align 8
  %17 = call i32 @clock_ts_to_ct(%struct.timespec* %16, %struct.clocktime* %6)
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rtas_call_method(i32 %18, i32 7, i32 1, i32 %20, i32 %22, i32 %24, i32 %26, i32 %28, i32 %30, i32 %32, i32* %8)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %15
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %3, align 4
  br label %51

38:                                               ; preds = %15
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @ENXIO, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @EAGAIN, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %48, %36, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @rtas_token_lookup(i8*) #1

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

declare dso_local i32 @rtas_call_method(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
