; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rusage.c_format_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rusage.c_format_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@format_time.buffer = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"1 day \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%u days \00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%02u:%02u:%02u.%06u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.timeval*)* @format_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_time(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %8 = load %struct.timeval*, %struct.timeval** %2, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sdiv i32 %10, 60
  store i32 %11, i32* %5, align 4
  %12 = load %struct.timeval*, %struct.timeval** %2, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = srem i32 %14, 60
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sdiv i32 %16, 60
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = srem i32 %18, 60
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sdiv i32 %20, 24
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = srem i32 %22, 24
  store i32 %23, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @format_time.buffer, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %43

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @format_time.buffer, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %35, %32
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @format_time.buffer, i64 0, i64 0), i64 %45
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 32, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.timeval*, %struct.timeval** %2, align 8
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %46, i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %57)
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @format_time.buffer, i64 0, i64 0)
}

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
