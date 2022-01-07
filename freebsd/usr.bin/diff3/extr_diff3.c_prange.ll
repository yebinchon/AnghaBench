; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_prange.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_prange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"%da\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.range*)* @prange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prange(%struct.range* %0) #0 {
  %2 = alloca %struct.range*, align 8
  store %struct.range* %0, %struct.range** %2, align 8
  %3 = load %struct.range*, %struct.range** %2, align 8
  %4 = getelementptr inbounds %struct.range, %struct.range* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.range*, %struct.range** %2, align 8
  %7 = getelementptr inbounds %struct.range, %struct.range* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp sle i64 %5, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.range*, %struct.range** %2, align 8
  %12 = getelementptr inbounds %struct.range, %struct.range* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %14)
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.range*, %struct.range** %2, align 8
  %18 = getelementptr inbounds %struct.range, %struct.range* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load %struct.range*, %struct.range** %2, align 8
  %22 = getelementptr inbounds %struct.range, %struct.range* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.range*, %struct.range** %2, align 8
  %25 = getelementptr inbounds %struct.range, %struct.range* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = icmp sgt i64 %23, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load %struct.range*, %struct.range** %2, align 8
  %31 = getelementptr inbounds %struct.range, %struct.range* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, 1
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %29, %16
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %10
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
