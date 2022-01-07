; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_isbefore.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_isbefore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @isbefore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isbefore(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 4095, i32 16777215
  %13 = sub nsw i32 %12, 512
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = icmp slt i64 %19, 512
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %18
  store i32 1, i32* %4, align 4
  br label %41

26:                                               ; preds = %21
  br label %40

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = icmp sgt i64 %28, 512
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30, %27
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %41

39:                                               ; preds = %34, %30
  br label %40

40:                                               ; preds = %39, %26
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %38, %25
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
