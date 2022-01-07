; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/sys/extr_bitstring_test.c_bitstring_test_runner.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/sys/extr_bitstring_test.c_bitstring_test_runner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_BITSTR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @bitstring_test_runner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitstring_test_runner(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [9 x i32], align 16
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* @_BITSTR_BITS, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = getelementptr inbounds i32, i32* %7, i64 1
  %11 = load i32, i32* @_BITSTR_BITS, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @_BITSTR_BITS, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds i32, i32* %12, i64 1
  %16 = load i32, i32* @_BITSTR_BITS, align 4
  %17 = mul nsw i32 2, %16
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds i32, i32* %15, i64 1
  %20 = load i32, i32* @_BITSTR_BITS, align 4
  %21 = mul nsw i32 2, %20
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 1023, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 1024, i32* %23, align 4
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %40, %1
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %27 = call i64 @nitems(i32* %26)
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i32*, i32** %2, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bitstring_run_stack_test(i32* %30, i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bitstring_run_heap_test(i32* %35, i32 %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %24

43:                                               ; preds = %24
  ret void
}

declare dso_local i64 @nitems(i32*) #1

declare dso_local i32 @bitstring_run_stack_test(i32*, i32) #1

declare dso_local i32 @bitstring_run_heap_test(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
