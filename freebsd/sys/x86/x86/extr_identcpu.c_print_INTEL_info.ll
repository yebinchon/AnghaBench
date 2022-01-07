; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_print_INTEL_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_print_INTEL_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_high = common dso_local global i32 0, align 4
@cpu_exthigh = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"L2 cache: %u kbytes, %u-way associative, %u bytes/line\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_INTEL_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_INTEL_info() #0 {
  %1 = alloca [4 x i64], align 16
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @cpu_high, align 4
  %7 = icmp sge i32 %6, 2
  br i1 %7, label %8, label %68

8:                                                ; preds = %0
  store i64 0, i64* %2, align 8
  br label %9

9:                                                ; preds = %63, %8
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %1, i64 0, i64 0
  %11 = call i32 @do_cpuid(i32 2, i64* %10)
  %12 = load i64, i64* %2, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %1, i64 0, i64 0
  %16 = load i64, i64* %15, align 16
  %17 = and i64 %16, 255
  store i64 %17, i64* %2, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %67

20:                                               ; preds = %14, %9
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %59, %20
  %22 = load i64, i64* %3, align 8
  %23 = icmp sle i64 %22, 3
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %1, i64 0, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %27, -2147483648
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %59

31:                                               ; preds = %24
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %1, i64 0, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, 255
  %39 = call i32 @print_INTEL_TLB(i64 %38)
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %1, i64 0, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = ashr i64 %43, 8
  %45 = and i64 %44, 255
  %46 = call i32 @print_INTEL_TLB(i64 %45)
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %1, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = ashr i64 %49, 16
  %51 = and i64 %50, 255
  %52 = call i32 @print_INTEL_TLB(i64 %51)
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %1, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = ashr i64 %55, 24
  %57 = and i64 %56, 255
  %58 = call i32 @print_INTEL_TLB(i64 %57)
  br label %59

59:                                               ; preds = %40, %30
  %60 = load i64, i64* %3, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %3, align 8
  br label %21

62:                                               ; preds = %21
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %2, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %2, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %9, label %67

67:                                               ; preds = %63, %19
  br label %68

68:                                               ; preds = %67, %0
  %69 = load i32, i32* @cpu_exthigh, align 4
  %70 = icmp uge i32 %69, -2147483642
  br i1 %70, label %71, label %100

71:                                               ; preds = %68
  %72 = getelementptr inbounds [4 x i64], [4 x i64]* %1, i64 0, i64 0
  %73 = call i32 @do_cpuid(i32 -2147483642, i64* %72)
  %74 = getelementptr inbounds [4 x i64], [4 x i64]* %1, i64 0, i64 2
  %75 = load i64, i64* %74, align 16
  %76 = ashr i64 %75, 12
  %77 = and i64 %76, 15
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %4, align 8
  %79 = icmp sge i64 %78, 2
  br i1 %79, label %80, label %89

80:                                               ; preds = %71
  %81 = load i64, i64* %4, align 8
  %82 = icmp sle i64 %81, 8
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i64, i64* %4, align 8
  %85 = sdiv i64 %84, 2
  %86 = trunc i64 %85 to i32
  %87 = shl i32 1, %86
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %5, align 8
  br label %90

89:                                               ; preds = %80, %71
  store i64 0, i64* %5, align 8
  br label %90

90:                                               ; preds = %89, %83
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %1, i64 0, i64 2
  %92 = load i64, i64* %91, align 16
  %93 = ashr i64 %92, 16
  %94 = and i64 %93, 65535
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds [4 x i64], [4 x i64]* %1, i64 0, i64 2
  %97 = load i64, i64* %96, align 16
  %98 = and i64 %97, 255
  %99 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %94, i64 %95, i64 %98)
  br label %100

100:                                              ; preds = %90, %68
  ret void
}

declare dso_local i32 @do_cpuid(i32, i64*) #1

declare dso_local i32 @print_INTEL_TLB(i64) #1

declare dso_local i32 @printf(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
