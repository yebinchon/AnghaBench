; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/sortbench/extr_sort_bench.c_run_bench.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/sortbench/extr_sort_bench.c_run_bench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EX_DATAERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @run_bench to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_bench(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %36, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %35 [
    i32 130, label %16
    i32 128, label %20
    i32 131, label %24
    i32 129, label %28
    i32 132, label %32
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @rand_bench(i32 %17, i32 %18)
  br label %35

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @sort_bench(i32 %21, i32 %22)
  br label %35

24:                                               ; preds = %14
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @partial_bench(i32 %25, i32 %26)
  br label %35

28:                                               ; preds = %14
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @reverse_bench(i32 %29, i32 %30)
  br label %35

32:                                               ; preds = %14
  %33 = load i32, i32* @EX_DATAERR, align 4
  %34 = call i32 @exit(i32 %33) #3
  unreachable

35:                                               ; preds = %14, %28, %24, %20, %16
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %10

39:                                               ; preds = %10
  ret void
}

declare dso_local i32 @rand_bench(i32, i32) #1

declare dso_local i32 @sort_bench(i32, i32) #1

declare dso_local i32 @partial_bench(i32, i32) #1

declare dso_local i32 @reverse_bench(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
