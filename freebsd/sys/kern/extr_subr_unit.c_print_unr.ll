; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_print_unr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_print_unr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unrhdr = type { i32 }
%struct.unr = type { i32, %struct.unrhdr* }
%struct.unrb = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"  %p len = %5u \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"free\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"alloc\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"bitmap [\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unrhdr*, %struct.unr*)* @print_unr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_unr(%struct.unrhdr* %0, %struct.unr* %1) #0 {
  %3 = alloca %struct.unrhdr*, align 8
  %4 = alloca %struct.unr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.unrb*, align 8
  store %struct.unrhdr* %0, %struct.unrhdr** %3, align 8
  store %struct.unr* %1, %struct.unr** %4, align 8
  %7 = load %struct.unr*, %struct.unr** %4, align 8
  %8 = load %struct.unr*, %struct.unr** %4, align 8
  %9 = getelementptr inbounds %struct.unr, %struct.unr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.unr* %7, i32 %10)
  %12 = load %struct.unr*, %struct.unr** %4, align 8
  %13 = getelementptr inbounds %struct.unr, %struct.unr* %12, i32 0, i32 1
  %14 = load %struct.unrhdr*, %struct.unrhdr** %13, align 8
  %15 = icmp eq %struct.unrhdr* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.unr*, %struct.unr** %4, align 8
  %20 = getelementptr inbounds %struct.unr, %struct.unr* %19, i32 0, i32 1
  %21 = load %struct.unrhdr*, %struct.unrhdr** %20, align 8
  %22 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %23 = icmp eq %struct.unrhdr* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %56

26:                                               ; preds = %18
  %27 = load %struct.unr*, %struct.unr** %4, align 8
  %28 = getelementptr inbounds %struct.unr, %struct.unr* %27, i32 0, i32 1
  %29 = load %struct.unrhdr*, %struct.unrhdr** %28, align 8
  %30 = bitcast %struct.unrhdr* %29 to %struct.unrb*
  store %struct.unrb* %30, %struct.unrb** %6, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %51, %26
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.unr*, %struct.unr** %4, align 8
  %35 = getelementptr inbounds %struct.unr, %struct.unr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.unrb*, %struct.unrb** %6, align 8
  %41 = getelementptr inbounds %struct.unrb, %struct.unrb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @bit_test(i32 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %50

48:                                               ; preds = %39
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %5, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %32

54:                                               ; preds = %32
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %24
  br label %57

57:                                               ; preds = %56, %16
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @bit_test(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
