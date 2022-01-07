; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_syscons_isa.c_sc_get_cons_priority.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_syscons_isa.c_sc_get_cons_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@SC_KERNEL_CONSOLE = common dso_local global i32 0, align 4
@CN_INTERNAL = common dso_local global i32 0, align 4
@CN_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sc_get_cons_priority(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %50, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %53

12:                                               ; preds = %9
  %13 = load i32, i32* @SC_DRIVER_NAME, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @resource_disabled(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %50

18:                                               ; preds = %12
  %19 = load i32, i32* @SC_DRIVER_NAME, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @resource_string_value(i32 %19, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %50

24:                                               ; preds = %18
  %25 = load i32, i32* @SC_DRIVER_NAME, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @resource_int_value(i32 %25, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SC_KERNEL_CONSOLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %3, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  br label %53

40:                                               ; preds = %30
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %3, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32*, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %40
  br label %50

50:                                               ; preds = %49, %23, %17
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %9

53:                                               ; preds = %35, %9
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32*, i32** %3, align 8
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %4, align 8
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* @CN_INTERNAL, align 4
  ret i32 %61
}

declare dso_local i64 @resource_disabled(i32, i32) #1

declare dso_local i64 @resource_string_value(i32, i32, i8*, i8**) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
