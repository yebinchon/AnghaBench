; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_mul64_by_fraction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_mul64_by_fraction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mul64_by_fraction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mul64_by_fraction(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, undef
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %95

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %91, %18
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %22, label %94

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @flsll(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @flsll(i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp sle i32 %29, 64
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = sdiv i32 %35, %36
  %38 = add nsw i32 %32, %37
  store i32 %38, i32* %4, align 4
  br label %95

39:                                               ; preds = %22
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sdiv i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = srem i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @flsll(i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %56, %57
  %59 = icmp sle i32 %58, 64
  br i1 %59, label %60, label %68

60:                                               ; preds = %43
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = sdiv i32 %64, %65
  %67 = add nsw i32 %61, %66
  store i32 %67, i32* %4, align 4
  br label %95

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i32, i32* %13, align 4
  %71 = sub nsw i32 64, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %12, align 4
  %74 = ashr i32 %72, %73
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %12, align 4
  %78 = shl i32 %76, %77
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = sdiv i32 %82, %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %5, align 4
  %89 = shl i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %69
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %19

94:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %60, %31, %17
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @flsll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
