; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_redzone.c_redzone_roundup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_redzone.c_redzone_roundup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDZONE_HSIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @redzone_roundup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redzone_roundup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @REDZONE_HSIZE, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @REDZONE_HSIZE, align 4
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sle i32 %10, 128
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 128, i32* %2, align 4
  br label %35

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 %14, 256
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 256, i32* %2, align 4
  br label %35

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = icmp sle i32 %18, 512
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 512, i32* %2, align 4
  br label %35

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = icmp sle i32 %22, 1024
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1024, i32* %2, align 4
  br label %35

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = icmp sle i32 %26, 2048
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 2048, i32* %2, align 4
  br label %35

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %28, %24, %20, %16, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
