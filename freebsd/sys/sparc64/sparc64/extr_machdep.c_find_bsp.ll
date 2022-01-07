; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_find_bsp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_find_bsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8, i32)* @find_bsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_bsp(i64 %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store i64 %0, i64* %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  br label %11

11:                                               ; preds = %57, %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %11
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @OF_child(i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i64, i64* %9, align 8
  %21 = load i8, i8* %6, align 1
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @find_bsp(i64 %20, i8 signext %21, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %4, align 8
  br label %61

28:                                               ; preds = %19
  br label %56

29:                                               ; preds = %14
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %32 = call i64 @OF_getprop(i64 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %31, i32 4)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %57

35:                                               ; preds = %29
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %57

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @cpu_portid_prop(i32 %42)
  %44 = call i64 @OF_getprop(i64 %41, i8* %43, i8* %10, i32 1)
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %57

47:                                               ; preds = %40
  %48 = load i8, i8* %10, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* %6, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* %5, align 8
  store i64 %54, i64* %4, align 8
  br label %61

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %28
  br label %57

57:                                               ; preds = %56, %46, %39, %34
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @OF_peer(i64 %58)
  store i64 %59, i64* %5, align 8
  br label %11

60:                                               ; preds = %11
  store i64 0, i64* %4, align 8
  br label %61

61:                                               ; preds = %60, %53, %26
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i64 @OF_child(i64) #1

declare dso_local i64 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @cpu_portid_prop(i32) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
