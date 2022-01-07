; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rusage.c_format_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rusage.c_format_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@format_value.buffer = internal global [14 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [2 x i8] c"B\00", align 1
@HN_DECIMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%ld   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32, i32)* @format_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_value(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = mul nsw i32 %10, 10
  %12 = load i64, i64* %4, align 8
  %13 = zext i32 %11 to i64
  %14 = shl i64 %12, %13
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %9, %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @HN_DECIMAL, align 4
  %22 = call i32 @humanize_number(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @format_value.buffer, i64 0, i64 0), i32 14, i64 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %26

23:                                               ; preds = %15
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @snprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @format_value.buffer, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %23, %18
  ret i8* getelementptr inbounds ([14 x i8], [14 x i8]* @format_value.buffer, i64 0, i64 0)
}

declare dso_local i32 @humanize_number(i8*, i32, i64, i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
