; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci_bus_space.c_octopci_bs_c_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci_bus_space.c_octopci_bs_c_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octopci_bs_c_1(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* %14, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %33, %24
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @rd8(i64 %30)
  %32 = call i32 @wr8(i64 %29, i32 %31)
  br label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %12, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %14, align 8
  br label %25

40:                                               ; preds = %25
  br label %66

41:                                               ; preds = %6
  %42 = load i64, i64* %12, align 8
  %43 = sub i64 %42, 1
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %12, align 8
  %47 = sub i64 %46, 1
  %48 = load i64, i64* %14, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %14, align 8
  br label %50

50:                                               ; preds = %58, %41
  %51 = load i64, i64* %12, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @rd8(i64 %55)
  %57 = call i32 @wr8(i64 %54, i32 %56)
  br label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %13, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %14, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %14, align 8
  br label %50

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %40
  ret void
}

declare dso_local i32 @wr8(i64, i32) #1

declare dso_local i32 @rd8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
