; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpu.c_cpufreq_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpu.c_cpufreq_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"cpufreq\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"warning: cpufreq_unregister called with no cpufreq device active\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_unregister(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @device_get_parent(i32* %11)
  %13 = call i32 @device_get_children(i32 %12, i32*** %5, i32* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @device_get_parent(i32* %19)
  %21 = call i32* @device_find_child(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @device_printf(i32* %25, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32**, i32*** %5, align 8
  %28 = load i32, i32* @M_TEMP, align 4
  %29 = call i32 @free(i32** %27, i32 %28)
  store i32 0, i32* %2, align 4
  br label %71

30:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %56, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load i32**, i32*** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @device_is_attached(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %56

44:                                               ; preds = %35
  %45 = load i32**, i32*** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @CPUFREQ_DRV_TYPE(i32* %49, i32* %10)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %44
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @device_get_parent(i32* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @device_delete_child(i32 %64, i32* %65)
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i32**, i32*** %5, align 8
  %69 = load i32, i32* @M_TEMP, align 4
  %70 = call i32 @free(i32** %68, i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %24, %16
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @device_get_children(i32, i32***, i32*) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local i32* @device_find_child(i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @free(i32**, i32) #1

declare dso_local i32 @device_is_attached(i32*) #1

declare dso_local i64 @CPUFREQ_DRV_TYPE(i32*, i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
