; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @pf_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_match(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %74 [
    i32 133, label %11
    i32 128, label %22
    i32 129, label %33
    i32 136, label %44
    i32 130, label %49
    i32 131, label %54
    i32 132, label %59
    i32 134, label %64
    i32 135, label %69
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  br label %75

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ true, %22 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %75

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sle i32 %38, %39
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %75

44:                                               ; preds = %4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %75

49:                                               ; preds = %4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %50, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %75

54:                                               ; preds = %4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %75

59:                                               ; preds = %4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sle i32 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %75

64:                                               ; preds = %4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %65, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %75

69:                                               ; preds = %4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp sge i32 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %5, align 4
  br label %75

74:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %69, %64, %59, %54, %49, %44, %41, %30, %19
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
